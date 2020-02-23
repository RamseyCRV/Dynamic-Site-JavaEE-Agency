package User;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class IAnunt
 */
@WebServlet("/IAnunt")
public class IAnunt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IAnunt() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String urlBazaDate = "jdbc:mysql://localhost/agentie";
		String user1 = "root";
		String password1 = "";

		
		String Id=request.getParameter("Id");
		String Nume=request.getParameter("Nume");
		String Prenume=request.getParameter("Prenume");
		String Email=request.getParameter("Email");
		String Telefon=request.getParameter("Telefon");
		String Adresa=request.getParameter("Adresa");
		String Tip=request.getParameter("Tip");
		String Pret=request.getParameter("Pret");
		String Restrictii=request.getParameter("Restrictii");
		String Suprafata=request.getParameter("Suprafata");
		String Operatie=request.getParameter("Operatie");
		
		
		
		
		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection c = DriverManager.getConnection(urlBazaDate, user1,password1);
			Statement s = c.createStatement();
			String op = "insert into operatii"
					+ "(Id,Operatie)"
					+ "values('" + Id + "','" + Operatie + "')";
			s.executeUpdate(op);
			
			String pr="insert into proprietati"
					+ "(Id,Tip,Adresa,Suprafata,Pret)"
					+ "values('" + Id + "','" + Tip + "','" + Adresa + "','" + Suprafata + "','" + Pret + "')";
			s.executeUpdate(pr);
			
			String an="insert into anunturi"
					+ "(Id,CodOperatie,IdProprietate,Nume,Prenume,Telefon,Email,Restrictii)"
					+ "values('" + Id + "','" + Id + "','" + Id + "','" + Nume + "','" + Prenume + "','" + Telefon + "','" + Email + "','" + Restrictii + "')";
			s.executeUpdate(an);
			s.close();
			System.out.println("inserted");
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		response.sendRedirect("User.jsp");
	}

}
