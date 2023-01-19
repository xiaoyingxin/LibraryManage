package com.xiaoxin.service.impl;

import com.xiaoxin.dao.TicketDAO;
import com.xiaoxin.model.Ticket;
import com.xiaoxin.service.TicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TicketServiceImpl implements TicketService {

    @Autowired
    TicketDAO ticketDAO;

    @Override
    public void addTicket(Ticket ticket) {
        ticketDAO.addTicket(ticket);
    }

    @Override
    public Ticket getTicket(int uid) {
        return ticketDAO.selectByUserId(uid);
    }

    @Override
    public Ticket getTicket(String t) {
        return ticketDAO.selectByTicket(t);
    }

    @Override
    public void deleteTicket(int id) {
        ticketDAO.deleteTicketById(id);
    }

    @Override
    public void deleteTicket(String t) {
        ticketDAO.deleteTicket(t);
    }

}
