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
		<th width="30%" style="padding-left: 10px;border: 1px solid #D2D6D7;border-bottom: none;border-right: none;">序号</th>
		<th width="50%" style="padding-left: 10px;border: 1px solid #D2D6D7;border-bottom: none;border-left: none;">名称</th>
	</tr>
</table>	
</div>	
<div id="orgLists" class="easyui-panel" style="height: 360px;overflow: auto;border-top: none;">
<table id="orgs" width="100%" border="0" cellspacing="0" cellpadding="0" class="table0">
	<c:forEach items="${orgList}" var="orgs" varStatus="o">
	<tr count="${o.count}">
		<td width="30%">${orgs.sort}<input name="orgList[${o.index}].organizationId" value="${orgs.organizationId}" type="hidden"/></td>
		<td width="50%">${orgs.name}</td>
	</tr>
	</c:forEach>
</table>
</div>
<div class="tabbottom">
		<span class="icon-ok" style="cursor: pointer;" id="orgSet">部门设置</span>
		</div>
		<div class="tShow">
			<p>提示：</p>
			<p>1、要添加新的部门请勾选复选框并填入部门名称；</p>
			<p>2、如果需要删除某部门则取消勾选复选框；</p>
			<p>3、删除部门并不会删除用户等其他信息。</p>
		</div>
		
<script type="text/javascript">
$(function(){
	alert("s1s");
	$("#orgSet").click(function(){
		alert("ss");
		$("#organization").panel("refresh","toEdit.action");
	});
});
</script>

