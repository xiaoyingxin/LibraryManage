package com.xiaoxin.controller;

import com.xiaoxin.model.Book;
import com.xiaoxin.model.Ticket;
import com.xiaoxin.model.User;
import com.xiaoxin.service.BookService;
import com.xiaoxin.service.HostHolder;
import com.xiaoxin.service.TicketService;
import com.xiaoxin.service.UserService;
import com.xiaoxin.utils.ConcurrentUtils;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@Slf4j
public class BookController {

    @Autowired
    BookService bookService;
    @Autowired
    HostHolder hostHolder;
    @Autowired
    UserService userService;
    @Autowired
    TicketService ticketService;

    //跳转到主页
    @GetMapping("/index")
    public String bookList(Model model, HttpServletRequest request,HttpServletResponse response){
        Cookie[] cookies = request.getCookies();
        if (cookies!=null) {
            for (Cookie cookie : cookies) {
                System.out.println(cookie);
                Ticket ticket = ticketService.getTicket(cookie.getValue());
                if (ticket != null){
                    User user = userService.getUser(ticket.getUserId());
                   ConcurrentUtils.setHost(user);
                }
            }
        }
        User host = ConcurrentUtils.getHost();
        if (host != null) {
            model.addAttribute("host",host);
        }
        loadAllBookView(model);
        return "book/books";
    }

    //调到添加书页面表格填写
    @GetMapping("/books")
    public String addBook(){
        return "book/addBook";
    }
    //执行添加图书，再重定向到主页
    @PostMapping("/books")
    public String doAddBook(@RequestParam("name") String name,
                            @RequestParam("author") String author,
                            @RequestParam("price") String price){
        Book book = new Book();
        book.setName(name);
        book.setAuthor(author);
        book.setPrice(price);
        bookService.addBooks(book);
        return "redirect:/index";
    }

    //借书
    @GetMapping ("/books/delete/{id}")
    public String delBook(@PathVariable("id") Integer id){
        bookService.deleteBooks(id);
        return "redirect:/index";
    }

    //还书
    @GetMapping("/books/recover/{id}")
    public String recoverBook(@PathVariable("id") Integer id){
        bookService.recoverBooks(id);
        return "redirect:/index";
    }

    //为model添加book数据
    private void loadAllBookView(Model model){
        model.addAttribute("books",bookService.getAllBooks());
    }
}
