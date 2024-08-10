<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	
	String mail = request.getParameter("mail");
	String pwd = request.getParameter("password");

	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");

		String qry = "select * from signup where email=? and password=?";
		PreparedStatement pstmt = con.prepareStatement(qry);

		pstmt.setString(1,mail);
		pstmt.setString(2,pwd);

		ResultSet rs = pstmt.executeQuery();

		if(rs.next())
		{

			String qry1 = "insert into UserLogin values(?,?)";

			Date currentDate = new Date();
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String dateString = dateFormat.format(currentDate);
			
			PreparedStatement pstmt1 = con.prepareStatement(qry1);
			pstmt1.setString(1, mail);
			pstmt1.setString(2, dateString);
			
			pstmt1.executeUpdate();

			session.setAttribute("mail",mail);
			%>
				<jsp:forward page="home.jsp"/>
			<%

		}
		else{
			%>
			<script>
				alert('Login failed invalid credentials');
				window.location.href = 'login.html';
			</script>
			<%
		}

		con.close();

	}
	catch(Exception e){
		out.print(e);
	}

%>