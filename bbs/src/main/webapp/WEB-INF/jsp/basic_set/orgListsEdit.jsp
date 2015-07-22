<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div class="easyui-panel" style="border-bottom: none;">
<style type="text/css">
.tableOrg {
    border-collapse: inherit;
    margin: 0;
    padding: 0;
}
.tableOrg th{
    background: url("theme/1/images/tab0.gif") repeat-x scroll 0 0 rgba(0, 0, 0, 0);
    font-weight: normal;
    line-height: 28px;
    padding-left: 10px;
    text-align: left;
}
</style>
<table width="100%" border="0" cellspacing="0" class="tableOrg">
	<tr>
		<th width="5%" style="padding-left: 10px;border: 1px solid #D2D6D7;border-bottom: none;border-right: none;">&nbsp;</th>
		<th width="30%" style="padding-left: 10px;border: 1px solid #D2D6D7;border-bottom: none;border-left: none;border-right: none;">序号</th>
		<th width="50%" style="padding-left: 10px;border: 1px solid #D2D6D7;border-bottom: none;border-left: none;">名称</th>
	</tr>
</table>	
</div>
<div id="orgLists" class="easyui-panel" style="height: 360px;overflow: auto;border-top: none;">
<table id="orgs" width="100%" border="0" cellspacing="0" cellpadding="0" class="table0">
	<c:forEach items="${orgList}" var="orgs" varStatus="o">
	<tr>
		<td width="5%"><input type="checkbox" name="checkbox" onclick="itemClick(this)" checked="checked"><input name="orgList[${o.index}].organizationId" value="${orgs.organizationId}" type="hidden"/></td>
		<td style="display: none;">${o.count}</td>
		<td width="30%"><input type="hidden" value="${orgs.sort}" name="orgList[${o.index}].sort" id="sort${orgs.sort}"/>
		<span name="orgList[${o.index}].sort" id="sort${orgs.sort}">${orgs.sort}</span></td>
		<td width="50%"><input type="text" value="${orgs.name}" name="orgList[${o.index}].name" id="name${orgs.sort}"></td>
	</tr>
	</c:forEach>
</table>
</div>

<script type="text/javascript">
var flag = true;
$(function(){
		$("#confirmSet").click(function(){
		$("#update").empty();
		$("#delete").empty();
		//拼装选中的checkbox的数据
		var checkboxs = $("#orgs").find("input:checked");
		$(checkboxs).each(function(index,domEle){
			$("#update").append("<div>"+$(domEle).parent().parent().html()+"</div>");
		});
		//拼装未选中的checkbox的数据
		var checkboxswqy = $("#orgs").find("input[type='checkbox']:not(:checked)");
		$(checkboxswqy).each(function(index,domEle){
			var delHtml = $(domEle).parent().parent().html();
			var nDelHtml = delHtml.replaceAll("orgList","orgListDel");
			$("#delete").append("<div>"+nDelHtml+"</div>");
		});
		$("#delete > div:last-child").remove();//移除最后一行空行
		//提交数据
		if(checkEmpty()){
			$("#orgDate").ajaxSubmit({
				type:"post",
				dataType:"json",
				success:function(data){
					$("#organization").panel("refresh","listsOrg.action");
				},
				error : exceptionMsg
			}); 
		}
	});
	//页面初始化完毕加上最后一行空行
	var count = $("#orgs").find("tr:last").find("td:eq(2)").children().text();
	$("#orgs").append("<tr><td><input name='checkbox' onclick='itemClick(this)' type='checkbox'></td><td style='display: none;'>"+(parseInt(count)+1)+"</td><td><span name='orgList["+(parseInt(count))+"].sort' id='sort"+(parseInt(count)+1)+"'>"+(parseInt(count)+1)+"</span><input type='hidden' value='"+(parseInt(count)+1)+"' name='orgList["+(parseInt(count))+"].sort' id='sort"+(parseInt(count)+1)+"'/></td><td><input value='' disabled='disabled' type='text' id='name"+(parseInt(count)+1)+"' name='orgList["+(parseInt(count))+"].name'></td></tr>");
	setVal();
});
String.prototype.replaceAll = function(s1,s2) { 
    return this.replace(new RegExp(s1,"gm"),s2); 
};
//checkbox的点击事件
function itemClick(cb){
	var checkboxs = $("#orgs").find("input[type='checkbox']");
	var checkedNum = 0;//未被选中的checked个数
	$(checkboxs).each(function(index, domEle){
		if($(domEle).attr("checked")=="checked"){
			checkedNum++;
		}
	});
	var count = $("#orgs").find("tr:last").find("td:eq(2)").children().text();//最后一行的编号
	var $tds = $(cb).parent().parent().find("input[type='text']");
	window.setTimeout("document.getElementById('"+$tds.attr("id")+"').focus();", 10);
	if($tds.size() != 0 && $(cb).attr("checked")=="checked"){
		$tds.removeAttr("disabled");
	}else{
		$tds.attr("disabled","disabled");
	}
	//如果点击事件是最后一行再追加新的空行
	var cot = $(cb).parent().parent().find("span").text();
	if(count == cot){
		$("#orgs").append("<tr><td><input name='checkbox' onclick='itemClick(this)' type='checkbox'></td><td style='display: none;'>"+(parseInt(count)+1)+"</td><td><span name='orgList["+(parseInt(count))+"].sort' id='sort"+(parseInt(count)+1)+"'>"+(parseInt(count)+1)+"</span><input type='hidden' value='"+(parseInt(count)+1)+"' name='orgList["+(parseInt(count))+"].sort' id='sort"+(parseInt(count)+1)+"'/></td><td><input value='' disabled='disabled' type='text' id='name"+(parseInt(count)+1)+"' name='orgList["+(parseInt(count))+"].name'></td></tr>");
		setVal();
	}
}
//页面判空
function checkEmpty(){
	var nameInput = $("#update input[name*='.name']");
	var emp = true;
	$(nameInput).each(function(index,domEle){
		if($.trim($(this).val()).length==0){
			$.showFMsgBox("该字段不能为空！");
			window.setTimeout("document.getElementById('"+$(this).attr("id")+"').focus();", 10);
			emp = false;
			if($(this).attr("disabled")=="disabled"){
				emp = true;
			}
		}
	});
	return emp;
}
//消息对话框
function exceptionMsg(jqXHR){
	var errorObj = JSON.parse(jqXHR.responseText);
	if(errorObj.msg){
		var errorMessage = errorObj.msg;			
		$.showFMsgBox(errorMessage);
	}else{
		$.showFMsgBox("操作失败!");
	}
}
//input焦点事件
function setVal(){
	$("#orgs").find("input[type='text']").each(function(index,domEle){
		$(this).blur(function(){
			$(this).attr("value",$(this).val());
		});
	});
}
</script>

<div class="tabbottom">

<form id="orgDate" style="display: none;" action="toAddUpdate.action">
<div id="update"></div>
<div id="delete"></div>
</form>

			<span class="icon-ok" style="cursor: pointer;" id="confirmSet">确认设置</span>
		</div>
		<div class="tShow">
			<p>提示：</p>
			<p>1、要添加新的部门请勾选复选框并填入部门名称；</p>
			<p>2、如果需要删除某部门则取消勾选复选框；</p>
			<p>3、删除部门并不会删除用户等其他信息。</p>
		</div>
