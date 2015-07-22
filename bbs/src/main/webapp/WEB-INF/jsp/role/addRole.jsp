<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>新增角色</title>
<link rel="stylesheet" type="text/css" href="theme/1/jquery-easyui-themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="theme/1/jquery-easyui-themes/icon.css">
<link rel="stylesheet" type="text/css" href="theme/1/css/common.css">
<link rel="stylesheet" type="text/css" href="theme/1/css/srtabs.css">
<link rel="stylesheet" type="text/css" href="theme/1/css/table.css">
<link rel="stylesheet" type="text/css" href="theme/1/css/icons.css">
<link rel="stylesheet" type="text/css" href="theme/1/css/style.css">
<link rel="stylesheet" type="text/css" href="theme/1/css/ztree/zTreeStyle.css"/>


<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="js/ztree/jquery.ztree.all-3.5.js"></script>
<script type="text/javascript" src="js/role/categoryTree.js"></script>
<script type="text/javascript">
	$(function(){
		//取消请求
		$("#cancelRequest").click(function(){
			window.location.href = "toRoleList.action";
		});
		
		//加载权限树
		$.getJSON("getCategoryListJson.action",function(nodes){
			categoryTree = $("#categoryTree").categoryTree(nodes);	
			categoryTree.expandAll(true);
		});
		
		//提交按钮
		$("#submit").click(function(){
			var nodes = categoryTree.getCheckedNodes(true);
			var categoryIds = new Array();
			for(var i=0 ;i<nodes.length;i++){
				categoryIds.push(nodes[i].categoryId);
			}
			
			var roleName = $("#roleName").val();
			var roleStatus = $("#roleStatus").val();
			if(roleName == ""){
				$.messager.alert("提示","请填写角色名称！");
				return false;
			}
			
			$.ajax({
				url : "addRole.action",
				type : "POST",
				data : {
					"role.name" : roleName,
					"role.status" : roleStatus,
					"role.comment" : $("#roleComment").val(),
					"categoryIds" : categoryIds.toString()
				},
				success:function(){
					window.location.href = "toRoleList.action";
				}
			});			
		});
		
		//展开全部
		$("#expandAll").click(function(){
			categoryTree.expandAll(true);
		});
		
		//折叠全部
		$("#collapseAll").click(function(){
			categoryTree.expandAll(false);
		});
	});
</script>

</head>

<body>
<form action="addRole.action" method="post">
<div class="sr_tabs">
    <div class="easyui-tabs">
        <div title="角色授权" style="padding:10px 40px">
        <div class="jsMain">
            <div class="jsLeft">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table0">
                  <tr>
                    <td colspan="2" class="tddeeefd"><strong>新增角色</strong></td>
                  </tr>
                  <tr>
                    <td width="75" align="center" class="tdc1e0fd"><font class="fontRed">*</font>角色名称</td>
                    <td class="tddeeefd">
                    	<s:textfield name="role.name" id="roleName"></s:textfield>
                    </td>
                  </tr>
                  <tr>
                    <td align="center" class="tdc1e0fd"><font class="fontRed">*</font>是否激活</td>
                    <td class="tddeeefd">
                    	<s:radio list="#{'是':'是','否':'否'}" name="role.status" value="'是'" id="roleStatus"></s:radio>
                  </tr>
                  <tr>
                    <td align="center" class="tdc1e0fd">角色描述</td>
                    <td valign="middle" class="tddeeefd">
                    	<s:textarea name="role.comment" id="roleComment"></s:textarea>
                    </td>
                  </tr>
                </table>
                </div>
			<div class="jsRight" style="overflow: auto;">
            	<div id="categoryTree" class="ztree" style="height:400px;"></div>
            </div>
           <div class="clear"></div>
          </div>
           <div class="tabfoot"><div class="t_foot">
           <button class="save" type="button" id="submit">保存</button>
           <button id="cancelRequest" class="cancel" type="button">取消</button>
           <button class="unfold" id="expandAll" type="button">展开</button>
           <button class="shrink" id="collapseAll" type="button">收缩</button>
           
           </div></div>
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
        	<ul class="ztree" style="height:500px;">
					
			</ul>
        </div>
    </div>
</div>
</form>
</body>
</html>
