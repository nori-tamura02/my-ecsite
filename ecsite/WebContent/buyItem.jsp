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
<title>BuyItem画面</title>
</head>
<body>

<!-- header -->
<div id="header">
	<div id="pr"></div>
</div>
<!-- header -->

<!-- main -->
<div id="main">
	<div id="top">
	   <p>BuyItem</p>
	 </div>
	 <div>
	 <s:form action="BuyItemAction">
	   <table>

	   	<tr>
	   		<td>
	   			<span>商品名</span>
	   		</td>
	   		<td>
	   			<s:property value="session.buyItem_name"/>
	   		</td>
	   	</tr>
	   	<tr>
	   		<td>
	   			<span>値段</span>
	   		</td>
	   		<td>
	   			<s:property value="session.buyItem_price"/>
	   			<span>円</span>
	   		</td>
	   	</tr>
	   	<tr>
	   		<td>
	   			<span>購入個数</span>
	   		</td>
	   		<td>
	   			<select name="count">
	   				<option value="1" selected="selected">1</option>
	   					<option value="2">2</option>
	   					<option value="3">3</option>
	   					<option value="4">4</option>
	   					<option value="5">5</option>
	   					<option value="6">6</option>
	   					<option value="7">7</option>
	   					<option value="8">8</option>
	   					<option value="9">9</option>
	   					<option value="10">10</option>
	   					<option value="20">20</option>
	   					<option value="50">50</option>
	   					<option value="100">100</option>
	   			</select>
	   		</td>
	   	</tr>
	   	<tr>
	   		<td>
	   			<span>支払い方法</span>
	   		</td>
	   		<td>
	   			<input type="radio" name="pay" value="1" checked="checked">現金払い
	   			<input type="radio" name="pay" value="2">クレジットカード
	   		</td>
	   	</tr>
	   	<tr>
	   		<td>
	   			<s:submit value="購入"/>
	   		</td>
	   	</tr>
	   </table>
	   </s:form>
	   <div>
	   		<p>前画面に戻る場合は
	   		<a href='<s:url action="GoHomeAction"/>'>こちら</a>
	   		</p>
	   		<p>マイページは
	   		<a href='<s:url action="MyPageAction"/>'>こちら</a>
	   		</p>
	   </div>
	 </div>
</div>
<!-- mein -->

<!-- footer -->
<div id="footer">
	<div id="pr"></div>
</div>
<!-- footer -->

</body>
</html>