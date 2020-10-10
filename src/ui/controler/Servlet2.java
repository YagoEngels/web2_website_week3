package ui.controler;

import domain.database.DatabankenPlayers;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Servlet2")
public class Servlet2 extends HttpServlet {
    DatabankenPlayers databankenPlayers = new DatabankenPlayers();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("players",databankenPlayers.getSpelers());
        request.setAttribute("spelers_belgie", databankenPlayers.playersFromBelgium());
        RequestDispatcher view = request.getRequestDispatcher("lijst.jsp");
        view.forward(request,response);
    }
}
