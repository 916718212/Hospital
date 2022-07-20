package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import entity.Message;

public class MessageBoardDao {
	//实例化数据库对象
	DbUnit db = new DbUnit();
	Statement stmt = null;
	//获取所有留言
	public ResultSet getMessageBoard(String sql){
		return db.getResultSet(sql);
	}
	
	//添加留言
	public boolean addMessageBoard(Message message) throws SQLException{
		String sql = "insert into messageboard"+
		" values('"+message.getMessage()+"','"+message.getName()+"','"+message.getPhone()+
		"','"+message.getAccount()+"','"+message.getEmail()+
		"','"+db.getTime()+"')";
		stmt = db.getConnect().createStatement();
		stmt.executeUpdate(sql);
		return true;
	}
	
	//删除留言
	public void deleteMessageBoard(String time) throws SQLException{
		String sql = "DELETE FROM messageboard WHERE time='"+time+"'";
		stmt = db.getConnect().createStatement();
		stmt.executeUpdate(sql);
	}
	
	//获取所有留言板的数量
	public int getMessageBoardCount() throws SQLException{
		int count = 0;
		ResultSet rs = this.getMessageBoard("SELECT * FROM messageboard");
		while(rs.next()){
			count++;
		}
		return count;
	}
}
