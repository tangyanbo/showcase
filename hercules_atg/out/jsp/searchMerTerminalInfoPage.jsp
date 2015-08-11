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
								<td>mer_sys_id</td>
								<td>
									<input type="text" id="search_mer_sys_id" name="search_mer_sys_id" class="easyui-textbox" value="${search_mer_sys_id}"/>
								</td>
								<td>category</td>
								<td>
									<input type="text" id="search_category" name="search_category" class="easyui-textbox" value="${search_category}"/>
								</td>
								<td>terminal_code</td>
								<td>
									<input type="text" id="search_terminal_code" name="search_terminal_code" class="easyui-textbox" value="${search_terminal_code}"/>
								</td>
								<td>terminal_systerm</td>
								<td>
									<input type="text" id="search_terminal_systerm" name="search_terminal_systerm" class="easyui-textbox" value="${search_terminal_systerm}"/>
								</td>
								<td>file_name</td>
								<td>
									<input type="text" id="search_file_name" name="search_file_name" class="easyui-textbox" value="${search_file_name}"/>
								</td>
								<td>version</td>
								<td>
									<input type="text" id="search_version" name="search_version" class="easyui-textbox" value="${search_version}"/>
								</td>
								<td>version_desc</td>
								<td>
									<input type="text" id="search_version_desc" name="search_version_desc" class="easyui-textbox" value="${search_version_desc}"/>
								</td>
								<td>update_type</td>
								<td>
									<input type="text" id="search_update_type" name="search_update_type" class="easyui-textbox" value="${search_update_type}"/>
								</td>
								<td>update_path</td>
								<td>
									<input type="text" id="search_update_path" name="search_update_path" class="easyui-textbox" value="${search_update_path}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>status</td>
								<td>
									<input type="text" id="search_status" name="search_status" class="easyui-textbox" value="${search_status}"/>
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
				<table  id="dg_merTerminalInfo" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'ID',width:120,sortable:'true',align:'left'">id</th>
							<th data-options="field:'MER_SYS_ID',width:120,sortable:'true',align:'left'">mer_sys_id</th>
							<th data-options="field:'CATEGORY',width:120,sortable:'true',align:'left'">category</th>
							<th data-options="field:'TERMINAL_CODE',width:120,sortable:'true',align:'left'">terminal_code</th>
							<th data-options="field:'TERMINAL_SYSTERM',width:120,sortable:'true',align:'left'">terminal_systerm</th>
							<th data-options="field:'FILE_NAME',width:120,sortable:'true',align:'left'">file_name</th>
							<th data-options="field:'VERSION',width:120,sortable:'true',align:'left'">version</th>
							<th data-options="field:'VERSION_DESC',width:120,sortable:'true',align:'left'">version_desc</th>
							<th data-options="field:'UPDATE_TYPE',width:120,sortable:'true',align:'left'">update_type</th>
							<th data-options="field:'UPDATE_PATH',width:120,sortable:'true',align:'left'">update_path</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'STATUS',width:120,sortable:'true',align:'left'">status</th>
							<th data-options="field:'RESERVED',width:120,sortable:'true',align:'left'">reserved</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var merTerminalInfo_list ={};
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
	merTerminalInfo_list.buildQueryParams=function(){
	    $('#dg_merTerminalInfo').datagrid({
			queryParams: {
						 'search_id':$("input[name='search_id']").val(),
						 'search_mer_sys_id':$("input[name='search_mer_sys_id']").val(),
						 'search_category':$("input[name='search_category']").val(),
						 'search_terminal_code':$("input[name='search_terminal_code']").val(),
						 'search_terminal_systerm':$("input[name='search_terminal_systerm']").val(),
						 'search_file_name':$("input[name='search_file_name']").val(),
						 'search_version':$("input[name='search_version']").val(),
						 'search_version_desc':$("input[name='search_version_desc']").val(),
						 'search_update_type':$("input[name='search_update_type']").val(),
						 'search_update_path':$("input[name='search_update_path']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_status':$("input[name='search_status']").val(),
						 'search_reserved':$("input[name='search_reserved']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		merTerminalInfo_list.buildQueryParams();
		$('#dg_merTerminalInfo').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_id']").val("");
			$("input[name='search_mer_sys_id']").val("");
			$("input[name='search_category']").val("");
			$("input[name='search_terminal_code']").val("");
			$("input[name='search_terminal_systerm']").val("");
			$("input[name='search_file_name']").val("");
			$("input[name='search_version']").val("");
			$("input[name='search_version_desc']").val("");
			$("input[name='search_update_type']").val("");
			$("input[name='search_update_path']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_status']").val("");
			$("input[name='search_reserved']").val("");
		merTerminalInfo_list.buildQueryParams();
		$('#dg_merTerminalInfo').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addMerTerminalInfoFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'MER_TERMINAL_INFO',
		    width: 800,
		    height: 500,
		    href: 'addMerTerminalInfoPage.action',
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
		    		$('#addMerTerminalInfoFrom').form({   
						 url:'addMerTerminalInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									merTerminalInfo_list.buildQueryParams();
									$('#dg_merTerminalInfo').datagrid('load');
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
	merTerminalInfo_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editMerTerminalInfoFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'MerTerminalInfo',
		    width: 800,
		    height: 500,
		    href: 'editMerTerminalInfoPage.action',
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
		   				$('#editMerTerminalInfoFrom').form({   
						 url:'editMerTerminalInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									merTerminalInfo_list.buildQueryParams();
									$('#dg_merTerminalInfo').datagrid('load');
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
		     			$('#delMerTerminalInfoFrom').form({   
						 url:'delMerTerminalInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									merTerminalInfo_list.buildQueryParams();
									$('#dg_merTerminalInfo').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delMerTerminalInfoFrom').submit();
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
	merTerminalInfo_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细MerTerminalInfo',
		    width: 800,
		    height: 500,
		    href: 'detailMerTerminalInfoPage.action',
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