<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Case</title>
</head>
<body>

	<div id="Body" style="width: 1300px; height: 1100px; margin: 0 auto;">

		<div id="header" style="height: 300px; width: 1300px;">
			<img src="banner1.png">
		</div>
            <style type="text/css">
                .scroll{
                    background-color:lightblue;
                    overflow: auto;
                    float:left;
                    width: 1300px;
                    height: 800px;
                }
            </style>

			<div id="rightSection" class="scroll">
             <button type="button" onclick="location.href='Home.jsp'"><b>Inapoi</b></button>
                <%
      				 String urlBazaDate = "jdbc:mysql://localhost/agentie";
                    String user1 = "root";
                    String password1 = "";
            
                    
                   
                    
                    %>
                   <form action="Search.jsp">
                    	<table align="center" style="margin-top:20px;">
                    	 
                   		 <tr>
            				<td>Tip</td>
                   			 <td><input type="text" name="Tip"></td> 
                   		 </tr>
                   		 
                   		 <tr>
            				<td>Localizare</td>
                   			 <td><input type="text" name="Localizare"></td> 
                   		 </tr>
                   		 <tr>
            				<td>Suprafata</td>
                   			 <td><input type="text" name="Suprafata"></td> 
                   		 </tr>
                   		 <tr>
            				<td>Pret</td>
                   			 <td><input type="text" name="Pret"></td> 
                   		 </tr>
                   		 
                   		<tr>
                   		<td><input type="submit" name="CD" value="Search"></td>
                   		</tr>
                   		
                    	</table>
                    	</form>
                    	
                   
                    
                    <h2 align="center">Anunturi</h2>
                   <table align="center" cellpadding="4" cellspacing="3" border="1">
                   
                   <tr>
				
					<tr>
					<td>Tip</td>
					<td>Localizare</td>
					<td>Suprafata</td>
					<td>Pret</td>
					
					
				</tr>
					
				</tr>
                    
                    <%
                    String Tip=request.getParameter("Tip");
                    String Localizare=request.getParameter("Localizare");
                    String Suprafata=request.getParameter("Suprafata");
                    String Pret=request.getParameter("Pret");
                
                   
                    try	{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection c = DriverManager.getConnection(urlBazaDate, user1, password1);
                    Statement s = c.createStatement(); 
                    ResultSet rs = s .executeQuery("SELECT * FROM proprietati WHERE Tip='"+Tip+"' OR Adresa='"+Localizare+"' OR Suprafata='"+Suprafata+"' OR Pret='"+Pret+"'");
                    
                
                    while (rs.next()) { 
                    %>
                    <tr>
                   
					<td><%=rs.getString("Tip")%></td>
					<td><%=rs.getString("Adresa")%></td>
					<td><%=rs.getString("Suprafata")%></td>
					<td><%=rs.getString("Pret")%></td>
					
                    </tr>
                
              
                    <%
                    }
                    
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    %>

			</div>
		</div>
	</div>
	

</body>
</html>