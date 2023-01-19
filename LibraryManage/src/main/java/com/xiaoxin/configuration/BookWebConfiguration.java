package com.xiaoxin.configuration;

import com.xiaoxin.interceptor.HostInfoInterceptor;
import com.xiaoxin.interceptor.LoginInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class BookWebConfiguration implements WebMvcConfigurer {

    @Autowired
    private LoginInterceptor loginInterceptor;
    @Autowired
    private HostInfoInterceptor hostInfoInterceptor;
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(hostInfoInterceptor).addPathPatterns("/**");//所有请求都被拦截包括静态资源
        registry.addInterceptor(loginInterceptor).addPathPatterns("/books/**");
    }
}
