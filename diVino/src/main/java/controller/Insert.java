package controller;

import java.io.IOException;
import model.Prodotto;
import model.ProdottoDAO;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet(name = "Inserimento", value = "/Inserimento")
public class Insert extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cod = request.getParameter("cod");
        String nome = request.getParameter("nome");
        float prezzo = Float.parseFloat(request.getParameter("prezzo"));
        String descrizione = request.getParameter("descrizione");

        ProdottoDAO service = new ProdottoDAO();

        service.doSave(new Prodotto(cod, nome, prezzo, descrizione));

        String address="/WEB-INF/index.html";

        RequestDispatcher dispatcher = request.getRequestDispatcher(address);

        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
