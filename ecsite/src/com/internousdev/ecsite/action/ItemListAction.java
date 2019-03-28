package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.ItemListDAO;
import com.internousdev.ecsite.dto.ItemListDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemListAction extends ActionSupport implements SessionAware{

	public Map<String,Object>session;
	private ItemListDAO itemListDAO = new ItemListDAO();
	private ArrayList<ItemListDTO>itemList=new ArrayList<ItemListDTO>();
	private String deleteFlg;
	private String message;

		public String execute()throws SQLException{
			if (deleteFlg==null){
				itemList=itemListDAO.getItemListInfo();
			}else if(deleteFlg.equals("1")){
				delete();
			}
			String result=SUCCESS;
			return result;
		}

		//delete文
		public void delete()throws SQLException{
			int res=itemListDAO.itemListHistoryDelete();

			if(res > 0){
				itemList=null;
				setMessage("商品情報を正しく消去しました。");
			}else if( res == 0){
				setMessage("商品情報の消去に失敗しました。");
			}
		}


		public Map<String, Object> getSession() {
			return session;
		}
		public void setSession(Map<String, Object> session) {
			this.session = session;
		}

		public ItemListDAO getItemListDAO() {
			return itemListDAO;
		}
		public void setItemListDAO(ItemListDAO itemListDAO) {
			this.itemListDAO = itemListDAO;
		}

		public ArrayList<ItemListDTO> getItemList() {
			return itemList;
		}
		public void setItemList(ArrayList<ItemListDTO> itemList) {
			this.itemList = itemList;
		}

		public String getDeleteFlg() {
			return deleteFlg;
		}
		public void setDeleteFlg(String deleteFlg) {
			this.deleteFlg = deleteFlg;
		}

		public String getMessage() {
			return message;
		}
		public void setMessage(String message) {
			this.message = message;
		}


	}

