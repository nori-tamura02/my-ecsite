<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css"/>
<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>
<link rel="stylesheet" type="text/css" href="./css/style.css">


<title>管理者画面</title>

<style>
</style>
</head>
<body>

<div id="header">
	<div id="pr"></div>
</div>


<div id="main">
	<div id="top">
	   <p>管理者画面</p>
	 </div>

	 <!--商品  -->
	 <div class="admin-main">
		 <div class="left">
		 <p>商品一覧</p>
			 <s:if test="errorMessage!=">
	   <s:property value="errorMessage" escape="false"/>
	 </s:if>
	 <table>
	 	<tr>
	 		<td>
	 			<a href='<s:url action="ItemCreateAction"/>'>新規登録</a>
	 		</td>
	 	</tr>
	 	<tr>
	 		<td>
	 			<a href='<s:url action="ItemListAction"/>'>一覧</a>
	 		</td>
	 	</tr>
	 </table>
		 </div>

		 <!--ユーザー -->
		 <div class="right">
		 <p>ユーザー</p>
			 <s:if test="errorMessage!=">
	   <s:property value="errorMessage" escape="false"/>
	 </s:if>
	 <table>
	 	<tr>
	 		<td>
	 			<a href='<s:url action="UserCreateAction"/>'>新規登録</a>
	 		</td>
	 	</tr>
	 	<tr>
	 		<td>
	 			<a href='<s:url action="UserListAction"/>'>一覧</a>
	 		</td>
	 	</tr>
	 </table>
		 </div>
	 </div>
</div>

<div id="footer">
	<div id="pr"></div>
</div>

</body>
</html>