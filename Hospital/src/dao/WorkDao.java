package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import entity.Customer;

public class WorkDao {
	DbUnit db = new DbUnit();
	Statement stmt = null;
	
	//获取所有任务
	public ResultSet getWork(String sql){
		return db.getResultSet(sql);
	}
	
	//添加任务
	public boolean addWork(String detail,String end) throws SQLException{
		String sql = "insert into work"+
		" values('"+detail+"','进行中','"+db.getTime()+"','"+end+
		"','null')";
		stmt = db.getConnect().createStatement();
		stmt.executeUpdate(sql);
		return true;
	}
	
	//删除任务
	public void deleteWork(String detail) throws SQLException{
		String sql = "DELETE FROM work WHERE detail='"+detail+"'";
		stmt = db.getConnect().createStatement();
		stmt.executeUpdate(sql);
	}
	
	//更新任务
	public void updateWork(String detail,String status,String start,String end) throws SQLException{
	try {
		stmt = db.getConnect().createStatement();
		stmt.executeUpdate("update work set detail='"+detail+"' where start ='2021-02-05 15:53:42'");
		stmt.executeUpdate("update work set status='"+status+"' where start='2021-02-05 15:53:42'");
		stmt.executeUpdate("update work set end='"+end+"' where start='2021-02-05 15:53:42'");
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
	
	//获取所有任务的数量
	public int getWorkCount() throws SQLException{
		int count = 0;
		ResultSet rs = this.getWork("SELECT * FROM work");
		while(rs.next()){
			count++;
		}
		return count;
	}
}
