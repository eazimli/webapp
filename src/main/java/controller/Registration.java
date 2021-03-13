package controller;

import jdbc.DbConnection;
import security.EncryptionAndDecryption;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet(name = "Registration", urlPatterns = {"/Registration"})
public class Registration extends HttpServlet {
private final Connection connection = DbConnection.getConnection();



    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Registration</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Registration at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        try {
            String password = request.getParameter("password");
            String encrypPassword =EncryptionAndDecryption.encrypt(password,"key");
            String email = request.getParameter("email");
            String sql = "insert into users ( password, email) values( ?, ?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            //ps.setString(1, name);
            ps.setString(1, encrypPassword);
            ps.setString(2, email);
            ps.executeUpdate();
            PrintWriter out = response.getWriter();
            response.sendRedirect("login.jsp");
            out.println("Registration Succesfull...");
        } catch (Exception e) {
            System.out.println(e.toString());
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}