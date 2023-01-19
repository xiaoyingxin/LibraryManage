package com.xiaoxin.librarymanage;

import com.xiaoxin.dao.BookDAO;
import com.xiaoxin.dao.TicketDAO;
import com.xiaoxin.dao.UserDAO;
import com.xiaoxin.model.Book;
import com.xiaoxin.model.Ticket;
import com.xiaoxin.model.User;
import com.xiaoxin.service.BookService;
import com.xiaoxin.service.TicketService;
import com.xiaoxin.service.UserService;
import com.xiaoxin.utils.ConcurrentUtils;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class LibraryManageApplicationTests {

    @Autowired
    BookService bookService;
    @Autowired
    UserService userviceService;
    @Autowired
    TicketService ticketService;
    @Test
    void contextLoads() {
    //    //查询 论一个演员的自我修养 的图书的相关信息
    //    Book book = bookDAO.selectBookByName("论一个演员的自我修养");
    //    System.out.println("bookId: " + book.getId() + " bookName: " + book.getName()
    //     + " bookAuthor: " + book.getAuthor() + " bookPrice: " + book.getPrice() +" status: " + book.getStatus()
    //    );
    ////    查询所有书籍的信息
    //    System.out.println(bookDAO.selectAll());
    //    //增加图书
    //    bookDAO.addBook(new Book(null,"小王子","圣...","20￥",0));

        //更新图书
        //bookDAO.updateBookStatus(3,1);
        //User user = userviceService.getUser("abc123@qq.com");
        ////System.out.println(ticketService.getTicket(user.getId()));
        //ConcurrentUtils.setHost(user);
        //System.out.println(ConcurrentUtils.getHost());

    }


}
