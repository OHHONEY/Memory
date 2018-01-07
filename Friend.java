package com.friendship.chenxi.beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import com.friendship.chenxi.dbutil.DBUtil;

/**
 * a list of my friends
 * @author chenxi
 *
 */
public class Friend {

	private int relate_id;
	private String name;
	private String sex;
	private String relation;
	private List<Friend> friends;
	
	public int getRelate_id() {
		return relate_id;
	}

	public void setRelate_id(int relate_id) {
		this.relate_id = relate_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getRelation() {
		return relation;
	}

	public void setRelation(String relation) {
		this.relation = relation;
	}

	public int getRelationId(String name) {
		
		return 0;
	}
	public List<Friend> getFriend(int relate_id) {
		friends = new ArrayList<Friend>();
		Connection conn = null;
		PreparedStatement pt = null;
		ResultSet rt = null;
		try {
			conn = DBUtil.getConnection();
			String sql = "select * from friends_info where relate_id="+relate_id;
			pt = conn.prepareStatement(sql);
			rt = pt.executeQuery();
			while(rt.next()) {
				Friend friend = new Friend();
				friend.setRelate_id(rt.getInt(1));
				friend.setName(rt.getString(2));
				friend.setSex(rt.getString(3));
				friend.setRelation(rt.getString(4));
				friends.add(friend);	
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.freeResoures(rt, pt, conn);
		}
		
		return friends;		
	}
	
	public void setFriends(List<Friend> friends) {
		this.friends = friends;
	}

	public Friend() {
	}
	
	/**
	 * 添加新朋友
	 * @param relate_id
	 * @param name
	 * @param sex
	 * @param relation
	 * @return
	 * @throws SQLException
	 */
	public boolean addFriend(int relate_id,String name,String sex,String relation) throws SQLException{	
		boolean result = false;
		Connection conn=null;
		PreparedStatement pt=null;
		setRelate_id(relate_id);
		try {
			conn = DBUtil.getConnection();
			String sql = "insert into friends_info values(?,?,?,?)";
			pt = conn.prepareStatement(sql);
			pt.setInt(1, relate_id);
			pt.setString(2, name);
			pt.setString(3, sex);
			pt.setString(4, relation);
			pt.executeUpdate();
			result=true;
		}finally{
			DBUtil.freeResoures(null, pt, conn);
		}
		return result;
	}
	
	
	/**
	 * 根据用户ID和姓名删除记录
	 * @param relate_id
	 * @param name
	 * @return
	 */
	public boolean delFriend(int relate_id,String name) {	
		boolean result = false;
		Connection conn=null;
		PreparedStatement pt=null;
		try {
			conn = DBUtil.getConnection();
			String sql = "delete from friends_info where relate_id=? and name=?";
			pt = conn.prepareStatement(sql);
			pt.setInt(1, relate_id);
			pt.setString(2, name);
			pt.executeUpdate();
			result=true;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtil.freeResoures(null, pt, conn);
		}
		return result;
		
	}
	
	public boolean update(Friend friend) {	
		boolean result = false;
		Connection conn=null;
		PreparedStatement pt=null;
		try {
			conn = DBUtil.getConnection();
			String sql = "update friends_info set "
					+ "name="+friend.getName()
					+",sex="+friend.getSex()
					+",relation"+friend.getRelation();
			pt = conn.prepareStatement(sql);
			pt.setString(2, friend.getName());
			pt.setString(3, friend.getSex());
			pt.setString(4, friend.getRelation());
			pt.executeUpdate();
			result=true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBUtil.freeResoures(null, pt, conn);
		}
		return result;
		
	}
	
	public boolean update(int relate_id,String name,String sex,String relation) {	
		boolean result = false;
		Connection conn=null;
		PreparedStatement pt=null;
		try {
			conn = DBUtil.getConnection();
			String sql = "update friends_info set name=?,sex=?,relation=? where relate_id=?";
			pt = conn.prepareStatement(sql);
			pt.setString(1, name);
			pt.setString(2, sex);
			pt.setString(3, relation);
			pt.setInt(4, relate_id);
			pt.executeUpdate();
			result=true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBUtil.freeResoures(null, pt, conn);
		}
		return result;
		
	}
}
