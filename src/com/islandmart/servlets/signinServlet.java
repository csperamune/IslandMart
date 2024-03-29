package com.islandmart.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.islandmart.dao.signinDao;
import com.islandmart.signin.signin;

@WebServlet("/register")
public class signinServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private signinDao signinDao;

    public void init() {
    	signinDao = new signinDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	
    	response.setContentType("text/html");
    	
    	String userName = request.getParameter("userName");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("pass");

        signin signin = new signin();
        signin.setUserName(userName);
        signin.setFirstName(firstName);
        signin.setLastName(lastName);
        signin.setEmail(email);
        signin.setPassword(password);

        try {
        	signinDao.registerSignin(signin);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        response.sendRedirect("login.jsp");
    }
}
