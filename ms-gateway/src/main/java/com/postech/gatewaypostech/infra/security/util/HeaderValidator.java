package com.postech.gatewaypostech.infra.security.util;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.http.HttpHeaders;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import static com.postech.gatewaypostech.infra.security.util.TokenValidator.validateTokenReturningUserId;

public class HeaderValidator {

  public static String validateAndAuthenticateToken(HttpServletRequest request){
    String authHeader = request.getHeader(HttpHeaders.AUTHORIZATION);
    if (authHeader == null){
      return null;
    }

    String userId = validateTokenReturningUserId(authHeader);
    auhtenticateUserInSecurityContext(userId);

    return userId;
  }

  private static void auhtenticateUserInSecurityContext(String username) {
    if(username == null){
      throw new UsernameNotFoundException("User not found");
    }
    UserDetails userDetails = User.withUsername(username).password("").authorities("ROLE_USER").build();
    UsernamePasswordAuthenticationToken authentication = new UsernamePasswordAuthenticationToken(userDetails, null, userDetails.getAuthorities());
    SecurityContextHolder.getContext().setAuthentication(authentication);
  }

}
