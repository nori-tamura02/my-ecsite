package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.UserListDAO;
import com.internousdev.ecsite.dto.UserListDTO;
import com.opensymphony.xwork2.ActionSupport;

public class UserListAction extends ActionSupport implements SessionAware {

	public Map<String,Object>session;
	private UserListDAO userListDAO=new UserListDAO();
	private ArrayList<UserListDTO>userList=new ArrayList<UserListDTO>();
	private String deleteFlg;
	private String message;

	public String execute()throws SQLException{
		if(deleteFlg==null){
			userList=userListDAO.getUserListInfo();
		}else if(deleteFlg.equals("1")){
			delete();
		}
		String result=SUCCESS;
		return result;
	}

	//delete文
	public void delete()throws SQLException{

	}


	public Map<String, Object> getSession() {
		return session;
	}
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public UserListDAO getUserListDAO() {
		return userListDAO;
	}
	public void setUserListDAO(UserListDAO userListDAO) {
		this.userListDAO = userListDAO;
	}

	public ArrayList<UserListDTO> getUserList() {
		return userList;
	}
	public void setUserList(ArrayList<UserListDTO> userList) {
		this.userList = userList;
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


