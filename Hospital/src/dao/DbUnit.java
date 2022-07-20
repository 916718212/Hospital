package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DbUnit {
	Connection conn = null;
	ResultSet rs = null;
	Statement stmt = null;
	int n;
	
	//连接数据库
	public Connection getConnect(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/hospital??useUnicode=true&characterEncoding=utf8";
			String user="root";
			String password="123456";
			conn=DriverManager.getConnection(url,user,password);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		return conn;
	}
	
	//获取结果集
	public ResultSet getResultSet(String sql){
		try {
			stmt = this.getConnect().createStatement();
			rs = stmt.executeQuery(sql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	
	//获取当前时间并转化成字符串
	public String getTime(){
		Date date = new Date(System.currentTimeMillis());
 		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = formatter.format(date);
		return time;
	}
	public static void main(String[] args) {
		System.out.println("链接。。。。");
		DbUnit db = new DbUnit();
		db.getConnect();
		System.out.println("链接成功！！");
	}
}
