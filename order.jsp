<%@ page import='java.sql.*' %>

<%
    String name = request.getParameter("uname");
    String email = request.getParameter("email");
    String mobile = request.getParameter("phno");

    String dno = request.getParameter("dno");
    String street = request.getParameter("street"); // Corrected typo here
    String city = request.getParameter("city");
    String state = request.getParameter("state"); // Corrected typo here
    String zip = request.getParameter("zip");

    String item = request.getParameter("order_h1"); // Corrected typo here
    String rate = request.getParameter("rate");
    String drink = request.getParameter("drink");

    if (drink == null || drink.equals("Select a Drink")) {
        drink = "no";
    }
    

    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");

        String sql = "INSERT INTO orderdetails VALUES (?, ?, ?, ?, ?, ?,?)";

        String addr = String.valueOf(dno) + ", " + street + ", " + city + ", " + state + ", " + zip;

        PreparedStatement pst = con.prepareStatement(sql);
        pst.setString(1, name);
        pst.setString(2, email);
        pst.setString(3, mobile);
        pst.setString(4, addr);
        pst.setString(5, item);
        pst.setString(6, rate);
        pst.setString(7, drink);

        pst.executeUpdate();
        %>
        <script>alert('Order placed successfully');</script>
        <%
        con.commit();
        con.close();
        RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
        rd.forward(request, response);
        
    } catch(Exception e) {
        out.print(e);
    }
%>
