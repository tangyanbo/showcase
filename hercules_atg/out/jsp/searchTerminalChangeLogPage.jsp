<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/common/base.jsp"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>证大财富统一支付管理系统</title>
		<meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<%@ include file="/common/jsCssInclude.jsp"%>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	</head>
<body class="easyui-layout">
			<!--搜索栏开始-->
			<div class="easyui-panel" title="查询条件" style="padding:5px;height:120px;margin: 0px;" data-options="region:'north'">
				<form id="searchForm" name="searchForm" method="post" >
					<table cellpadding="5">
														<td>id</td>
								<td>
									<input type="text" id="search_id" name="search_id" class="easyui-textbox" value="${search_id}"/>
								</td>
								<td>terminal_id</td>
								<td>
									<input type="text" id="search_terminal_id" name="search_terminal_id" class="easyui-textbox" value="${search_terminal_id}"/>
								</td>
								<td>org_sub_mer_id</td>
								<td>
									<input type="text" id="search_org_sub_mer_id" name="search_org_sub_mer_id" class="easyui-textbox" value="${search_org_sub_mer_id}"/>
								</td>
								<td>org_mer_sys_id</td>
								<td>
									<input type="text" id="search_org_mer_sys_id" name="search_org_mer_sys_id" class="easyui-textbox" value="${search_org_mer_sys_id}"/>
								</td>
								<td>org_login_name</td>
								<td>
									<input type="text" id="search_org_login_name" name="search_org_login_name" class="easyui-textbox" value="${search_org_login_name}"/>
								</td>
								<td>org_login_pwd</td>
								<td>
									<input type="text" id="search_org_login_pwd" name="search_org_login_pwd" class="easyui-textbox" value="${search_org_login_pwd}"/>
								</td>
								<td>org_version</td>
								<td>
									<input type="text" id="search_org_version" name="search_org_version" class="easyui-textbox" value="${search_org_version}"/>
								</td>
								<td>change_date</td>
								<td>
									<input type="text" id="search_change_date" name="search_change_date" class="easyui-textbox" value="${search_change_date}"/>
								</td>
								<td>change_desc</td>
								<td>
									<input type="text" id="search_change_desc" name="search_change_desc" class="easyui-textbox" value="${search_change_desc}"/>
								</td>
								<td>reserved</td>
								<td>
									<input type="text" id="search_reserved" name="search_reserved" class="easyui-textbox" value="${search_reserved}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_terminalChangeLog" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'ID',width:120,sortable:'true',align:'left'">id</th>
							<th data-options="field:'TERMINAL_ID',width:120,sortable:'true',align:'left'">terminal_id</th>
							<th data-options="field:'ORG_SUB_MER_ID',width:120,sortable:'true',align:'left'">org_sub_mer_id</th>
							<th data-options="field:'ORG_MER_SYS_ID',width:120,sortable:'true',align:'left'">org_mer_sys_id</th>
							<th data-options="field:'ORG_LOGIN_NAME',width:120,sortable:'true',align:'left'">org_login_name</th>
							<th data-options="field:'ORG_LOGIN_PWD',width:120,sortable:'true',align:'left'">org_login_pwd</th>
							<th data-options="field:'ORG_VERSION',width:120,sortable:'true',align:'left'">org_version</th>
							<th data-options="field:'CHANGE_DATE',width:120,sortable:'true',align:'left'">change_date</th>
							<th data-options="field:'CHANGE_DESC',width:120,sortable:'true',align:'left'">change_desc</th>
							<th data-options="field:'RESERVED',width:120,sortable:'true',align:'left'">reserved</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var terminalChangeLog_list ={};
var toolbar = [{
				id : 'search_btn',
				text : '查询',
				iconCls : 'icon-search'
			},'-',{
				id : 'clear_btn',
				text : '清除',
				iconCls : 'icon-remove'
			}];
jQuery(function($){
	//定义构造查询
	terminalChangeLog_list.buildQueryParams=function(){
	    $('#dg_terminalChangeLog').datagrid({
			queryParams: {
						 'search_id':$("input[name='search_id']").val(),
						 'search_terminal_id':$("input[name='search_terminal_id']").val(),
						 'search_org_sub_mer_id':$("input[name='search_org_sub_mer_id']").val(),
						 'search_org_mer_sys_id':$("input[name='search_org_mer_sys_id']").val(),
						 'search_org_login_name':$("input[name='search_org_login_name']").val(),
						 'search_org_login_pwd':$("input[name='search_org_login_pwd']").val(),
						 'search_org_version':$("input[name='search_org_version']").val(),
						 'search_change_date':$("input[name='search_change_date']").val(),
						 'search_change_desc':$("input[name='search_change_desc']").val(),
						 'search_reserved':$("input[name='search_reserved']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		terminalChangeLog_list.buildQueryParams();
		$('#dg_terminalChangeLog').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_id']").val("");
			$("input[name='search_terminal_id']").val("");
			$("input[name='search_org_sub_mer_id']").val("");
			$("input[name='search_org_mer_sys_id']").val("");
			$("input[name='search_org_login_name']").val("");
			$("input[name='search_org_login_pwd']").val("");
			$("input[name='search_org_version']").val("");
			$("input[name='search_change_date']").val("");
			$("input[name='search_change_desc']").val("");
			$("input[name='search_reserved']").val("");
		terminalChangeLog_list.buildQueryParams();
		$('#dg_terminalChangeLog').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addTerminalChangeLogFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'TERMINAL_CHANGE_LOG',
		    width: 800,
		    height: 500,
		    href: 'addTerminalChangeLogPage.action',
		    modal: true,
		    method: "POST",
		    extractor: function(data){
		    	var bodyPattern = /<body[^>]*>((.|[\n\r])*)<\/body>/im;
				var contentPattern = /<article\s+id="content"[^>]*>((.|[\n\r])*)<\/article>/im;
				var scriptPattern = /<script[^>]*>(.|[\n\r\t])*?<\/script>/gim;
				var buttonPattern = /<div\s+class="button-field[\s\w]*"[^>]*>(.|[\n\r\t])*?<\/div>/im;
				var matches = bodyPattern.exec(data);
				if (matches){
					var content = matches[1].match(contentPattern);
				    var scripts = matches[1].match(scriptPattern);
					return (content[1]||"").replace(scriptPattern,"").replace(buttonPattern,"") + (scripts||[]).join("");
				} else {
					return data;
				}
			},
			onClose: function(){
				$(this).dialog("destroy");
			},
		    buttons: [{
		    	text: "提  交",
		    	handler: function(e){
		    		$('#addTerminalChangeLogFrom').form({   
						 url:'addTerminalChangeLogAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									terminalChangeLog_list.buildQueryParams();
									$('#dg_terminalChangeLog').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    //validate and sbumit
					    if($(add_form_id).form("validate")==true){
						  	$.messager.progress();
							$(add_form_id).submit();
						};   
		    	}
		    },{
		    	text: "取 消",
		    	handler: function(e){
		    		$(this).dialog("close");
		    	}
		    }]
		});
	});
	
	//更新
	terminalChangeLog_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editTerminalChangeLogFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'TerminalChangeLog',
		    width: 800,
		    height: 500,
		    href: 'editTerminalChangeLogPage.action',
		    modal: true,
		    method: "POST",
		    params:{pkid:pkid},
		    extractor: function(data){
		    	var bodyPattern = /<body[^>]*>((.|[\n\r])*)<\/body>/im;
				var contentPattern = /<article\s+id="content"[^>]*>((.|[\n\r])*)<\/article>/im;
				var scriptPattern = /<script[^>]*>(.|[\n\r\t])*?<\/script>/gim;
				var buttonPattern = /<div\s+class="button-field[\s\w]*"[^>]*>(.|[\n\r\t])*?<\/div>/im;
				var matches = bodyPattern.exec(data);
				if (matches){
					var content = matches[1].match(contentPattern);
				    var scripts = matches[1].match(scriptPattern);
					return (content[1]||"").replace(scriptPattern,"").replace(buttonPattern,"") + (scripts||[]).join("");
				} else {
					return data;
				}
			},
			onClose: function(){
				$(this).dialog("destroy");
			},
		    buttons: [{
		    	text: "保  存",
		    	handler: function(e){
		   				$('#editTerminalChangeLogFrom').form({   
						 url:'editTerminalChangeLogAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									terminalChangeLog_list.buildQueryParams();
									$('#dg_terminalChangeLog').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    //validate and sbumit
					    if($(edit_form_id).form("validate")==true){
						  	$.messager.progress();
							$(edit_form_id).submit();
						};   
		    		
		    	}
		    }
		    ,{
		    	text: "删  除",
		     	handler: function(e){
		     			$('#delTerminalChangeLogFrom').form({   
						 url:'delTerminalChangeLogAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									terminalChangeLog_list.buildQueryParams();
									$('#dg_terminalChangeLog').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delTerminalChangeLogFrom').submit();
		    	}
		     }
		    ,{
		    	text: "取 消",
		    	handler: function(e){
		    		$(this).dialog("close");
		    	}
		    }]
		});
	}
	
	//详细
	terminalChangeLog_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细TerminalChangeLog',
		    width: 800,
		    height: 500,
		    href: 'detailTerminalChangeLogPage.action',
		    modal: true,
		    method: "POST",
		    params:{pkid:pkid},
		    extractor: function(data){
		    	var bodyPattern = /<body[^>]*>((.|[\n\r])*)<\/body>/im;
				var contentPattern = /<article\s+id="content"[^>]*>((.|[\n\r])*)<\/article>/im;
				var scriptPattern = /<script[^>]*>(.|[\n\r\t])*?<\/script>/gim;
				var buttonPattern = /<div\s+class="button-field[\s\w]*"[^>]*>(.|[\n\r\t])*?<\/div>/im;
				var matches = bodyPattern.exec(data);
				if (matches){
					var content = matches[1].match(contentPattern);
				    var scripts = matches[1].match(scriptPattern);
					return (content[1]||"").replace(scriptPattern,"").replace(buttonPattern,"") + (scripts||[]).join("");
				} else {
					return data;
				}
			},
			onClose: function(){
				$(this).dialog("destroy");
			},
		    buttons: [{
		    	text: "提  交",
		    	handler: function(e){
		    		var ThisForm = $(this).find("form");
		    	}
		    },{
		    	text: "关闭",
		    	handler: function(e){
		    		$(this).dialog("close");
		    	}
		    }]
		});
	}
	
	
});

</script>
</body>
</html>