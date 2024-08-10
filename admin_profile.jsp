<%@ page import='java.sql.*' %>

<%
    String mail = (String)session.getAttribute("mail");
    if (mail == null) {
        %>
        <script>
            alert('Login first');
            window.location.href = 'login.html';
        </script>
        <%
        
    }
    String un = "";
    String mobile = "";
    String dob = "";
    String gender = "";
    String dno = "";
    String street = "";
    String pin = "";
    String city = "";
    String state = "";

    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
        String qry = "select * from users where email=?";
        PreparedStatement pstmt = con.prepareStatement(qry);

        pstmt.setString(1,mail);
        ResultSet rs = pstmt.executeQuery();
        if(rs.next())
        {
            un = rs.getString(1);
            mobile = rs.getString(3);
            dob = rs.getString(4);
            gender = rs.getString(5);
            dno = rs.getString(6);
            street = rs.getString(7);
            pin = rs.getString(8);
            city = rs.getString(9);
            state = rs.getString(10);
        }
    }
    catch(Exception e){
        out.print(e);
    }

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <link rel="stylesheet" href="css/profile-styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <script src="js/admin-profilejs.js"></script>

</head>
<body>
    <div class="logo-background">
        <img src="images/logo2.png" class="logo">
            <div class="links">
                <table>
                    <tr>
                        <td><a href="home.jsp">home</a></td>
                        <td><a href="home.jsp#about us">about us</a></td>
                        <td><a href="explore.html">explore</a></td>
                        <td><a href="logout.jsp">Logout</a></td>
                        <td><a href="pro.jsp">profile</a></td>
                    </tr>
                </table>
            </div>
    </div>
    <div class="container">
        <div class="profile">
            <div class="profile-info">
                <h2>User Information</h2>
                <div class="input-group">
                    Name:
                        <input class="id" type="text" name="name" value="<%=un %>" id="name" disabled>
                </div>
                <div class="input-group">
                    Date of Birth:
                        <input class="id" type="text" name="dob" value="<%=dob %>" id="dob" disabled>
                </div>
                <div class="input-group">
                    <div class="input-group">
                        Gender:
                            <select class="id" name="gender" disabled>
                                <option value="<%=gender %>"><%=gender %></option>
                                <option value="male">male</option>
                                <option value="female">female</option>
                            </select>
                    </div>
                </div>
                <div class="input-group">
                    Email:
                        <input type="email" value="<%=mail %>" id="email" disabled>
                </div>
                <div class="input-group">
                    Mobile No:
                        <input class="id" type="text" name="mobile" value="<%=mobile %>" id="phno" disabled>
                </div>
                <div class="input-group">
                    Door no:
                        <input class="id" type="text" name="dno" value="<%=dno %>" id="dno" disabled>
                </div>
                <div class="input-group">
                    Street:
                        <input class="id" type="text" name="street" value="<%=street %>" id="street" disabled>
                </div>
                <div class="input-group">
                    Pin code:
                        <input class="id" type="text" name="pincode" value="<%=pin %>" id="pcode" disabled>
                </div>
                <div class="input-group">
                    City:<br>
                        <input class="id" type="text" name="city" value="<%=city %>" id="city" disabled>
                </div>
                <div class="input-group">
                    State:
                        <select class="id" name="state" disabled>
                            <option value="<%=state %>">"<%=state %>"</option>
                            <option value="Andhra pradesh">Andhra pradesh</option>
                            <option value="Telangana">Telangana</option>
                            <option value="Kerala">Kerala</option>
                            <option value="Tamil Nadu">Tamil Nadu</option>
                            <option value="Karnataka">Karnataka</option>
                        </select>
                </div>
            </div>
            <div class="profile-image">
                <img src="images/admin-profile.jpeg" alt="Profile Picture">
            </div>
        </div>
        <div class="orders">
            <h2>Recent Orders</h2>
            <table>
                <tr>
                    <td><button class="btn" onclick="toggleDiv('div3')">User details</button></td>
                    <td><button class="btn" onclick="toggleDiv('div2')">users login</button></td>
                    <td><button class="btn" onclick="toggleDiv('div1')">View Past orders</button></td>
                </tr>
            </table>
            <div class="hideTable" id="div1">
            <table class="order-table" border='2' width='100%'>
            <%
           
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "manager");
                String query = "SELECT * FROM orderdetails ";

                PreparedStatement pstmt1 = con.prepareStatement(query);
                ResultSet rs = pstmt1.executeQuery();

            %>
            <tr>
                <th>Name</th>
                <th>email</th>
                <th>phone</th>
                <th>address</th>
                <th>item</th>
                <th>rate</th>
                <th>drink</th>
                
            </tr>
            <%
    
                while (rs.next()) {
                    out.print("<tr>");
                    out.print("<td>" + rs.getString(1) + "</td>");
                    out.print("<td>" + rs.getString(2) + "</td>"); // Displaying password
                    out.print("<td>" + rs.getString(3) + "</td>");
                    out.print("<td>" + rs.getString(4) + "</td>");
                    out.print("<td>" + rs.getString(5) + "</td>");
                    out.print("<td>" + rs.getString(6) + "</td>");
                    out.print("<td>" + rs.getString(7) + "</td>");
                    
                    out.print("</tr>");
                }
                                
                
            }
            catch (Exception e) {
                out.println("<p>Error: " + e.getMessage() + "</p>");
            } 
                
            %>
            </table>
        </div>
        <div class="hideTable" id="div2">
            <table class="order-table" border='2' width='100%'>
            <%
           
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "manager");
                String query = "SELECT * FROM userlogin ORDER BY TIME ";

                PreparedStatement pstmt1 = con.prepareStatement(query);
                ResultSet rs = pstmt1.executeQuery();

            %>
            <tr>
                <th>email</th>
                <th>Login-time</th>
            </tr>
            <%
    
                while (rs.next()) {
                    out.print("<tr>");
                    out.print("<td>" + rs.getString(1) + "</td>");
                    out.print("<td>" + rs.getString(2) + "</td>");
                    out.print("</tr>");
                }
                                
                
            }
            catch (Exception e) {
                out.println("<p>Error: " + e.getMessage() + "</p>");
            } 
                
            %>
            </table>
        </div>
        <div class="hideTable" id="div3">
            <table class="order-table" border='2' width='100%'>
            <%
           
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "manager");
                String query = "SELECT * FROM signup";

                PreparedStatement pstmt1 = con.prepareStatement(query);
                ResultSet rs = pstmt1.executeQuery();

            %>
            <tr>
                <th>Name</th>
                <th>email</th>
                <th>phone</th>
                <th>dob</th>
                <th>gender</th>
                <th>Password</th>
                
            </tr>
            <%
    
                while (rs.next()) {
                    out.print("<tr>");
                    out.print("<td>" + rs.getString(1) + "</td>");
                    out.print("<td>" + rs.getString(2) + "</td>"); // Displaying password
                    out.print("<td>" + rs.getString(3) + "</td>");
                    out.print("<td>" + rs.getString(4) + "</td>");
                    out.print("<td>" + rs.getString(5) + "</td>");
                    out.print("<td>" + rs.getString(6) + "</td>");
                    
                    out.print("</tr>");
                }
                                
                
            }
            catch (Exception e) {
                out.println("<p>Error: " + e.getMessage() + "</p>");
            } 
                
            %>
            </table>
        </div>
    </div>
</div>   
</body>
<footer>
    <div class="nav-top-bar">
        <span>copyrights reserved @ Jajula kishore nandhan 22761A0588 LBRCE</span>
    </div>
</footer>
</html>
