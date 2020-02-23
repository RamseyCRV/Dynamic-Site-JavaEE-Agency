package Admin;

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
 * Servlet implementation class IProprietati
 */
@WebServlet("/IProprietati")
public class IProprietati extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IProprietati() {
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
		String Tip=request.getParameter("Tip");
		String Adresa=request.getParameter("Adresa");
		String Suprafata=request.getParameter("Suprafata");
		String Pret=request.getParameter("Pret");
		
		
		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection c = DriverManager.getConnection(urlBazaDate, user1,password1);
			Statement s = c.createStatement();
			String i = "insert into proprietati"
					+ "(Id,Tip,Adresa,Suprafata,Pret)"
					+ "values('" + Id + "','" + Tip + "','" + Adresa + "','" + Suprafata + "','" + Pret + "')";
			s.executeUpdate(i);
			s.close();
		
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		response.sendRedirect("Proprietati.jsp");
	}

}
