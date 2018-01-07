package com.friendship.chenxi.beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Random;

import com.friendship.chenxi.dbutil.DBUtil;

public class Owner {
	private int id;
	private String name;
	private String password;
	private String sex;
	private String tel;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public Owner() {}
	
	/**
	 * 获取新用户注册结果
	 * @param name
	 * @param password
	 * @return
	 * @throws SQLException 
	 */
	public boolean getSignInResult(String name,String password,String sex,String tel) throws SQLException{	
		boolean result = false;
		Connection conn=null;
		PreparedStatement pt=null;
		try {
			conn = DBUtil.getConnection();
			int random_id = new Random().nextInt();
			setId(random_id);
			String sql = "insert into user_info values(?,?,?,?,?)";
			pt = conn.prepareStatement(sql);
			pt.setInt(1, getId());
			pt.setString(2, name);
			pt.setString(3, password);
			pt.setString(4, sex);
			pt.setString(5, tel);
			pt.executeUpdate();
			result=true;
		}finally{
			DBUtil.freeResoures(null, pt, conn);
		}
		return result;
	}
}
