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
 * Servlet implementation class MAnunturi
 */
@WebServlet("/MAnunturi")
public class MAnunturi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MAnunturi() {
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
		String CodOperatie=request.getParameter("CodOperatie");
		String IdProprietate=request.getParameter("IdProprietate");
		String Nume=request.getParameter("Nume");
		String Prenume=request.getParameter("Prenume");
		String Telefon=request.getParameter("Telefon");
		String Email=request.getParameter("Email");
		String Restrictii=request.getParameter("Restrictii");
		
		try{
			Connection c = DriverManager.getConnection(urlBazaDate, user1, password1);
			Statement s = c.createStatement(); 
			
			String mod="update anunturi set CodOperatie='"+CodOperatie+"',IdProprietate='"+IdProprietate+"',Nume='"+Nume+"',"
					+ "Prenume='"+Prenume+"',Telefon='"+Telefon+"',Email='"+Email+"',"
							+ "Restrictii='"+Restrictii+"' where Id='"+Id+"'";
			s.executeUpdate(mod);
			
			s.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			System.out.println("modificat");
		}
		response.sendRedirect("Anunturi.jsp");
	}

}
