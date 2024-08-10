<%@ page import='java.sql.*' %>

<%
    String name = request.getParameter("uname");
    String email = request.getParameter("mail");
    String mobile = request.getParameter("phno");
    String dob = request.getParameter("date");
    String gender = request.getParameter("gender");
    String pwd = request.getParameter("password");

    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");

        String sql = "INSERT INTO signup VALUES (?, ?, ?, ?, ?, ?)";

        PreparedStatement pst = con.prepareStatement(sql);
        pst.setString(1, name);
        pst.setString(2, email);
        pst.setString(3, mobile);
        pst.setString(4, dob);
        pst.setString(5, gender);
        pst.setString(6, pwd);

        pst.executeUpdate();

        String sql1 = "INSERT INTO users VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        PreparedStatement pst1 = con.prepareStatement(sql1);
        pst1.setString(1, name);
        pst1.setString(2, email);
        pst1.setString(3, mobile);
        pst1.setString(4, dob);
        pst1.setString(5, gender);
        pst1.setString(6, "required");
        pst1.setString(7, "required");
        pst1.setString(8,"required");
        pst1.setString(9, "required");
        pst1.setString(10,"required");

        pst1.executeUpdate();
        
        out.print("<script>alert('Sign up successful!');</script>");

        con.commit();
        con.close();
        RequestDispatcher rd = request.getRequestDispatcher("login.html");
        rd.forward(request, response);
    } catch(Exception e) {
        out.print(e);
    }
%>
