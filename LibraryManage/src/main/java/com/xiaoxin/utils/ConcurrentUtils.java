package com.xiaoxin.utils;

import com.xiaoxin.model.User;

/**
 * ThreadLocal提供了一种线程id到泛型的绑定，可认为它是Map线程id为key存放一些东西
 */
public class ConcurrentUtils {

    private static ThreadLocal<User> host = new ThreadLocal<>();

    public static User getHost(){
        return host.get();
    }

    public static void setHost(User user){
        host.set(user);
    }
}
