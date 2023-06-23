package it.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import javax.swing.PopupFactory;

import com.sun.xml.bind.v2.model.core.ID;

import javax.swing.*;


@WebServlet("/servletMosi")
public class servletMosi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public servletMosi() {
   }

    
    @Override
   	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	 String user = request.getParameter("user");
         String password = request.getParameter("password");

         ConnessioneHB c = new ConnessioneHB();
         boolean accessoConsentito = c.verificaCredenziali(user, password);
         c.close();

         if (accessoConsentito) {
             String nextPage = "home.jsp";
             response.sendRedirect(nextPage);
             System.out.println("Accesso consentito!");
         } else {
        
        	 String next2 = "Accesso.jsp";
             response.sendRedirect(next2);
                        
             System.out.println("Accesso errato!");
        	
         }
     }
 
		
						
		
	}



