<%@ page import='java.sql.*' %>
<%
    String mail = (String)session.getAttribute("mail");
	String un = "";
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
		}
	}
	catch(Exception e){
		out.print(e);
	}

%>
<html>
	<head>
		<title>home</title>
		<link rel="stylesheet" href="css/homecss.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
		<script>
			function search() {
				var searchTerm = document.getElementById("searchInput").value;
				if (searchTerm) {
					window.location.href = "explore.html#" + searchTerm;
				}
			}
		</script>
	</head>
	<body>
		<section class="logo-background">
			<div class="links">
			<br>
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
			<br><br>
			<img src="images/logo2.png" class="logo">
			<br>
			<center><h2 style="color: yellow;">Welcome "<%=un %>"</h2></center>
			<div class="search">
		   		<input type="search" class="search-input" id="searchInput" list="mylist" placeholder="enter food name"><button id="searchicon" onclick="search()"><i class="fas fa-search"></i></button>
	  			<datalist id="mylist">
					<option>biryani</option>
					<option>burger</option>
					<option>Ice cream</option>
					<option>pizza</option>
					<option>cake</option>
					<option>tiffins</option>
				</datalist>
			</div>
			<br><br><br><br><br><br><br><br><br><br><br>
		</section>
		<img class="center" src="images/Illustration of a Food Delivery App Type 1.gif">
		<section class="center">
			<div class="places">
				<span style="font-size: 20px;"><b>Places</b></span>
				<a href="explore.html">see more</a>
				<div class="parent">
					<div class="child"><a href="explore.html"><button>Krishna  ></button></a></div>
					<div class="child"><a href="explore.html"><button>Chitoor  ></button></a></div>
					<div class="child"><a href="explore.html"><button>kurnool  ></button></a></div><br>
					<div class="child"><a href="explore.html"><button>godavari  ></button></a></div>
					<div class="child"><a href="explore.html"><button>srikakulam  ></button></a></div>
					<div class="child"><a href="explore.html"><button>nellore  ></button></a></div><br>
					<div class="child"><a href="explore.html"><button>NTR  ></button></a></div>
					<div class="child"><a href="explore.html"><button>guntur ></button></a></div>
					<div class="child"><a href="explore.html"><button>kadapa  ></button></a></div><br>
					<div class="child"><a href="explore.html"><button>anathapur  ></button></a></div>
					<div class="child"><a href="explore.html"><button>vizag ></button></a></div>
					<div class="child"><a href="explore.html"><button>vijayanagaram  ></button></a></div>
				</div>
			</div>
		</section>
		<section class="aboutus" id="about us">
			<h2>about us</h2>
			<table class="about">
				<tr>
					<td><b>Our Objective</b></td>
					<td><b>Contact Us</b></td>
					<td><b>Learn More</b></td>
					<td><b>Social Media</b></td>
				</tr>
				<tr>
					<td><span style="color: snow;">Food express provides a platform <br>to provide the food and delivery <br>services easy for the customers.<br> it increases the relationship between <br>customer and webpage,<br> for more quiries contact us<br></span></td>
					<td><span style="color: snow;">Contact no:9876543210 <br> Email: foodexpress@gmail.com</span></td>
					<td><span style="color: snow;">Privacy<br>Security<br>Terms<br>Sitemap</span></td>
					<td>
						<span style="color: snow;">
							Instagram <i class="fab fa-instagram"></i><br>
							Facebook <i class="fab fa-facebook"></i><br>
							Twitter <i class="fab fa-x-twitter"></i></i><br>
							Google <i class="fab fa-google"></i>
						</span>
					</td>
				</tr>
			</table>
		</section>
	</body>
	<footer>
        <div class="nav-top-bar">
            <span>copyrights reserved @ Jajula kishore nandhan 22761A0588 LBRCE</span>
        </div>
    </footer>
</html>
