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
								<td>login_name</td>
								<td>
									<input type="text" id="search_login_name" name="search_login_name" class="easyui-textbox" value="${search_login_name}"/>
								</td>
								<td>login_pwd</td>
								<td>
									<input type="text" id="search_login_pwd" name="search_login_pwd" class="easyui-textbox" value="${search_login_pwd}"/>
								</td>
								<td>department</td>
								<td>
									<input type="text" id="search_department" name="search_department" class="easyui-textbox" value="${search_department}"/>
								</td>
								<td>real_name</td>
								<td>
									<input type="text" id="search_real_name" name="search_real_name" class="easyui-textbox" value="${search_real_name}"/>
								</td>
								<td>phone</td>
								<td>
									<input type="text" id="search_phone" name="search_phone" class="easyui-textbox" value="${search_phone}"/>
								</td>
								<td>email</td>
								<td>
									<input type="text" id="search_email" name="search_email" class="easyui-textbox" value="${search_email}"/>
								</td>
								<td>level</td>
								<td>
									<input type="text" id="search_level" name="search_level" class="easyui-textbox" value="${search_level}"/>
								</td>
								<td>band_ip</td>
								<td>
									<input type="text" id="search_band_ip" name="search_band_ip" class="easyui-textbox" value="${search_band_ip}"/>
								</td>
								<td>level_pwd</td>
								<td>
									<input type="text" id="search_level_pwd" name="search_level_pwd" class="easyui-textbox" value="${search_level_pwd}"/>
								</td>
								<td>purview</td>
								<td>
									<input type="text" id="search_purview" name="search_purview" class="easyui-textbox" value="${search_purview}"/>
								</td>
								<td>last_login_time</td>
								<td>
									<input type="text" id="search_last_login_time" name="search_last_login_time" class="easyui-textbox" value="${search_last_login_time}"/>
								</td>
								<td>login_times</td>
								<td>
									<input type="text" id="search_login_times" name="search_login_times" class="easyui-textbox" value="${search_login_times}"/>
								</td>
								<td>last_login_ip</td>
								<td>
									<input type="text" id="search_last_login_ip" name="search_last_login_ip" class="easyui-textbox" value="${search_last_login_ip}"/>
								</td>
								<td>status</td>
								<td>
									<input type="text" id="search_status" name="search_status" class="easyui-textbox" value="${search_status}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>reserved</td>
								<td>
									<input type="text" id="search_reserved" name="search_reserved" class="easyui-textbox" value="${search_reserved}"/>
								</td>
								<td>report_email</td>
								<td>
									<input type="text" id="search_report_email" name="search_report_email" class="easyui-textbox" value="${search_report_email}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_sysManager" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'ID',width:120,sortable:'true',align:'left'">id</th>
							<th data-options="field:'LOGIN_NAME',width:120,sortable:'true',align:'left'">login_name</th>
							<th data-options="field:'LOGIN_PWD',width:120,sortable:'true',align:'left'">login_pwd</th>
							<th data-options="field:'DEPARTMENT',width:120,sortable:'true',align:'left'">department</th>
							<th data-options="field:'REAL_NAME',width:120,sortable:'true',align:'left'">real_name</th>
							<th data-options="field:'PHONE',width:120,sortable:'true',align:'left'">phone</th>
							<th data-options="field:'EMAIL',width:120,sortable:'true',align:'left'">email</th>
							<th data-options="field:'LEVEL',width:120,sortable:'true',align:'left'">level</th>
							<th data-options="field:'BAND_IP',width:120,sortable:'true',align:'left'">band_ip</th>
							<th data-options="field:'LEVEL_PWD',width:120,sortable:'true',align:'left'">level_pwd</th>
							<th data-options="field:'PURVIEW',width:120,sortable:'true',align:'left'">purview</th>
							<th data-options="field:'LAST_LOGIN_TIME',width:120,sortable:'true',align:'left'">last_login_time</th>
							<th data-options="field:'LOGIN_TIMES',width:120,sortable:'true',align:'left'">login_times</th>
							<th data-options="field:'LAST_LOGIN_IP',width:120,sortable:'true',align:'left'">last_login_ip</th>
							<th data-options="field:'STATUS',width:120,sortable:'true',align:'left'">status</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'RESERVED',width:120,sortable:'true',align:'left'">reserved</th>
							<th data-options="field:'REPORT_EMAIL',width:120,sortable:'true',align:'left'">report_email</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var sysManager_list ={};
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
	sysManager_list.buildQueryParams=function(){
	    $('#dg_sysManager').datagrid({
			queryParams: {
						 'search_id':$("input[name='search_id']").val(),
						 'search_login_name':$("input[name='search_login_name']").val(),
						 'search_login_pwd':$("input[name='search_login_pwd']").val(),
						 'search_department':$("input[name='search_department']").val(),
						 'search_real_name':$("input[name='search_real_name']").val(),
						 'search_phone':$("input[name='search_phone']").val(),
						 'search_email':$("input[name='search_email']").val(),
						 'search_level':$("input[name='search_level']").val(),
						 'search_band_ip':$("input[name='search_band_ip']").val(),
						 'search_level_pwd':$("input[name='search_level_pwd']").val(),
						 'search_purview':$("input[name='search_purview']").val(),
						 'search_last_login_time':$("input[name='search_last_login_time']").val(),
						 'search_login_times':$("input[name='search_login_times']").val(),
						 'search_last_login_ip':$("input[name='search_last_login_ip']").val(),
						 'search_status':$("input[name='search_status']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_reserved':$("input[name='search_reserved']").val(),
						 'search_report_email':$("input[name='search_report_email']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		sysManager_list.buildQueryParams();
		$('#dg_sysManager').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_id']").val("");
			$("input[name='search_login_name']").val("");
			$("input[name='search_login_pwd']").val("");
			$("input[name='search_department']").val("");
			$("input[name='search_real_name']").val("");
			$("input[name='search_phone']").val("");
			$("input[name='search_email']").val("");
			$("input[name='search_level']").val("");
			$("input[name='search_band_ip']").val("");
			$("input[name='search_level_pwd']").val("");
			$("input[name='search_purview']").val("");
			$("input[name='search_last_login_time']").val("");
			$("input[name='search_login_times']").val("");
			$("input[name='search_last_login_ip']").val("");
			$("input[name='search_status']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_reserved']").val("");
			$("input[name='search_report_email']").val("");
		sysManager_list.buildQueryParams();
		$('#dg_sysManager').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addSysManagerFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'SYS_MANAGER',
		    width: 800,
		    height: 500,
		    href: 'addSysManagerPage.action',
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
		    		$('#addSysManagerFrom').form({   
						 url:'addSysManagerAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									sysManager_list.buildQueryParams();
									$('#dg_sysManager').datagrid('load');
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
	sysManager_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editSysManagerFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'SysManager',
		    width: 800,
		    height: 500,
		    href: 'editSysManagerPage.action',
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
		   				$('#editSysManagerFrom').form({   
						 url:'editSysManagerAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									sysManager_list.buildQueryParams();
									$('#dg_sysManager').datagrid('load');
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
		     			$('#delSysManagerFrom').form({   
						 url:'delSysManagerAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									sysManager_list.buildQueryParams();
									$('#dg_sysManager').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delSysManagerFrom').submit();
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
	sysManager_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细SysManager',
		    width: 800,
		    height: 500,
		    href: 'detailSysManagerPage.action',
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