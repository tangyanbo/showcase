<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="<c:url value='/theme/${theme}/css/common.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/theme/${theme}/css/page.css'/>" />
<title>无标题文档</title>
<script type="text/javascript">
	$(document).ready(function() {
		$("#passwordInputDiv input").focusin(function() {
			$("#passwordInputDiv input").removeClass("pass_input2");
			$(this).addClass("pass_input2");
		});
		$("input[name='newPassword_r']").focusout(checkNewPassword);
	});
	function checkNewPassword() {
		if($("input[name='newPassword_r']").val() != $("input[name='newPassword']").val()) {
			$(".different").show();
			$(".passwordLength").hide();
			return false;
		} else {
			$(".different").hide();
			return true;
		}
	}
	function checkPasswordLength(){
		var correctLength = true;
		$("input").each(function() {
			if($(this).val().length < 6) {
				$(".different").hide();
				$(this).nextAll(".passwordLength").show();
				correctLength = false;
			} else {
				$(this).nextAll(".passwordLength").hide();
			}
		});
		return correctLength;
	}
</script>
</head>

<body>
<form>
<div class="teachersGroup">
	<div class="detailContent" id="passwordInputDiv">
		<div class="pass_title">
           <div class="pass_title_name">旧密码：</div>
           <div class="pass_title_box"><input name="oldPassword" type="password" class="pass_input" /><p class="errorPassword" style="display : none;">密码错误</p><p class="passwordLength" style="display : none;">密码必须为6位以上</p></div>
        </div>
        <div class="pass_title">
           <div class="pass_title_name">新密码：</div>
           <div class="pass_title_box"><input name="newPassword" type="password" class="pass_input" /><p class="different" style="display : none;">两次输入的密码不一致</p><p class="passwordLength" style="display : none;">密码必须为6位以上</p></div>
        </div>
        <div class="pass_title" >
           <div class="pass_title_name">确认新密码：</div>
           <div class="pass_title_box"><input name="newPassword_r" type="password" class="pass_input" /><p class="different" style="display : none;">两次输入的密码不一致</p><p class="passwordLength" style="display : none;">密码必须为6位以上</p></div>
        </div>
	</div>
</div>
</form>
</body>
</html>
