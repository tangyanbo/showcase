<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<script type="text/javascript">
<!--
	$(document).ready(function() {
		$("#addNewBtn").click(function() {
			$("#new").show();
			$("input[name='studentTypeName']").focus();
		});
		$("input[name='studentTypeName']").blur(function() {
			if($(this).val() == "") {
				$("#new").hide();
			} else {
				$.ajax({
					url : "addStudentType.action",
					type : "post",
					data : {"studentType.name" : $("input[name='studentTypeName']").val()},
					dataType : "JSON",
					success : function(){
						$("#studentTypeList").load("toStudentTypes.action");
					},
					error : function(){
						$.showFMsgBox("学生类型名称已存在！", 2000);
					}
				});
			}
		});
		$("a[typeId]").click(function(){
			var studentTypeId = $(this).attr("typeId");
			var oldName = $("td[typeId=" + studentTypeId + "]").html();
			$("td[typeId=" + studentTypeId + "]").html("<input type='text' typeId='" + studentTypeId + "' id='updateName' oldName='" + oldName + "' value='" + oldName + "'/>");
			$("#updateName").focus();
		});
		$(document).on("blur", "#updateName", function(){
			var oldName = $(this).attr("oldName");
			var newName = $(this).val();
			var studentTypeId = $(this).attr("typeId");
			if(newName == "" || oldName == newName){
				$("td[typeId=" + studentTypeId + "]").html(oldName);
			}else{
				$.ajax({
					url : "updateStudentType.action",
					type : "post",
					data : {"studentType.studentTypeId" : studentTypeId, "studentType.name" : newName},
					dataType : "JSON",
					success : function(){
						$("#studentTypeList").load("toStudentTypes.action");
					},
					error : function(){
						$.showFMsgBox("学生类型名称已存在！", 2000);
						$("#updateName").focus();
					}
				});
			}
		});
		$("a[studentTypeId]").click(function() {
			var studentTypeId = $(this).attr("studentTypeId");
			$.confirm("删除学生类型","确认删除该学生类型吗？",function() {
				$.ajax({
					url : "deleteStudentType.action",
					type : "post",
					data : {"studentType.studentTypeId" : studentTypeId},
					dataType : "JSON",
					success : function(){
						$("#studentTypeList").load("toStudentTypes.action");
					},
					error : function(){
						$.showFMsgBox("该学生类型下有成员！", 2000);
					}
				});
			});
		});
	});
//-->
</script>
<div class="nav">
	<a class="icon_add_grade spanType" id="addNewBtn"  title="添加学生类型"></a>
</div>
<table width="98%" border="0" cellspacing="0" cellpadding="0" class="user_table">
  <tr class="tab1_tit">
    <th scope="col" style="width:25%">序号</th>
    <th scope="col" class="wide2">学生类型</th>
    <th scope="col" style="width:25%">操作</th>
  </tr>
 <c:forEach items="${studentTypes}" var="studentType" varStatus="st">
  	<tr>
  		<td>${st.index + 1 }</td>
  		<td typeId="${studentType.studentTypeId }">${studentType.name }</td>
  		<td>
			<a typeId="${studentType.studentTypeId }" href="javascript:void(0);" title="编辑学生类型"><img src="theme/${theme}/images/letter1.gif" width="15" height="16" border="0"></a>
			<a class="delete"  studentTypeId="${studentType.studentTypeId }" href="javascript:void(0);" title="删除学生类型"><img src="theme/${theme}/images/icon_11.gif" width="12" height="12" border="0"></a>
		</td>
  	</tr>
  </c:forEach>
　<tr id="new" style="display : none">
	<td></td>
	<td>
		<input type="text" name="studentTypeName" placeholder="请输入学生类型"/>
	</td>
	<td></td>
　</tr>
</table>