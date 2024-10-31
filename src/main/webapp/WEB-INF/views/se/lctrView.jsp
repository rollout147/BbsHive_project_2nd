<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>영상 시청</title>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
    <h1>영상 시청</h1>
    <div id="ytplayer"></div>

    <script>
        var tag = document.createElement('script');
        tag.src = "https://www.youtube.com/player_api";
        var firstScriptTag = document.getElementsByTagName('script')[0];
        firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
    
        var player;
        var intervalId;
        var maxDtl = 0; // MAX_DTL 값을 저장할 변수

        function fetchVideoData() {
            return fetch('/api/video-data')
                .then(response => response.json())
                .then(data => {
                    const lastDtl = data.lastDtl || 0;
                    maxDtl = data.maxDtl || 0; // MAX_DTL 가져오기
                    return {
                        videoId: data.videoId,
                        lastDtl: lastDtl
                    };
                })
                .catch(error => {
                    console.error('비디오 데이터 가져오기 오류:', error);
                    return { videoId: '', lastDtl: 0 }; // 기본값 반환
                });
        }
    
        function onYouTubePlayerAPIReady() {
            fetchVideoData().then(data => {
                player = new YT.Player('ytplayer', {
                    height: '360',
                    width: '640',
                    videoId: data.videoId,
                    playerVars: {
                        'controls': 1,
                        'showinfo': 0,
                        'modestbranding': 1,
                        'rel': 0,
                        'start': data.lastDtl // LAST_DTL에서 시작
                    },
                    events: {
                        'onReady': onPlayerReady
                    }
                });

                // 3초마다 MAX_DTL 업데이트
                intervalId = setInterval(updateMaxDtl, 3000);
            });
        }

        function updateMaxDtl() {
            const currentTime = player.getCurrentTime();
            maxDtl = Math.max(maxDtl, currentTime); // 현재 시간과 MAX_DTL 비교
            console.log('Current MAX_DTL:', maxDtl); // 콘솔에 MAX_DTL 출력
        }

        function onPlayerReady(event) {
            event.target.playVideo();
        }

        // 페이지가 닫힐 때 MAX_DTL을 서버에 전송
        window.addEventListener('beforeunload', function() {
            clearInterval(intervalId); // 인터벌 정리
            fetch('/api/update-max-dtl', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ maxDtl: maxDtl }) // MAX_DTL 값 전송
            }).catch(error => console.error('MAX_DTL 업데이트 오류:', error));
        });
    </script>
</body>
</html>
