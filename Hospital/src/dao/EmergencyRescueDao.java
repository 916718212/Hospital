package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import entity.EmergencyRescue;
import entity.Message;

public class EmergencyRescueDao {
	//实例化数据库对象
	DbUnit db = new DbUnit();
	Statement stmt = null;
	//获取所有急救方法
	public ResultSet getEmergencyRescue(String sql){
		return db.getResultSet(sql);
	}
	
	//获取所有急救方法的数量
	public int getEmergencyRescueCount() throws SQLException{
		int count = 0;
		ResultSet rs = this.getEmergencyRescue("SELECT * FROM emergencyrescue");
		while(rs.next()){
			count++;
		}
		return count;
	}
	
	//添加紧急救援方法
	public boolean addEmergencyRescue(EmergencyRescue emergencyrescue) throws SQLException{
		String sql = "insert into emergencyrescue"+
		" values('"+emergencyrescue.getName()+"','"+emergencyrescue.getDetail()+
		"','"+db.getTime()+"')";
		stmt = db.getConnect().createStatement();
		stmt.executeUpdate(sql);
		return true;
	}
	
	//删除紧急救援方法
	public void deleteEmergencyRescue(String name) throws SQLException{
		String sql = "DELETE FROM emergencyrescue WHERE name='"+name+"'";
		stmt = db.getConnect().createStatement();
		stmt.executeUpdate(sql);
	}
	
	//更新急救方法
	public void updateEmergencyRescue(EmergencyRescue emergencyrescue) throws SQLException{
	try {
		stmt = db.getConnect().createStatement();
		stmt.executeUpdate("update emergencyrescue set detail='"+emergencyrescue.getDetail()+"' where name='"+emergencyrescue.getName()+"'");
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
}
