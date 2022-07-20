package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import entity.MedicalDrugs;
import entity.MedicalEquipment;

public class MedicalDrugsDao {
	//实例化数据库对象
	DbUnit db = new DbUnit();
	Statement stmt = null;
	//获取所有医学药品
	public ResultSet getMedicalDrugs(String sql){
		return db.getResultSet(sql);
	}
	
	//获取所有医学药品的数量
	public int getMedicalDrugsCount() throws SQLException{
		int count = 0;
		ResultSet rs = this.getMedicalDrugs("SELECT * FROM medicaldrugs");
		while(rs.next()){
			count++;
		}
		return count;
	}
	
	//添加医学药品
	public boolean addMedicalDrugs(MedicalDrugs medicaldrugs) throws SQLException{
		String sql = "insert into medicaldrugs"+
		" values('"+medicaldrugs.getName()+"','"+medicaldrugs.getDetail()+"','"+medicaldrugs.getImgSrc()+
		"','"+db.getTime()+"')";
		stmt = db.getConnect().createStatement();
		stmt.executeUpdate(sql);
		return true;
	}
	
	//删除医学药品
	public void deleteMedicalDrugs(String name) throws SQLException{
		String sql = "DELETE FROM medicaldrugs WHERE name='"+name+"'";
		stmt = db.getConnect().createStatement();
		stmt.executeUpdate(sql);
	}
	
	//更新医学药品
	public void updateMedicalDrugs(MedicalDrugs medicaldrugs) throws SQLException{
	try {
		stmt = db.getConnect().createStatement();
		stmt.executeUpdate("update medicaldrugs set imgSrc='"+medicaldrugs.getImgSrc()+"' where name='"+medicaldrugs.getName()+"'");
		stmt.executeUpdate("update medicaldrugs set time='"+db.getTime()+"' where name='"+medicaldrugs.getName()+"'");
		stmt.executeUpdate("update medicaldrugs set detail='"+medicaldrugs.getDetail()+"' where name='"+medicaldrugs.getName()+"'");
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
}
