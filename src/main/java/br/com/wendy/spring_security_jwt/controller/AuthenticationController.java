package br.com.wendy.spring_security_jwt.controller;

import br.com.wendy.spring_security_jwt.service.AuthenticationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AuthenticationController {
    @Autowired
    private AuthenticationService authenticationService;

    @PostMapping("authenticate")
    public String authenticate(
            Authentication authentication) {
        return authenticationService.authenticate(authentication);
    }
}