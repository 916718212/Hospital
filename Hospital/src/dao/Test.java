package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Test {
		Connection conn = null;
		ResultSet rs = null;
		Statement stmt = null;
		int n;
		
		//连接数据库
		public Connection getConnect(){
			try {
				Class.forName("com.mysql.jdbc.Driver");
				String url="jdbc:mysql://localhost:3306/ktvManage??useUnicode=true&characterEncoding=utf8";
				String user="root";
				String password="123456";
				conn=DriverManager.getConnection(url,user,password);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}  
			return conn;
		}
		public static void main(String[] args) {
			System.out.println("尝试连接。。");
			Test t = new Test();
			t.getConnect();
			System.out.println("连接成功。。");
		}
}
