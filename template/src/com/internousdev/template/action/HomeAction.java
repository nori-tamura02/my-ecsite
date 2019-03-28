package com.internousdev.template.action;

import com.opensymphony.xwork2.ActionSupport;

public class HomeAction  extends ActionSupport{
	public String execute(){
		return SUCCESS;
//		executeメソッドを実行したあとは"SUCCESS"文字列を返します。
	}
}
