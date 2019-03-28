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
<title>Login画面</title>

<link rel="stylesheet" type="text/css" href="./css/style.css">
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
	   <p>login</p>
	 </div>
	 <div>
	 <h3>商品を購入する際にはログインをおねがいします。</h3>
	 <s:form action="LoginAction">
	   <s:textfield name="loginUserId"/>
	   <s:password name="loginPassword"/>
	   <s:submit value="ログイン"/>
	 </s:form>
	 <br>
	 <div>
	 	<span>新規ユーザ登録は
	 		<a href='<s:url action="UserCreateAction"/>'>こちら</a>
	 	</span>
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




