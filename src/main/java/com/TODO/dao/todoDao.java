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
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Todo","root","");
			
			
		}catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
	
	public static todo getIdTodo(int id) {
		todo todo = null;
		try {
			Connection con = getConnection();
			PreparedStatement p = (PreparedStatement) con.prepareStatement("SELECT * FROM todo WHEW ID=?");
			p.setInt(1, id);
			ResultSet r = p.executeQuery();
			
			while(r.next()) {
				todo t = new todo();
				t.setId(r.getInt("id"));
				t.setTodo(r.getString("todo"));
				
			}
		}catch(Exception e){
			System.out.println(e);
		}
		return todo;
	}
	
	public static int salvar(todo u) {
		int status = 0;
		
		try {
			Connection con = getConnection();
			PreparedStatement p = (PreparedStatement) con.prepareStatement("insert into todo(todo) values(?)");
			p.setString(1,u.getTodo());
			status = p.executeUpdate();
		}catch(Exception e) {
			System.out.println(e);
		}														
		return status;
		
		
	}

	
	public static int Update(todo u) {
		int status = 0;
		
		try {
			Connection con = getConnection();
			PreparedStatement p = (PreparedStatement) con.prepareStatement("UPDATE todo set todo=?");
			p.setString(1,u.getTodo());
			status = p.executeUpdate();
		}catch(Exception e) {
			System.out.println(e);
		}														
		return status;
		
		
	}
	
	public static int deletar(todo u) {
		int status = 0;
		
		try {
			Connection con = getConnection();
			PreparedStatement p = (PreparedStatement) con.prepareStatement("DELETE from todo WHERE id=?");
			p.setInt(1,u.getId());
			status = p.executeUpdate();
		}catch(Exception e) {
			System.out.println(e);
		}														
		return status;
		
		
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


