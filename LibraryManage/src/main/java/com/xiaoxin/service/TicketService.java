package com.xiaoxin.service;

import com.xiaoxin.dao.TicketDAO;
import com.xiaoxin.model.Ticket;
import org.springframework.beans.factory.annotation.Autowired;

public interface TicketService {

    void addTicket(Ticket ticket);

    Ticket getTicket(int uid);

    Ticket getTicket(String t);

    void deleteTicket(int id);

    void deleteTicket(String t);
}
