package com.TODO.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.TODO.bean.todo;
import com.mysql.jdbc.PreparedStatement;

public class todoDao {
	public static Connection getConnection() {
		Connection con = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/todo","root","");
			
			
		}catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
	
	public static List<todo> getAllTodo(){
		List<todo> list = new ArrayList<todo>();
		
		try {
			Connection con = getConnection();
			PreparedStatement p = (PreparedStatement) con.prepareStatement("SELECT * FROM todo");
			ResultSet r = p.executeQuery();
			
			while(r.next()) {
				todo t = new todo();
				t.setId(r.getInt("id"));
				t.setTodo(r.getString("todo"));
				list.add(t);
			}
		}catch(Exception e) {
			System.out.println(e);
		}
		return list;
	}
}


