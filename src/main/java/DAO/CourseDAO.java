package DAO;

import beans.Course;
import jdbc.DbConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CourseDAO {
    public List<Course> list() throws SQLException {
         List<Course> courses =new ArrayList<>();
        Connection connection = DbConnection.getConnection();
        try (
                PreparedStatement statement = connection.prepareStatement("SELECT id, department, course_name FROM courses");
                ResultSet resultSet = statement.executeQuery();
        ) {
            while (resultSet.next()) {
                Course course = new Course();
                course.setId((int) resultSet.getLong("id"));
                course.setDepartment(resultSet.getString("department"));
                course.setCourseName(resultSet.getString("course_name"));
                courses.add(course);
            }
        }

        return courses;
    }
}
