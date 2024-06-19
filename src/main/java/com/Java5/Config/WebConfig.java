package com.Java5.Config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.Java5.Interceptor.LogoutInterceptor;

@Configuration
public class WebConfig implements WebMvcConfigurer {

    @Autowired
    private LogoutInterceptor logoutInterceptor;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(logoutInterceptor).addPathPatterns("/logout"); // Chỉ định đường dẫn cho interceptor
    }
}
