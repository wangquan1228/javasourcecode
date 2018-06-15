<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
 <head>
 
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
 
  <title></title>
  <style type="text/css">
		*{margin:0;padding:0;}
		.clear:after{content:"";display:block;clear:both;}
		.fl{float:left;}
		.fr{float:right;}
		a{text-decoration:none;}
		ul li{list-style:none;}
		.box{width:510px;border:1px solid #eee;margin:50px auto;background-color:000;}
		.box h1{text-align:center;margin:20px auto;}
		ul{border-bottom:1px dotted #acacac;margin:20px auto 0;padding:5px;}
		ul li{width:290px;font-size:20px; line-height:40px;border:1px solid #acacac;margin:5px auto;}
		ul li p{width:80px;text-align:center;}
		ul li input{line-height:40px;width:206px;}
		.bottom{width:290px;margin:5px auto 10px;}
		.bottom input{ width:70px;height:40px;margin:0 5px;}
		.bottom input:hover{background-color:#0066ff;}
 </style>
 </head>
 <body>
		<div class="box">
			<h1>欢迎加入我们</h1>
			<form method="post" action="addEmp">
			<ul class="clear" >
				<li class="clear">
				<p class="fl">姓名</p>
				<input type="text" name="username" class="fl" placeholder="请输入用户名"/>
				</li>
				<li class="clear">
				<p class="fl">账号</p>
				<input type="text" name="account" class="fl" placeholder="请输入账号"/>
				</li>
				<li class="clear">
				<p class="fl">密码</p>
				<input type="password" name="password" class="fl" placeholder="默认密码root,请及时修改"/>
				</li>
				<li class="clear">
				<p class="fl">电话</p>
				<input type="text" name="mobile" class="fl" placeholder="请输入电话号码"/>
				</li>
			</ul>
			<div id="" class="bottom clear">
				<input type="submit" value="提交" class="fr">
				<input type="reset"value="清空" class="fr">
			</div>
				
				
			</form>
		</div>
        <script type="text/javascript">
		
		</script>
 </body>
</html>
