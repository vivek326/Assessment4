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

import com.LocalAdList.User;
import com.LocalAdList.ConnectionManager;



/**
 * Servlet implementation class uview
 */
@WebServlet("/uview")
public class uview extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<User>dataList;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public uview() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		MongoClient connection = ConnectionManager.getMongo();
		MongoDatabase db = ConnectionManager.getDb("User");
		dataList=new ArrayList<User>();
		MongoCollection<Document> collection = db.getCollection("detail");
		MongoCursor<Document> cursor = collection.find().iterator();
		while (cursor.hasNext()) {
			Document d = (Document) cursor.next();

			User u = new User(d.getString("name"), d.getString("email"), d.getString("phone"));
			dataList.add(u);
	}
		request.setAttribute("data", dataList);
		request.getRequestDispatcher("Uview.jsp").forward(request, response);
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
