<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="/struts-tags"  prefix="s" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>学校信息</title>
<link rel="stylesheet" type="text/css"
	href="js/SWFUpload/css/default.css" />
<jsp:include page="../common/head_tag.jsp" />
<script src="js/date/WdatePicker.js"></script>
<script src="js/SWFUpload/swfupload.js"></script>
<script src="js/SWFUpload/plugins/handlers.js"></script>
<script src="js/jquery.validation/additional-methods.js" type="text/javascript"></script>
<script src="js/selectusers.js"></script>
<script type="text/javascript">
$(function() {
	initBasicTab(0);
	$("#toUpdate").click(function(){
		$("#divButton").show();
		$("td[isUpdate=1]").each(function(){
			var t="";
			var inputType=$(this).attr('inputType');
			var size=$(this).attr('inputSize');
			var inputName=$(this).attr('inputName');
			var inputValue=$(this).text();
			if(inputType.search(/text|password/)>-1){
				t=$("<input type='"+inputType+"' size='"+size+"' name='"+inputName+"' value='"+inputValue+"' />");
			}else if(inputType.search("selectUserDIV")>-1){
				if("${user.userId}"==""){
					t=$("<div size='"+size+"' onclick='selectUser();' id='userDiv' style='border:1px solid #ccc;height:25px;color:#CCC;'>点击此处选择用户</div>");
				}else{
					t=$("<div size='"+size+"' onclick='selectUser();' id='userDiv' style='border:1px solid #ccc;height:25px;'>"+inputValue+"</div>");
				}
				
			}else if(inputType.search("date")>-1){
				t=$("<input size='"+size+"' name='"+inputName+"' type='text'  onclick=\"WdatePicker({dateFmt:'yyyy-MM-dd'})\" readonly='readonly' value='"+inputValue+"' />");
			}
			$(this).empty().append(t);
		});
		$("#toUpdate").unbind("click");
		$("#toUpdate").text("保存");
		$("#toUpdate").attr("id","toSave");
		$("#toSave").bind("click",function(){
			$("#save").validate({
				rules :{
					"schoolInfo.name" : {
						required: true,
						maxlength: 20
					},
					"schoolInfo.address" : {
						maxlength: 50
					},
					"schoolInfo.zipCode" : {
						zipCode:$("input[name='schoolInfo.zipCode']").val()
					},
					"schoolInfo.phone" : {
						phone:$("input[name='schoolInfo.phone']").val()
					},
					"schoolInfo.fax" : {
						maxlength: 20
					},
					"schoolInfo.website" : {
						url:true
					},
					"schoolInfo.email" : {
						email: true
					},
					"schoolInfo.froprovince" : {
						maxlength : 20
					}
				},
				messages : {
					"schoolInfo.name" : {
						required: "不能为空",
						maxlength: "20字以内"
					},
					"schoolInfo.address" : "50字以内",
					"schoolInfo.fax" : "20字以内",
					"schoolInfo.website" : "请输入合法的网址",
					"schoolInfo.email" : "请输入合法的邮箱",
					"schoolInfo.froprovince" : "20字以内"
				}
			});
			$("#save").submit();
		});
	});
	
	var settings = {
		upload_url : "${syFileUrl}/uploadNotSave.action",
		flash_url : "${syFileUrl}/js/SWFUpload/swfupload.swf",
		file_size_limit : "5 MB",
		file_post_name : "upload",
		post_params :{'fileInfo.belongTo':'basic','ftpId':'1','fileName':'login_Banner'},
		preserve_relative_urls: false,  //相对路径
		file_types : "*.jpg;*.gif;*.flv;*.swf",
		file_upload_limit : "0",
		file_queue_limit:1,
		custom_settings : {
			upload_target : "divFileProgressContainer"
		},
		debug: false,
		
		// Button settings
		button_image_url: "js/SWFUpload/images/TestImageNoText_65x29.png",
		button_width: "65",
		button_height: "29",
		button_window_mode: "Opaque",
		button_placeholder_id: "spanButtonPlaceHolder",
		button_text: '<span class="theFont">上传</span>',
		button_text_style: ".theFont { font-size: 12; }",
		button_text_left_padding: 12,
		button_text_top_padding: 3,

		// The event handler functions are defined in handlers.js
		file_queue_error_handler : fileQueueError,
		file_dialog_complete_handler : fileDialogComplete,
		upload_progress_handler : uploadProgress,
		upload_error_handler : uploadError,
		upload_success_handler : uploadSuccess,
		upload_complete_handler : uploadComplete

	};
	swfu = new SWFUpload(settings);
	
	function uploadSuccess(file, serverData) {
		try {
			var progress = new FileProgress(file,  this.customSettings.upload_target);
			$("#img").val(serverData);
			$("#schoolLogo").attr("src",serverData+"?t="+new Date());
			$("#divFileProgressContainer").hide();
			progress.toggleCancel(false);
		} catch (ex) {
			this.debug(ex);
		}
	}
	var userId="[${user.userId}]";
	selectUser=function(){
		$.selectUser(eval(userId),showUsers);
	};
	
	showUsers=function(users){
		if(users.length>1){
			alert("只允许选择一个人");
		}
		else{
			userId="["+users[0].userId+"]";
			$("#userDiv").html(users[0].name);
			$("input[name='user.userId']").val(users[0].userId);
		}
	};
	parent.indexIframeResize();
});
</script>
<style type="text/css">
#save label.error {	
	color: red;
	padding-top:5px;
	font-family: Verdana;
}
</style>
</head>
<body style="margin: 1px;">
		<div id="basicTab">
			<jsp:include page="basicset_header.jsp" />
			<form action="schoolInfoSet.action" id="save" method="post">
			<input type="hidden" name="schoolInfo.schoolId" value="${schoolInfo.schoolId }" />
			<input type="hidden" id="img" name="schoolInfo.img" value="${schoolInfo.img}" />
			<input type='hidden' name='user.userId' value='${user.userId}' />
			<div id="teacher">
				<table width="99%" class="user_table">
					<tr>
						<th colspan='2' style="text-align: center;">基本信息</th>
						<th>学校照片</th>
					</tr>
					<tr>
						<td align="right" width="15%">&nbsp;学校名称：</td>
						<td align="left" width="25%" isUpdate=1 inputType="text" inputSize=30 inputName="schoolInfo.name">${schoolInfo.name }</td>
						<td rowspan="10"><c:if test="${not empty schoolInfo.img}">
								<img
									src="${schoolInfo.img}?t=<%=new Date() %>"
									id="schoolLogo" width="578" height="271" align="top" />
							</c:if> <c:if test="${empty schoolInfo.img}">
								<img id="schoolLogo" src="theme/${theme}/images/f1.gif" width="578"
									height="271">
							</c:if>
							<div id="divFileProgressContainer"></div>
							<div id="divButton" style="display: none;">
								<span id="spanButtonPlaceHolder"></span>
							</div>
							</td>
					</tr>
					<tr valign="bottom">
						<td align="right">&nbsp;校长：</td>
						<td align="left" isUpdate=1 inputType="selectUserDIV" inputSize=15 inputName="user.name" >
						<c:if test="${! empty user }">${user.name }</c:if>
						</td>
					</tr>
					<tr valign="bottom">
						<td align="right">&nbsp;地址：</td>
						<td align="left" isUpdate=1 inputType="text" inputSize=50 inputName="schoolInfo.address">${schoolInfo.address }</td>
					</tr>
					<tr>
						<td align="right">&nbsp;邮编：</td>
						<td align="left" isUpdate=1 inputType="text" inputSize=20 inputName="schoolInfo.zipCode">${schoolInfo.zipCode }</td>
					</tr>
					<tr>
						<td align="right">&nbsp;座机：</td>
						<td align="left" isUpdate=1 inputType="text" inputSize=20 inputName="schoolInfo.phone">${schoolInfo.phone }</td>
					</tr>
					<tr>
						<td align="right">&nbsp;传真：</td>
						<td align="left" isUpdate=1 inputType="text" inputSize=20 inputName="schoolInfo.fax">${schoolInfo.fax }</td>
					</tr>
					<tr>
						<td align="right">&nbsp;网址：</td>
						<td align="left" isUpdate=1 inputType="text" inputSize=40 inputName="schoolInfo.website">${schoolInfo.website }</td>
					</tr>
					<tr>
						<td align="right">&nbsp;邮箱：</td>
						<td align="left" isUpdate=1 inputType="text" inputSize=20 inputName="schoolInfo.email">${schoolInfo.email }</td>
					</tr>
					<tr>
						<td align="right">&nbsp;校庆日：</td>
						<td align="left" isUpdate=1 inputType="date" inputSize=20 inputName="schoolInfo.xqr">${schoolInfo.xqr }</td>
					</tr>
					<tr>
						<td align="right" nowrap="nowrap">&nbsp;所在行政地区：</td>
						<td align="left" isUpdate=1 inputType="text" inputSize=20 inputName="schoolInfo.froprovince">${schoolInfo.froprovince}</td>
					</tr>
				</table>
				<FONT color="red"><s:actionerror/></FONT>
			</div>
			<div align="center">
				<span class="btn_bj" id="toUpdate">修改</span>
			</div>
			</form>
		</div>
		<br />
</body>
</html>
