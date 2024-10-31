package com.postGre.bsHive.Acontroller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

@RestController
public class SeVideoController {

    @Value("${youtube.api.key}")
    private String youtubeApiKey;
    
    // @Autowired
    // private SeVideoService sevideoService;
    
    @GetMapping("/api/video-id")
    public ResponseEntity<Map<String, String>> getVideoId() {
        String videoId = "MtiHSv1iwXs"; // 비디오 ID
        Map<String, String> response = new HashMap<>();
        response.put("videoId", videoId);
        return ResponseEntity.ok(response);
    }

    @GetMapping("/api/video-data")
    public ResponseEntity<Map<String, Object>> getVideoData() {
        try {
            String videoId = "MtiHSv1iwXs"; // 실제 서비스에서 가져오기
            int lastDtl = 0; // 기본값 또는 서비스에서 가져오기
            int maxDtl = 300; // 기본값 또는 서비스에서 가져오기

            Map<String, Object> response = new HashMap<>();
            response.put("videoId", videoId);
            response.put("lastDtl", lastDtl);
            response.put("maxDtl", maxDtl);
            
            return ResponseEntity.ok(response);
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                                 .body(Collections.singletonMap("error", "비디오 데이터 가져오기 실패"));
        }
    }

    @PostMapping("/api/update-max-dtl")
    public ResponseEntity<Void> updateMaxDtl(@RequestBody Map<String, Integer> payload) {
        int maxDtl = payload.get("maxDtl");
        // MAX_DTL을 데이터베이스나 다른 저장소에 업데이트하는 로직 추가
        // 예: sevideoService.updateMaxDtl(maxDtl);

        return ResponseEntity.ok().build();
    }
}
