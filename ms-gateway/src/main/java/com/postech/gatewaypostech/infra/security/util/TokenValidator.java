package com.postech.gatewaypostech.infra.security.util;

import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatusCode;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestClient;

@Component
public class TokenValidator {

  public static String AUTHENTICATION_URL;

  @Value("${app.login.url}")
  private String authenticationUrl;

  @PostConstruct
  public void init() {
    AUTHENTICATION_URL = this.authenticationUrl;
  }

  public static String validateTokenReturningUserId(String authHeader) throws RuntimeException{
    RestClient restClient = RestClient.create();
    String returned = restClient.get().uri(AUTHENTICATION_URL + "/login").header("Authorization", authHeader).retrieve().onStatus( HttpStatusCode::is4xxClientError,(request, response) -> {
      throw new RuntimeException("Invalid Token");
    }).body(String.class);
    return returned;
  }
}
