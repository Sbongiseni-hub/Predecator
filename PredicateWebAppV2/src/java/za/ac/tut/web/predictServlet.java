/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
public class predictServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Integer stuNo = Integer.parseInt(request.getParameter("studentId"));
        String name = request.getParameter("name");
        Integer mark = Integer.parseInt(request.getParameter("mark"));
        
        request.setAttribute("stuNo", stuNo);
        request.setAttribute("name", name);
        request.setAttribute("mark", mark);
        
        RequestDispatcher disp =request.getRequestDispatcher("results.jsp");
        disp.forward(request, response);
        
    }
}
