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
<title>登録商品一覧</title>
</head>
<body>

<div id="header">
	<div id="pr"></div>
</div>


<div id="main">
	<div id="top">
	   <p>ItemList</p>
	 </div>
	 <div>
	 	<s:if test="itemList==null">
	 		<h3>商品情報はありません。</h3>
	 	</s:if>
		<s:elseif test="message==null">
			<h3>商品情報は以下になります。</h3>
			<table>
				<tr class="table-head">
					<th>商品名</th>
					<th>値段</th>
					<th>在庫数</th>
					<th>登録日</th>
				</tr>
				<s:iterator value="itemList">
					<tr>
						<td><s:property value="itemName"/></td>
						<td><s:property value="itemPrice"/></td>
						<td><s:property value="itemStock"/></td>
						<td><s:property value="insert_date"/></td>
					</tr>
				</s:iterator>
			<tr>
		   		<td><input type="button" value="登録履歴削除" onclick="submitAction('ItemListDeleteConfirmAction.java')"/></td>
	   		</tr>
			</table>
		</s:elseif>
		<s:if test="message!=null">
			<h3><s:property value="message"/></h3>
		</s:if>
		<div id="text-right">
	 		<p>Homeへ戻る場合は<a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
	 		<p>ログアウトする場合は<a href='<s:url action="LoginAction"/>'>こちら</a></p>
		</div>
	 </div>
</div>


<div id="footer">
	<div id="pr"></div>
</div>

</body>
</html>