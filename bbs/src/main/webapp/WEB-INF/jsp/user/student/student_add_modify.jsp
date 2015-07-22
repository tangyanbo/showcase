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
				"user.studentNumber" : {
					required : true,
					maxlength : 20,
					uniqueCheck : {
						"checkUrl" : "userStudentNumberCheck.action",
						"paramName" : "user.studentNumber",
						"paramValue" : $("input[name='user.studentNumber']").val()
					}
				},
				"user.account" : {
					required : true,
					maxlength : 20,
					uniqueCheck : {
						"checkUrl" : "userAccountCheck.action",
						"paramName" : "user.account",
						"paramValue" : $("input[name='user.account']").val()
					}
				},
				"user.parent.account" : {
					required : true,
					maxlength : 20,
					uniqueCheck : {
						"checkUrl" : "userAccountCheck.action",
						"paramName" : "user.account",
						"paramValue" : $("input[name='user.parent.account']").val()
					}
				},
				"user.name" : {
					required : true,
					maxlength : 20
				},
				"user.password" : {
					minlength : 6
				},
				"user.idNumber" : "idCard",
				"user.communication.email" : "email",
				"user.communication.address" : {
					maxlength : 50
				},
				"user.communication.mobileNumber1" : "phone",
				"user.communication.mobileNumber2" : "phone",
				"user.communication.qq" : {
					digits : true
				}
			},
			messages : {
				"user.studentNumber" : {
					required : "学号不能为空"
				},
				"user.account" : {
					required : "账户不能为空"
				},
				"user.name" : "请输入合法姓名",
				"user.password" : "密码必须为6位以上",
				"user.idNumber" : "请输入合法的身份证号"
			},
			errorPlacement: function(error, element) {
				errorPlacement(error, element);
			}
		});
		$("#user_clazz_grade_gradeId").change(function() {
			changeClasses($(this).val());
		});
		$("#user_account").blur(function(){
			if($("#user_account").val()!=''){
			$("#user_parent_account").val("jz_"+$("#user_account").val());
			}
		});
		<c:if test="${bzr && not empty user.userId}">
			$("input[type!='password']","#userAddForm").attr("disabled",true);
			$("select","#userAddForm").attr("disabled",true);
		</c:if>
		<c:if test="${empty user && not empty classes}">
			$("#gradeLi").remove();
		</c:if>
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
				<span style="margin-left:15px;">
					<s:textfield name="user.account" maxlength="20" disabled="user.account!=null"></s:textfield>
				</span>
				<span style="margin-left:15px;">
					<strong style="color:red;">*</strong>
					家长帐号
				</span>
				<span style="margin-left:15px;">
					<s:textfield name="user.parent.account" maxlength="20" disabled="user.parent.account!=null"></s:textfield><span errorFor="user.parent.account" style="color:#ff0000;" >
					</span>
				</span>
			</li>
			<li style="color:#ff0000; font-family: Verdana;line-height:20px;
				vertical-align:middle;">
					<span errorFor="user.account" style="padding-left:108px;">
					</span>
			</li>
			<li>
				<div class="item">
					<strong>*</strong>
					学号
				</div>
				<span style="margin-left:15px;">
					<s:textfield name="user.studentNumber" maxlength="20" ></s:textfield>
				</span>
				<span style="margin-left:15px;">
					家长姓名
				</span>
				<span style="margin-left:15px;">
					<s:textfield name="user.parent.name" maxlength="20" ></s:textfield>
				</span>
			</li>
			<li style="color:#ff0000; font-family: Verdana;line-height:20px;
				vertical-align:middle;">
					<span errorFor="user.studentNumber" style="padding-left:108px; ">
					
					</span>
			</li>
			<li>
				<div class="item">
					<strong>*</strong>
					姓名
				</div>
				<span style="margin-left:15px;">
					<s:textfield name="user.name" maxlength="20" ></s:textfield>
				</span>
				<span style="margin-left:15px;">
					家长密码
				</span>
				<span style="margin-left:15px;">
					<input type="password" name="user.parent.password" maxlength="20" <s:if test="user.parent.password!=null">value="******"</s:if> />
				</span>
			</li>
			<li style="color:#ff0000; font-family: Verdana;line-height:20px;
				vertical-align:middle;">
					<span errorFor="user.name" style="padding-left:108px;">
					
					</span>
			</li>
			<li>
				<div class="item">
					密码
				</div>
				<span style="margin-left:15px;">
					<input type="password" name="user.password" <s:if test="user.password!=null">value="******"</s:if>  onchange="javascript:$(this).data('changed','changed')" />
				</span>
				<span style="margin-left:15px;">
					家长联系电话
				</span>
				<span style="margin-left:15px;">
					<s:textfield name="user.parent.communication.mobileNumber1" maxlength="20" ></s:textfield>
				</span>
			</li>
			<li style="color:#ff0000; font-family: Verdana;line-height:20px;
				vertical-align:middle;">
					<span errorFor="user.password" style="padding-left:108px; ">
					
					</span>
			</li>
			<li>
				<div class="item">
					性别
				</div>
				<span style="margin-left:15px;">
					<s:select name="user.sex" list="sexItems" listKey="value" listValue="name"></s:select>
				</span>
			</li>
			<li>
				<div class="item">
					学生类型
				</div>
				<span style="margin-left:15px;">
					<s:select name="user.studentType.studentTypeId" list="studentTypes" listKey="studentTypeId" listValue="name"></s:select>
				</span>
			</li>
			<li id="gradeLi">
				<div class="item">
					年级
				</div>
				<span  style="margin-left:15px;">
					<s:select name="user.clazz.grade.gradeId" list="grades" listKey="gradeId" listValue="name" headerKey="" headerValue="---请选择年级---"></s:select>
				</span>
			</li>
			
			<li>
				<div class="item">
					班级
				</div>
				<span style="margin-left:15px;">
					<s:select name="user.clazz.classId" list="classes" listKey="classId" listValue="name"></s:select>
				</span>
			</li>
		</ul>
		<div class="add_more">
			<h1><a href="#">填写学生信息</a><span>[选填]</span></h1>
			<!--  
			<ul class="add_more_info">
				<li><div>身份证号</div><s:textfield name="user.idNumber"></s:textfield></li>
				<li><div>电子邮件</div><s:textfield name="user.communication.email"></s:textfield></li>
				<li><div>家庭住址</div><s:textfield name="user.communication.address"></s:textfield></li>
				<li><div>家长手机1</div><s:textfield name="user.communication.mobileNumber1"></s:textfield></li>
				<li><div>家长手机2</div><s:textfield name="user.communication.mobileNumber2"></s:textfield></li>
				<li><div>QQ号</div><s:textfield name="user.communication.qq"></s:textfield></li>
			</ul>
			-->
		</div>
		<div style="padding-left:60px">
			<table>
				<tr height="30">
					<td>身份证号</td>  
					<td>
						<s:textfield name="user.idNumber" maxlength="18"/><br/>
						<span errorFor="user.idNumber" style="color:#ff0000; font-family: Verdana;"></span>
					</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td>电子邮件</td>  
					<td>
						<s:textfield name="user.communication.email" maxlength="30"/><br/>
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
					<td>家长手机1</td>  
					<td>
						<s:textfield name="user.communication.mobileNumber1"/><br/>
						<span errorFor="user.communication.mobileNumber1" style="color:#ff0000; font-family: Verdana;"></span>
					</td>
				</tr>	
				<tr height="30">
					<td>家长手机2</td>  
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