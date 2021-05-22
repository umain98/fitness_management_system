/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fms.servlet;

import com.fms.controller.UserController;
import com.fms.core.Validations;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author USER
 */
@WebServlet(name = "addUserServelet", urlPatterns = {"/addUserServelet"})
public class addUserServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String fName = request.getParameter("txtFirstName");
        String lName = request.getParameter("txtLastName");
        String contact = request.getParameter("txtContact");
        String email = request.getParameter("txtEmail");
        String address = request.getParameter("txtAddress");
        String regDate = request.getParameter("txtRegDate");
        String dob = request.getParameter("txtDob");
        String heightCm = request.getParameter("txtHeightCm");
        String weightKg = request.getParameter("txtWeightKg");
        String detail = request.getParameter("txtDetail");
        String password = request.getParameter("txtPassword");

        try {
            UserController.addUser(fName, lName, contact, email,
                    address, regDate, dob, Validations.getBigDecimalOrZeroFromString(heightCm),
                    Validations.getBigDecimalOrZeroFromString(weightKg), "A", detail, password);
        } catch (SQLException ex) {
            Logger.getLogger(addUserServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        response.sendRedirect("user_registration.jsp");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
