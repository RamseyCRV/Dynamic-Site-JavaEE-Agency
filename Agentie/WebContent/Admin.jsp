<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
</head>
<body>
	<div id="b"
		style="width: 1300px; height: 1100px; margin: 0 auto;">

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

			<div id="r" class="scroll">
				<button type="button" onclick="location.href='Home.jsp'"><b>Inapoi</b></button>
                <table align="center">
                    <td><button type="button" onclick="location.href='Proprietati.jsp'"><b>Proprietati</b></button></td>
                    <td><button type="button" onclick="location.href='Operatii.jsp'"><b>Operatii</b></button></td>
                    <td><button type="button" onclick="location.href='Anunturi.jsp'"><b>Anunturi</b></button></td>
                    <td><button type="button" onclick="location.href='Utilizatori.jsp'"><b>Utilizatori</b></button></td>
                    
                    </table>
            

			</div>
		</div>
	</div>
</body>
</html>