package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import entity.ChinaVirus;
import entity.Customer;

public class UserDao {
	//实例化数据库对象
	DbUnit db = new DbUnit();
	Statement stmt = null;
	
	//获取所有顾客
	public ResultSet getCustomer(String sql){
		return db.getResultSet(sql);
	}
	
	//获取所有管理员
	public ResultSet getManager(String sql){
		return db.getResultSet(sql);
	}
	
	//顾客注册
	public boolean customerLogin(Customer customer) throws SQLException{
		String sql = "insert into customer"+
		" values('"+customer.getName()+"','"+customer.getAccount()+
		"','"+customer.getPassword()+"')";
		stmt = db.getConnect().createStatement();
		stmt.executeUpdate(sql);
		return true;
	}
	
	//删除顾客
	public void deleteCustomer(String account) throws SQLException{
		String sql = "DELETE FROM customer WHERE account='"+account+"'";
		stmt = db.getConnect().createStatement();
		stmt.executeUpdate(sql);
	}
	
	//更新顾客
	public void updateCustomer(Customer customer) throws SQLException{
	try {
		stmt = db.getConnect().createStatement();
		stmt.executeUpdate("update customer set name='"+customer.getName()+"' where account='"+customer.getAccount()+"'");
		stmt.executeUpdate("update customer set password='"+customer.getPassword()+"' where account='"+customer.getAccount()+"'");
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
	
	//顾客登录判断
	public Customer customerCheckLogin(String account,String password) throws SQLException{
		//查询数据库中账号密码是否匹配
		ResultSet rs = this.getCustomer("SELECT * FROM customer WHERE account="+account);
		rs.next();
		if(password.equals(rs.getString("password"))){
			//匹配  返回该顾客对象
			return new Customer(rs.getString("name"),rs.getString("account"),rs.getString("password"));
		}
		//账号密码不匹配，返回空
		return null;
	}
	
	//获取所有顾客的数量
	public int getCustomerCount() throws SQLException{
		int count = 0;
		ResultSet rs = this.getCustomer("SELECT * FROM customer");
		while(rs.next()){
			count++;
		}
		return count;
	}
	
	//后台登陆判断
	public boolean managerCheckLogin(String account,String password) throws SQLException{
		//查询数据库中账号密码是否匹配
		ResultSet rs = this.getManager("SELECT * FROM manager");
		while(rs.next()){
		if(account.equals(rs.getString("account"))&&password.equals(rs.getString("password"))){
			//账号密码匹配
			return true;
		}}
		//账号密码不匹配
		return false;
	}
	
	//修改顾客账号的密码
	public void updatePassowrd(String account,String password) throws SQLException{
		stmt = db.getConnect().createStatement();
		stmt.executeUpdate("update customer set password='"+password+"' where account='"+account+"'");
	}

}
