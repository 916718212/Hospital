package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import entity.Message;

public class MessageDao {
	//实例化数据库对象
	DbUnit db = new DbUnit();
	Statement stmt = null;
	//获取所有消息
	public ResultSet getMessage(String sql){
		return db.getResultSet(sql);
	}
	
	//添加消息
	public boolean addMessage(String detail,String user) throws SQLException{
		String sql = "insert into message"+
		" values('"+detail+"','"+user+
		"','"+db.getTime()+"')";
		stmt = db.getConnect().createStatement();
		stmt.executeUpdate(sql);
		return true;
	}
	
	//获取所有消息的数量
	public int getMessageCount() throws SQLException{
		int count = 0;
		ResultSet rs = this.getMessage("SELECT * FROM message");
		while(rs.next()){
			count++;
		}
		return count;
	}
}
