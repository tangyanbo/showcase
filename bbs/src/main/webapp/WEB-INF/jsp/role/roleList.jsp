<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta charset="utf-8">
<title>权限管理</title>
<link rel="stylesheet" type="text/css" href="theme/1/jquery-easyui-themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="theme/1/css/srtabs.css">
<link rel="stylesheet" type="text/css" href="theme/1/jquery-easyui-themes/icon.css">
<link rel="stylesheet" type="text/css" href="theme/1/css/table.css">
<link rel="stylesheet" type="text/css" href="theme/1/css/icons.css">
<link rel="stylesheet" type="text/css" href="theme/1/css/style.css">
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	$(function(){
		//跳转到添加页面
		$(".icon-user").click(function(){
			window.location.href = "toRoleAdd.action";
		});
		
		//删除
		$("#del").click(function(){
			var roles = $("[name='roleIds']:checked");
			if(roles.length==0){
				$.messager.alert("提示","请选择角色！");
				return false;
			}
			for(var i=0;i<roles.length;i++){
				var role = $(roles[i]);
				if(role.attr("roleType")=='内置角色'){
					$.messager.alert("提示","内置角色不能删除！");
					return false;
				}
			}
			$("#RoleForm").submit();
		});
		
		//跳转到修改页面
		$(".icon-edit").click(function(){
			var roleId = $(this).attr("roleId");
			window.location.href = "toRoleModify.action?role.roleId="+roleId;
		});
	});
</script>

</head>

<body>
<form id="RoleForm" action="deleteRole.action" method="post">
<div class="sr_tabs">
    <div class="easyui-tabs">
        <div title="角色授权" style="padding:10px 40px">
        	<div class="tabtop"><span class="icon-user rfloat">新增角色</span></div>
           <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table0">
              <tr>
                <th width="50">&nbsp;</th>
                <th width="200">角色名称
                	
                </th>
                <th width="60">类型</th>
                <th>角色描述</th>
                <th width="140">是否激活</th>
                <th width="110">操作</th>
              </tr>
              
              <c:forEach items="${roleList}" var="role">
              	<tr>
                	<td><input name="roleIds" type="checkbox" value="${role.roleId}" roleType="${role.type }"></td>
                	<td>${role.name}
                	
                	</td>
                	<td>${role.type }</td>
                	<td>${role.comment}</td>
                	<td>${role.status}</td>
                	<td><span class="icon icon-edit" roleId="${role.roleId}"></span></td>
              	</tr>
              </c:forEach>
              
              
            </table>
			<div class="tabfoot">
			
			<button id="del" class="del" type="button">删除</button>
			
			<button class="wpai">委派</button><button class="suod">锁定</button><button class="jhuo">激活</button></div>
        </div>
        <div title="组织授权" style="padding:10px">
           <!--------------------------------------------->
        <div class="easyui-accordion" style="width:180px;">
            <div title="部门" data-options="iconCls:'icon-people'" style="overflow:auto;padding:10px;"> 
            	<ul class="leleUI">
                	<li><input type="checkbox">校长室</li>
                    <li><input type="checkbox">教务处</li>
                    <li><input type="checkbox">教导处</li>
                    <li><input type="checkbox">组织人事处</li>
                    <li><input type="checkbox">学生处</li>
                </ul>
            </div>
            <div title="年级" data-options="iconCls:'icon-people'" style="padding:10px;">         
            </div>
            <div title="教研组" data-options="iconCls:'icon-people'" style="padding:10px;">    
            </div>
        </div>
           <!----------------------------------------------->
        </div>
        <div title="权限一览表"  style="padding:10px">
        	<ul class="easyui-tree" ></ul>
        </div>
    </div>
</div>
</form>
</body>
</html>
