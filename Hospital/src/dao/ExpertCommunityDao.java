package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import entity.ExpertCommunity;
import entity.MedicalDrugs;

public class ExpertCommunityDao {
	//实例化数据库对象
	DbUnit db = new DbUnit();
	Statement stmt = null;
	//获取专家信息
	public ResultSet getExpertCommunityDao(String sql){
		return db.getResultSet(sql);
	}
	
	//获取所有专家的数量
	public int getExpertCommunityCount() throws SQLException{
		int count = 0;
		ResultSet rs = this.getExpertCommunityDao("SELECT * FROM expertcommunity");
		while(rs.next()){
			count++;
		}
		return count;
	}
	
	//添加专家人员
	public boolean addExpertCommunity(ExpertCommunity expertcommunity) throws SQLException{
		String sql = "insert into expertcommunity"+
		" values('"+expertcommunity.getImgSrc()+"','"+expertcommunity.getName()+"','"+expertcommunity.getDetail()+
		"','"+db.getTime()+"')";
		stmt = db.getConnect().createStatement();
		stmt.executeUpdate(sql);
		return true;
	}
	
	//删除专家人员
	public void deleteExpertCommunity(String name) throws SQLException{
		String sql = "DELETE FROM expertcommunity WHERE name='"+name+"'";
		stmt = db.getConnect().createStatement();
		stmt.executeUpdate(sql);
	}
	
	//更新专家人员
	public void updateExpertCommunity(ExpertCommunity expertcommunity) throws SQLException{
	try {
		stmt = db.getConnect().createStatement();
		stmt.executeUpdate("update expertcommunity set imgSrc='"+expertcommunity.getImgSrc()+"' where name='"+expertcommunity.getName()+"'");
		stmt.executeUpdate("update expertcommunity set time='"+db.getTime()+"' where name='"+expertcommunity.getName()+"'");
		stmt.executeUpdate("update expertcommunity set detail='"+expertcommunity.getDetail()+"' where name='"+expertcommunity.getName()+"'");
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
}
