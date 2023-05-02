package com.xiaoxin.interceptor;

import com.xiaoxin.model.Ticket;
import com.xiaoxin.service.TicketService;
import com.xiaoxin.utils.CookieUtils;
import jakarta.annotation.Resource;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import java.util.Date;

@Component
/**
 *进行权限认证              否
 * 判断是否有t票           去登录
 * 判断ticket 是否为空     去登录
 * 判断ticket 是否过期     去登录
 */
public class LoginInterceptor implements HandlerInterceptor {

    @Resource
    TicketService ticketService;
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        String t = CookieUtils.getCookie("t", request);
        if(StringUtils.isEmpty(t)){
            //没有t票
            response.sendRedirect("/users/login");
            return false;
        }
        Ticket ticket = ticketService.getTicket(t);
        if(ticket == null){
            //ticket为空
            response.sendRedirect("/users/login");
            return false;
        }
        if(ticket.getExpiredAt().before(new Date())){
            //过期t票
            response.sendRedirect("/users/login");
            return false;
        }

        return true;
    }
}
