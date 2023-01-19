package com.xiaoxin.interceptor;

import com.xiaoxin.model.Ticket;
import com.xiaoxin.model.User;
import com.xiaoxin.service.TicketService;
import com.xiaoxin.service.UserService;
import com.xiaoxin.utils.ConcurrentUtils;
import com.xiaoxin.utils.CookieUtils;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import java.util.Date;

@Component
@Slf4j
public class HostInfoInterceptor implements HandlerInterceptor {

    @Autowired
    private TicketService ticketService;
    @Autowired
    private UserService userService;

    /**
     * 为host添加信息
     * 这个拦截器总是返回TRUE 无论什么都能通过这个拦截器 通过ticket获取Usr然后添加到host
     * 这要登录一次后服务器就能识别用户，甚至关闭浏览器都不用重新登录 服务器向浏览器发送的请求中附带cookie对身份进行自
     * 动认证
     * @param request
     * @param response
     * @param handler
     * @return
     * @throws Exception
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //先获取t，t不空且不过期再添加host中
        String t = CookieUtils.getCookie("k", request);
        if (!StringUtils.isEmpty(t)){
            Ticket ticket = ticketService.getTicket(t);
            if (ticket.getExpiredAt().after(new Date())){
                User user = userService.getUser(ticket.getUserId());
                ConcurrentUtils.setHost(user);
                log.info(ConcurrentUtils.getHost().toString());

            }
        }
        return true;
    }
}
