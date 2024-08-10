<%@ page import="java.sql.*" %>
<%
    String mail = (String)session.getAttribute("mail");
    if (mail == null) {
        response.sendRedirect("login.html");  
        return; 
    }
	String un = request.getParameter("name");
    String mobile = request.getParameter("mobile");
    String dob = request.getParameter("dob");
    String gender = request.getParameter("gender");
    String dno = request.getParameter("dno");
    String street = request.getParameter("street");
    String pin = request.getParameter("pincode");
    String city = request.getParameter("city");
    String state = request.getParameter("state");
    // Extract other fields similarly

            // Perform database update operation
    try {
        Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
        String qry = "UPDATE Users SET name=?,mobile=?, dob=?, gender=?,Dno=?,street=?,pincode=?,city=?,state=? WHERE email=?";
        PreparedStatement pstmt = con.prepareStatement(qry);
        pstmt.setString(1, un);
        pstmt.setString(2, mobile);
        
        pstmt.setString(3, dob);
        pstmt.setString(4, gender);
        pstmt.setString(5, dno);
        pstmt.setString(6, street);
        pstmt.setString(7, pin);
        pstmt.setString(8, city);
        pstmt.setString(9, state);
        pstmt.setString(10, mail);
        // Set other parameters similarly
        int rowsAffected = pstmt.executeUpdate();
        if (rowsAffected > 0) {
            %>
            <script>
                alert('update successful');
            </script>
            <%
            response.sendRedirect("profile.jsp");
        } else {
            out.println("<script>alert('Failed to update profile. Please try again later.');</script>");
            RequestDispatcher rd = request.getRequestDispatcher("profile.jsp");
            rd.forward(request,response);
        }
        %>
        <script>
            var elements = document.getElementsByClassName('id');
        
            // Loop through the collection of elements
            for (var i = 0; i < elements.length; i++) {
                var element = elements[i];
                element.disabled = true;
        
            }
        </script>
        <%
    } 
    catch (SQLException e) {
        out.print(e);
        response.getWriter().write("An error occurred while updating profile. Please try again later.");
    }
%>