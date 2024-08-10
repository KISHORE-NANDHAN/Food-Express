<%@ page import='java.sql.*' %>
<%
    String mail = (String)session.getAttribute("mail");
    if(mail==null){
        %>
        <script>
            alert("please login first");
            window.location.href="login.html";
        </script>
        <%
    }
	try {
        if(mail.equals("admin@gmail.com"))
		{
				response.sendRedirect("admin_profile.jsp");
		}
        else
            response.sendRedirect("profile.jsp");
	}
	catch(Exception e){
		out.print(e);
	}

%>