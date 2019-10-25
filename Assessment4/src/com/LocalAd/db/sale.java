package com.LocalAd.db;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bson.Document;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;

import com.LocalAdList.Seller;
import com.LocalAdList.ConnectionManager;

/**
 * Servlet implementation class sale
 */
@WebServlet("/sale")
public class sale extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<Seller>dataList=new ArrayList<Seller>();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sale() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		MongoClient connection = ConnectionManager.getMongo();
		MongoDatabase db = ConnectionManager.getDb("sale");

		MongoCollection<Document> collection = db.getCollection("detail");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		MongoClient connection = ConnectionManager.getMongo();
		MongoDatabase db = ConnectionManager.getDb("sale");

		MongoCollection<Document> collection = db.getCollection("detail");

		String postingtitle = request.getParameter("postingtitle");
		String city = request.getParameter("city");
		String postalcode = request.getParameter("postalcode");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		Document document = new Document("postingtitle", postingtitle).append("city", city).append("postalcode", postalcode).append("email", email).append("phone", phone);
		collection.insertOne(document);
		
		response.sendRedirect("Sales.jsp");
		
	}

}
