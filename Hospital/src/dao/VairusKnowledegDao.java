package dao;

import java.sql.ResultSet;

public class VairusKnowledegDao {
	//实例化数据库对象
	DbUnit db = new DbUnit();
	
	//获取第*层指南
	public ResultSet getVirusKnowledge(String sql){
		return db.getResultSet(sql);
	}
}
