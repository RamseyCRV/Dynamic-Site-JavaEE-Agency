<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User</title>
</head>
<body>

	<div id="Body"
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

			<div id="rightSection" class="scroll">
             <button type="button" onclick="location.href='Home.jsp'"><b>Inapoi</b></button>
                <h2 align="center">Adaugare Anunt</h2>
       
        <form method="post" action="IAnunt">
            <table align="center">
                
                <tr>
                <td>Pentru</td>
                <td> <select name = "Operatie">
           			 <option value = "Vanzare" selected>Vanzare</option>
           			 <option value = "Inchiriere">Inchiriere</option>
            		<option value = "Arendare">Arendare</option>
         		</select>
         		</td>
				</tr>
				 <tr>
                    <td>Id</td>
                    <td><input type="text" name="Id"></td>
                </tr>
                 <tr>
                    <td>Tip</td>
                    <td><input type="text" name="Tip"></td>
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
                    <td>Adresa</td>
                    <td><input type="text" name="Adresa"></td>
                </tr>

                <tr>
                    <td>Nume</td>
                    <td><input type="text" name="Nume"></td>
                </tr>

                <tr>
                    <td>Prenume</td>
                    <td><input type="text" name="Prenume"></td>
                </tr>

                <tr>
                    <td>Email</td>
                    <td><input type="text" name="Email"></td>
                </tr>
                
				 <tr>
                    <td>Telefon</td>
                    <td><input type="text" name="Telefon"></td>
                </tr>
                 <tr>
                    <td>Restrictii Contact</td>
                    <td><input type="text" name="Restrictii"></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td><input type="submit" value="Adaugare"></td>
                </tr>
            </table>
        </form>
        

			</div>
		</div>

</body>
</html>