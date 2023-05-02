package com.xiaoxin.biz;

import com.xiaoxin.model.Ticket;
import com.xiaoxin.model.User;
import com.xiaoxin.model.exceptions.LoginRegisterException;
import com.xiaoxin.service.HostHolder;
import com.xiaoxin.service.TicketService;
import com.xiaoxin.service.UserService;
import com.xiaoxin.utils.ConcurrentUtils;
import com.xiaoxin.utils.MD5;
import com.xiaoxin.utils.TicketUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * 先检查邮箱密码，然后更新t票
 * @return 返回最新t票
 * @thows Exception 账号密码错误
 *
 */
@Service
public class LoginBiz {

    @Autowired
    private UserService userService;
    @Autowired
    private TicketService ticketService;
    @Autowired
    HostHolder hostHolder;

    /**
     * 登录逻辑： 先检查邮箱密码 再更新t票
     * @param email
     * @param password
     * @return 返回最新t票
     */
    public String login(String email,String password){
        User user = userService.getUser(email);
        if (user == null) throw new LoginRegisterException("邮箱不存在");
        if (!StringUtils.equals(MD5.next(password),user.getPassword())){
            throw new LoginRegisterException("密码不正确");
        }

        //检查t票
        Ticket t = ticketService.getTicket(user.getId());
        //如果没有t票。生成一个
        if (t == null) {
            t = TicketUtils.next(user.getId());
            ticketService.addTicket(t);
            return t.getTicket();
        }
        //是否过期
        if(t.getExpiredAt().before(new Date())){
            //删除
            ticketService.deleteTicket(t.getId());
            //过期重新设置t
            t = TicketUtils.next(user.getId());
            ticketService.addTicket(t);
        }
        ConcurrentUtils.setHost(user);
        return t.getTicket();
    }

    /**
     * 登出只需删除数据库t票
     * @param t
     */
    public void logout(String t){
        ticketService.deleteTicket(t);
    }

    /**
     * 注册，返回用户t票
     * @param user
     * @return 当前用户t票
     */
    public String register(User user){
        //通过邮箱能不能查到用户能说明数据库邮箱注册已经存在
        if (userService.getUser(user.getEmail()) != null)
            throw new LoginRegisterException("用户邮箱已存在");
        //密码加密
        String password = user.getPassword();
        user.setPassword(MD5.next(password));
        //密码加密之后存放在数据库中
        userService.addUser(user);

        //生成t票
        Ticket t = TicketUtils.next(user.getId());

        //用户存放线程池map
        ConcurrentUtils.setHost(user);
        return t.getTicket();
    }
}
