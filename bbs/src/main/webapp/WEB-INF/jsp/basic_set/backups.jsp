<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/theme/${theme}/css/difference.css'/>" />
<jsp:include page="../common/head_tag.jsp" />
<style type="text/css">
	.backups_content table{ width:97%; border-collapse:collapse; margin:5px 0px 0px 5px;}
	.backups_content table td{ border:1px solid #797979; height:25px; line-height:25px; padding-left:5px;}
</style>	
<script src="js/jquery.blockUI.js"></script>
<script type="text/javascript">
	jQuery(function($){
		initBasicTab(8);
		$("#nextStep").click(function(){
			window.location.href = "showGraduateClass.action";
		});
		$(document).ajaxStart(function(){
			$.blockUI({"message" : "<div class='icon_waiting'><h1>正在进行备份升级，请稍等...</h1></div>"});
		});
		$(document).ajaxStop(function(){
			$.unblockUI();
		});
		
		$("#confirmBackup").click(function(){
			$.confirm("备份升级","升级后数据将无法还原，确认进行备份升级吗？",function(){
				$.ajax({
				      url: "confirmBackup.action",
				      type: "POST",
				      dataType: "text",
				      data: $("#form").serialize(),
				      success: function(text){
				    	  $.showSMsgBox("备份升级成功",3000);
				    	  setTimeout(function(){window.location.href = 'toBackup.action';}, 5000);
				      },
				      error : function(jqXHR, textStatus, errorThrown) {
							$.showFMsgBox("备份升级失败");
					}
				   });
			});
		});
		
		$("#prompt").click(function(){
			$.showSMsgBox("设置了毕业年级才能备份升级");
		});

	});

</script>
<title>备份升级</title>
</head>
<body>
<div id="basicTab" style="padding-bottom:20px;">
<jsp:include page="basicset_header.jsp" />

<div class="backups_content">

	<c:if test="${stageVO == null}">
		<ul>
	    	<li>毕业年级会自动毕业，当前年度：${currentYear}，升级后年度：${nextYear}</li>
	        <li>下一届的班级会自动升一级</li>
	        <li>升级后班级的个数以及之间班级的人员保持不变，以前的班级信息会保存到历史数据中。</li>
	        <li>班级和年度会自动升级</li>
	    </ul>
    </c:if>
    <form id="form">
    <c:if test="${stageVO != null}">
    	<h3 align="center" style="margin:5px 0px 0px 5px;">毕业年级</h3>
    	<table width="100%" border="0" cellspacing="0" cellpadding="0" >
    		<tr class="example_tit_bj">
    			<td>学段</td>
    			<td>年级</td>
    			<td>毕业班操作</td>
    		</tr>
    		<c:forEach items="${stageVO}" var="stage" varStatus="status">
    			<tr>
    				<td>${stage.name}</td>
    				<td>
    					<c:forEach items="${stage.graduateGrade}" var="grade">
    						${grade.name}&nbsp;&nbsp;
    					</c:forEach>
    				</td>
    				<c:if test="${stage.stageId != 4 && fn:length(stage.graduateGrade) > 0}">
    					<td>
    					<input type="hidden" name="stageVO[${status.index}].stageId" value="${stage.stageId}"/>
    					<input type="radio"  name="stageVO[${status.index}].graduateType" value="leave" checked="true"/>离校
    					<input type="radio"  name="stageVO[${status.index}].graduateType" value="notLeave"/>不离校
    					</td>
    				</c:if>
    				<c:if test="${stage.stageId == 4 && stage.isGraduateGrade}">
    					<input type="hidden"  name="stageVO[${status.index}].graduateType" value="leave"/>
    					<td>&nbsp;&nbsp;&nbsp;离校</td>
    				</c:if>
    			</tr>
    		</c:forEach>
    	</table><br/>
    	<h3>注意：</h3>
    	<span>离校：学生设置为离校状态(能查看历史记录)</span><br/>
    	<span>不离校：在校状态，并设为未分班状态</span><br/>
    	<span>如果没有设置毕业年级将无法备份升级</span><br/><br/>
    	<a href="toGraduateGrade.action" style="color:blue">设置毕业年级</a>
    </c:if>
    </form>
</div>
<div class="row">
	<c:if test="${stageVO == null}">
  		<input id="nextStep" name="" type="button" value="下一步" class="btn_upgrade"/>
  	</c:if>
  	<c:if test="${stageVO != null && fn:length(stageVO) > 0}">
  		<c:if test="${isGradeup}">
  			<input id="confirmBackup" name="" type="button" value="确定升级" class="btn_upgrade"/>
  		</c:if>
  		<c:if test="${!isGradeup}">
  			<input id="prompt" name="" type="button" value="没有设置对应的毕业年级"  class="btn_upgrade"/>
  		</c:if>
  	</c:if>
  </div>
  <div id="success"></div>
  </div>
</body>
</html>