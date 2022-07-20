package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import entity.ChinaVirus;
import entity.MedicalEquipment;

public class MedicalEquipmentDao {
	
	//实例化数据库对象
	DbUnit db = new DbUnit();
	Statement stmt = null;
	//获取所有医疗器材
	public ResultSet getMedicalEquipment(String sql){
		return db.getResultSet(sql);
	}
	
	//获取所有医疗器材的数量
	public int getMedicalEquipmentCount() throws SQLException{
		int count = 0;
		ResultSet rs = this.getMedicalEquipment("SELECT * FROM medicalequipment");
		while(rs.next()){
			count++;
		}
		return count;
	}
	
	//添加医疗器材
	public boolean addMedicalEquipment(MedicalEquipment medicalequipment) throws SQLException{
		String sql = "insert into medicalequipment"+
		" values('"+medicalequipment.getImgSrc()+"','"+medicalequipment.getName()+"','"+medicalequipment.getDetail()+
		"','"+db.getTime()+"')";
		stmt = db.getConnect().createStatement();
		stmt.executeUpdate(sql);
		return true;
	}
	
	//删除医疗器材
	public void deleteMedicalEquipment(String name) throws SQLException{
		String sql = "DELETE FROM medicalequipment WHERE name='"+name+"'";
		stmt = db.getConnect().createStatement();
		stmt.executeUpdate(sql);
	}
	
	//更新医疗器材
	public void updateMedicalEquipment(MedicalEquipment medicalequipment) throws SQLException{
	try {
		stmt = db.getConnect().createStatement();
		stmt.executeUpdate("update medicalequipment set imgSrc='"+medicalequipment.getImgSrc()+"' where name='"+medicalequipment.getName()+"'");
		stmt.executeUpdate("update medicalequipment set time='"+db.getTime()+"' where name='"+medicalequipment.getName()+"'");
		stmt.executeUpdate("update medicalequipment set detail='"+medicalequipment.getDetail()+"' where name='"+medicalequipment.getName()+"'");
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
	
}
