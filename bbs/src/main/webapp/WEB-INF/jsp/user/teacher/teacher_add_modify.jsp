<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<jsp:include page="../../common/head_tag.jsp" />
<script type="text/javascript" src="<c:url value='/js/basic-set/user-set.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/jquery.validation/additional-methods.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/msgbox.js'/>"></script>
<script type="text/javascript">
<!--
	$(document).ready(function() {
		$("#userAddForm").validate({
			rules : {
				"user.account" : {
					required : true,
					maxlength : 20,
					"uniqueCheck" : {
						"checkUrl" : "userAccountCheck.action",
						"paramName" : "user.account",
						"paramValue" : $("input[name='user.account']").val()
					}
				},
				"user.name" : {
					required : true,
					maxlength : 10
				},
				"user.password" : {
					minlength : 6
				},
				"user.idNumber" : "idCard",
				"user.communication.email" : "email",
				"user.communication.address" : {
					maxlength : 30
				},
				"user.communication.mobileNumber1" : "phone",
				"user.communication.mobileNumber2" : "phone",
				"user.communication.qq" : {
					digits : true
				}
			},
			messages : {
				"user.account" : {
					required : "账号不能为空"
				},
				"user.name" : "请输入合法姓名",
				"user.password" : "密码必须为6位以上",
				"user.idNumber" : "请输入合法的身份证号"
			},
			errorPlacement: function(error, element) {
				errorPlacement(error, element);
			}
		});
	});
//-->
</script>
<div>
	<form id="userAddForm">
		<s:hidden name="user.userId"></s:hidden>
		<ul class="add_form">
			<li>
				<div class="item">
					<strong>*</strong>
					帐号
				</div>
				&nbsp;&nbsp;
				<span id="">
					<s:textfield name="user.account" disabled="user.account!=null" maxlength="20"></s:textfield>
					<div class="remind">请使用英文、数字、下划线等字符</div>
				</span><br/>
				
			</li>
			<li style=" color:#ff0000; font-family: Verdana;line-height:20px;
				vertical-align:middle;">
					<span errorFor="user.account" style="padding-left:108px;">
					
					</span>
			</li>
			
			<li>
				<div class="item">
					<strong>*</strong>
					姓名
				</div>
				&nbsp;&nbsp;
				<span id="">
					<s:textfield name="user.name" maxlength="20"></s:textfield>
					<div class="remind">请使用英文、中文、数字、下划线等字符</div>
				</span>
			</li>
			<li style=" color:#ff0000; font-family: Verdana;line-height:20px;
				vertical-align:middle;">
					<span errorFor="user.name" style="padding-left:108px;">
					
					</span>
			</li>
			<li>
				<div class="item">
					<%-- <s:if test="user==null"><strong>*</strong></s:if> --%>
					密码
				</div>
				&nbsp;&nbsp;
				<span>
					<input type="password" name="user.password" <s:if test="user.password!=null">value="******"</s:if> onchange="javascript:$(this).data('changed','changed')" />
					<div class="remind">密码长度6位以上（不填则跟帐号相同）</div>
				</span>
			</li>
			<li style="color:#ff0000; font-family: Verdana;line-height:20px;
				vertical-align:middle;">
					<span errorFor="user.password" style="padding-left:108px;">
					
					</span>
			</li>
			<li>
				<div class="item">
					性别
				</div>
				&nbsp;&nbsp;
				<span id="">
					<s:select name="user.sex" list="sexItems" listKey="value" listValue="name"></s:select>
				</span>
			</li>
			<li style="color:#ff0000; font-family: Verdana;line-height:20px;
				vertical-align:middle;">
					<span errorFor="user.sex" style="padding-left:108px; ">
					
					</span>
			</li>
		</ul>
		<div class="add_more">
			<h1><a href="#">填写教师其他信息</a><span>[选填]</span></h1>
		</div>
		<div style="padding-left:60px">
			<table>
				<tr height="30">
					<td>身份证号</td>  
					<td>
						<s:textfield name="user.idNumber"/><br/>
						<span errorFor="user.idNumber" style="color:#ff0000; font-family: Verdana;"></span>
					</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td>电子邮件</td>  
					<td>
						<s:textfield name="user.communication.email"/><br/>
						<span errorFor="user.communication.email" style="color:#ff0000; font-family: Verdana;"></span>
					</td>
				</tr>
				<tr height="30">
					<td>家庭住址</td>  
					<td>
						<s:textfield name="user.communication.address"/><br/>
						<span errorFor="user.communication.address" style="color:#ff0000; font-family: Verdana;"></span>
					</td>
					<td></td>
					<td>手机号1</td>  
					<td>
						<s:textfield name="user.communication.mobileNumber1"/><br/>
						<span errorFor="user.communication.mobileNumber1" style="color:#ff0000; font-family: Verdana;"></span>
					</td>
				</tr>	
				<tr height="30">
					<td>手机号1</td>  
					<td>
						<s:textfield name="user.communication.mobileNumber2"/><br/>
						<span errorFor="user.communication.mobileNumber2" style="color:#ff0000; font-family: Verdana;"></span>
					</td>
					<td></td>
					<td>QQ号</td>  
					<td>
						<s:textfield name="user.communication.qq"/><br/>
						<span errorFor="user.communication.qq" style="color:#ff0000; font-family: Verdana;"></span>
					</td>
				</tr>
				
			</table>
		</div>
		<div style="clean:both"></div>
	</form>
</div>