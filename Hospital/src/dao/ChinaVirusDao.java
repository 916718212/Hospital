package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import entity.ChinaVirus;
import entity.EmergencyRescue;

public class ChinaVirusDao {
	//实例化数据库对象
	DbUnit db = new DbUnit();
	Statement stmt = null;
	//获取所有新冠事件
	public ResultSet getChinaVirus(String sql){
		return db.getResultSet(sql);
	}
	
	//获取所有新冠事件的数量
	public int getChinaVirusCount() throws SQLException{
		int count = 0;
		ResultSet rs = this.getChinaVirus("SELECT * FROM chinavirus");
		while(rs.next()){
			count++;
		}
		return count;
	}
	
	//添加新冠事件
	public boolean addChinaVirus(ChinaVirus chinavirus) throws SQLException{
		String sql = "insert into chinavirus"+
		" values('"+chinavirus.getYear()+"','"+chinavirus.getMd()+"','"+chinavirus.getDetail()+
		"','"+db.getTime()+"')";
		stmt = db.getConnect().createStatement();
		stmt.executeUpdate(sql);
		return true;
	}
	
	//删除新冠事件
	public void deleteChinaVirus(String time) throws SQLException{
		String sql = "DELETE FROM chinavirus WHERE time='"+time+"'";
		stmt = db.getConnect().createStatement();
		stmt.executeUpdate(sql);
	}
	
	//更新新冠事件
	public void updateChinaVirus(ChinaVirus chinavirus,String time) throws SQLException{
	try {
		stmt = db.getConnect().createStatement();
		stmt.executeUpdate("update chinavirus set year='"+chinavirus.getYear()+"' where time='"+time+"'");
		stmt.executeUpdate("update chinavirus set md='"+chinavirus.getMd()+"' where time='"+time+"'");
		stmt.executeUpdate("update chinavirus set detail='"+chinavirus.getDetail()+"' where time='"+time+"'");
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
}
