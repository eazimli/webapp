package controller;

import DAO.CourseDAO;
import jdbc.DbConnection;

import javax.servlet.RequestDispatcher;
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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "/courses",urlPatterns = {"/courses"})
public class CourseController extends HttpServlet {
    private final Connection connection = DbConnection.getConnection();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession httpSession =request.getSession();
        PrintWriter out = resp.getWriter();
        int id = Integer.parseInt(request.getParameter("courseId"));
        String email = (String) httpSession.getAttribute("email");
        String sql = "insert into enrolment ( email, course_id) values( ?, ?)";
        PreparedStatement ps = null;
        try {

            ps = connection.prepareStatement(sql);
            ps.setString(1, email);
        ps.setInt(2, id);
        ps.executeUpdate();
        out.println("user email "+ email+" courseId "+id+" Added");

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    private CourseDAO courseDAO;

    @Override
    public void init() throws ServletException {
        courseDAO=new CourseDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<beans.Course> courses = courseDAO.list();
            request.setAttribute("courses", courses); // Will be available as ${courses} in JSP
             courses.forEach(course ->
                     System.out.println(course.getCourseName()));
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/course.jsp");
            rd.forward(request, response);
        } catch (SQLException e) {
            throw new ServletException("Cannot obtain products from DB", e);
        }
    }
}