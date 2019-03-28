package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.ecsite.dto.ItemListDTO;
import com.internousdev.ecsite.util.DBConnector;

public class ItemListDAO {

	private DBConnector db = new DBConnector();
	private Connection con = db.getConnection();

	public ArrayList<ItemListDTO>getItemListInfo
	()throws
	SQLException{
		ArrayList<ItemListDTO>itemListDTO=new ArrayList<ItemListDTO>();
		String sql = "SELECT * FROM item_info_transaction "
				+ "ORDER BY insert_date DESC";
	try{
		PreparedStatement ps = con.prepareStatement(sql);
		System.out.println(ps);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			ItemListDTO dto = new ItemListDTO();
			dto.setId(rs.getString("id"));
			dto.setItemName(rs.getString("item_name"));
			dto.setItemPrice(rs.getString("item_price"));
			dto.setItemStock(rs.getString("item_stock"));
			dto.setInsert_date(rs.getString("insert_date"));
			itemListDTO.add(dto);
			System.out.println(dto);
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally {
		con.close();
	}
	return itemListDTO;
	}
	//delete文
	public int itemListHistoryDelete()throws SQLException{
		String sql = "DELETE FROM item_info_transaction";
		PreparedStatement ps;
		int rs = 0;
		try{
			ps = con.prepareStatement(sql);
			rs = ps.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
		}finally {
			con.close();
		}
		return rs;
	}

}
