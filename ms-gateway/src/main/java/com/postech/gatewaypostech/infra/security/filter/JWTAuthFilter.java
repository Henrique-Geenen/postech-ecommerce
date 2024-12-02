package com.postech.gatewaypostech.infra.security.filter;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;

import static com.postech.gatewaypostech.infra.security.util.HeaderValidator.validateAndAuthenticateToken;

@Component
public class JWTAuthFilter extends OncePerRequestFilter {

  @Override
  protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
    validateAndAuthenticateToken(request);
    filterChain.doFilter(request, response);
  }
}
