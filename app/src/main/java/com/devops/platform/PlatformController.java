package com.devops.platform;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
public class PlatformController {

    @GetMapping("/")
    public Map<String, String> home() {
        return Map.of(
                "application", "AWS DevOps Platform",
                "status", "running",
                "version", "1.0.0"
        );
    }

    @GetMapping("/api/health")
    public Map<String, String> health() {
        return Map.of(
                "status", "UP",
                "service", "devops-platform"
        );
    }
}

