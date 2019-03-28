package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.ecsite.dto.UserListDTO;
import com.internousdev.ecsite.util.DBConnector;

public class UserListDAO {

	private DBConnector db = new DBConnector();
	private Connection con = db.getConnection();

	public ArrayList<UserListDTO>getUserListInfo
	()throws
	SQLException{
		ArrayList<UserListDTO>userListDTO=new ArrayList<UserListDTO>();
		String sql = "SELECT *"
				+ " FROM login_user_transaction "
				+ "ORDER BY insert_date DESC";
		try{
			PreparedStatement ps = con.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				UserListDTO dto = new UserListDTO();
				dto.setId(rs.getString("id"));
				dto.setLoginId(rs.getString("login_id"));
				dto.setLoginPass(rs.getString("login_pass"));
				dto.setUserName(rs.getString("user_name"));
				dto.setInsert_date(rs.getString("insert_date"));
				userListDTO.add(dto);
			}

		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
		return userListDTO;
	  }

	/*ここに削除するメソッドを記入する*/

}
