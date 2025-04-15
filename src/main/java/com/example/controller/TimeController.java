package com.example.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/api")
public class TimeController {

    private static final Logger logger = LoggerFactory.getLogger(TimeController.class);

    @GetMapping("/time")
    public Map<String, String> getCurrentTime() {
        Map<String, String> response = new HashMap<>();
        response.put("currentTime", LocalDateTime.now().toString());
        logger.info("Current time requested: {}", response.get("currentTime"));
        return response;
    }
}