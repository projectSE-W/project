package Dao;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;

public class DB {
	public Connection getConn() {
		String Driver = "com.mysql.jdbc.Driver";
		String url ="jdbc:mysql://localhost:3306/bookdb?useUnicode=true&characterEncoding=UTF-8";
		//String url = "jdbc:mysql://lrxkpmaifrer.mysql.sae.sina.com.cn:10144/bookdb";//
		String username = "root";
		String password = "wjt19951122";
		Connection conn = null;
	    try {
	        Class.forName(Driver); 
	        conn = (Connection) DriverManager.getConnection(url, username, password);
	    } catch (ClassNotFoundException e) {
	        e.printStackTrace();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return conn;
	}
}
