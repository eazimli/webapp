package controller;

import jdbc.DbConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet(name = "PersonalCabinet", urlPatterns = {"/PersonalCabinet"})

public class PersonalCabinet  extends HttpServlet {
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
            HttpSession httpSession =request.getSession();
            //String name = request.getParameter("uname");
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            int age = Integer.parseInt(request.getParameter("age"));
            String city = request.getParameter("city");
            String country = request.getParameter("country");
            String gender = request.getParameter("gender");
            String email = (String) httpSession.getAttribute("email");
            System.out.println(firstName+" "+lastName+" "+age+" "+city+" "+country+" "+gender+" "+email);
            String sql = "update  users set first_name=?, last_name=?,age=?,city=?,country=?,gender=? where email=? ";
            PreparedStatement ps = connection.prepareStatement(sql);
            //ps.setString(1, name);
            ps.setString(1, firstName);
            ps.setString(2, lastName);
            ps.setInt(3, age);
            ps.setString(4, city);
            ps.setString(5, country);
            ps.setString(6, gender);
            ps.setString(7, email);
            ps.executeUpdate();
            PrintWriter out = response.getWriter();
            response.sendRedirect("courses");
            out.println("Registration Succesfull...");
        } catch (Exception e) {
            System.out.println(e.toString());
        }
    }


}
