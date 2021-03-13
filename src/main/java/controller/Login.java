package controller;

import jdbc.DbConnection;
import security.EncryptionAndDecryption;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet(name = "log", urlPatterns = {"/log"})
public class Login extends HttpServlet {
    private final Connection connection = DbConnection.getConnection();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        try {
            String encrypPassword = EncryptionAndDecryption.encrypt(password, "key");

            System.out.println(email + " " + password);
            String dbEmail = null;
            String dbpassword = null;
            try {

                String sql = "select * from users where email=? and password=?";
                PreparedStatement ps = connection.prepareStatement(sql);
                ps.setString(1, email);
                ps.setString(2, encrypPassword);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    dbEmail = rs.getString("email");
                    dbpassword = rs.getString("password");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            System.out.println(!(dbEmail == null) + " " + !(dbpassword == null));
            if (!(dbEmail == null) && !(dbpassword == null)) {
                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("email", dbEmail);
                request.getRequestDispatcher("home.jsp").forward(request, response);
            } else {
                request.setAttribute("errorMessage", "Invalid username or password");
                request.getRequestDispatcher("courses").forward(request, response);

            }

        } catch (Exception e) {
            System.out.println(e.toString());
        }
    }

}