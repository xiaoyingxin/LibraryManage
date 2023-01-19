package com.xiaoxin.utils;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * 用来存放http对Cookie的一些操作
 */
public class CookieUtils {

    private static int COOKIE_AGE = 60*60*24*7;

    public static void writeCookie(String key, String value,
                                   HttpServletResponse response){
        Cookie cookie = new Cookie(key, value);
        cookie.setPath("/");
        cookie.setMaxAge(COOKIE_AGE);
        response.addCookie(cookie);
    }

    public static String getCookie(String key,HttpServletRequest request){
        Cookie[] cookies = request.getCookies();
        if (cookies != null){
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals(key)){
                    return cookie.getValue();
                }
            }
        }
        return null;
    }

    public static void removeCookie(String key,HttpServletRequest request,
                                    HttpServletResponse response){
        Cookie[] cookies = request.getCookies();
        for (int i = 0;i < (cookies == null ? 0:cookies.length);i++){
            if ((key).equalsIgnoreCase(cookies[i].getName())){
                Cookie cookie = new Cookie(key, "");
                cookie.setPath("/");
                cookie.setMaxAge(0); //设置cookie的最大时长为0 即立即失效
                response.addCookie(cookie);
            }
        }
    }
}
