package com.postech.gatewaypostech.infra.security.filter;

import org.springframework.cloud.gateway.server.mvc.common.Shortcut;
import org.springframework.web.servlet.function.HandlerFilterFunction;
import org.springframework.web.servlet.function.ServerRequest;
import org.springframework.web.servlet.function.ServerResponse;

import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Collection;
import java.util.function.Function;

import static com.postech.gatewaypostech.infra.security.util.TokenValidator.validateTokenReturningUserId;


public final class InsertUserIdHeaderBeforeRedirecting {

  @Shortcut
  public static HandlerFilterFunction<ServerResponse, ServerResponse> addDynamicRequestHeaderFuncTeste(String headerName) {
    return HandlerFilterFunction.ofRequestProcessor(addDynamicRequestHeaderFunc());
  }

  public static Function<ServerRequest, ServerRequest> addDynamicRequestHeaderFunc() {

    return request -> {
      String authorizationHeader = request.headers().firstHeader("Authorization");

      if (authorizationHeader == null) {
        return request;
      }

      String userId = validateTokenReturningUserId(authorizationHeader);
      return ServerRequest.from(request).header("X-ID-USER", userId).build();
    };
  }

  //Define in spring.factories file
  static class FilterSupplier implements org.springframework.cloud.gateway.server.mvc.filter.FilterSupplier {
    FilterSupplier() {}

    @Override
    public Collection<Method> get() {
      return Arrays.asList(InsertUserIdHeaderBeforeRedirecting.class.getMethods());
    }
  }
}
