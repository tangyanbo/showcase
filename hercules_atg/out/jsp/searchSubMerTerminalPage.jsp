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
								<td>tsn</td>
								<td>
									<input type="text" id="search_tsn" name="search_tsn" class="easyui-textbox" value="${search_tsn}"/>
								</td>
								<td>factory</td>
								<td>
									<input type="text" id="search_factory" name="search_factory" class="easyui-textbox" value="${search_factory}"/>
								</td>
								<td>sub_mer_id</td>
								<td>
									<input type="text" id="search_sub_mer_id" name="search_sub_mer_id" class="easyui-textbox" value="${search_sub_mer_id}"/>
								</td>
								<td>mer_sys_id</td>
								<td>
									<input type="text" id="search_mer_sys_id" name="search_mer_sys_id" class="easyui-textbox" value="${search_mer_sys_id}"/>
								</td>
								<td>plat_mer_id</td>
								<td>
									<input type="text" id="search_plat_mer_id" name="search_plat_mer_id" class="easyui-textbox" value="${search_plat_mer_id}"/>
								</td>
								<td>version</td>
								<td>
									<input type="text" id="search_version" name="search_version" class="easyui-textbox" value="${search_version}"/>
								</td>
								<td>category</td>
								<td>
									<input type="text" id="search_category" name="search_category" class="easyui-textbox" value="${search_category}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>active_time</td>
								<td>
									<input type="text" id="search_active_time" name="search_active_time" class="easyui-textbox" value="${search_active_time}"/>
								</td>
								<td>last_update_time</td>
								<td>
									<input type="text" id="search_last_update_time" name="search_last_update_time" class="easyui-textbox" value="${search_last_update_time}"/>
								</td>
								<td>terminal_info</td>
								<td>
									<input type="text" id="search_terminal_info" name="search_terminal_info" class="easyui-textbox" value="${search_terminal_info}"/>
								</td>
								<td>login_name</td>
								<td>
									<input type="text" id="search_login_name" name="search_login_name" class="easyui-textbox" value="${search_login_name}"/>
								</td>
								<td>login_pwd</td>
								<td>
									<input type="text" id="search_login_pwd" name="search_login_pwd" class="easyui-textbox" value="${search_login_pwd}"/>
								</td>
								<td>last_login_time</td>
								<td>
									<input type="text" id="search_last_login_time" name="search_last_login_time" class="easyui-textbox" value="${search_last_login_time}"/>
								</td>
								<td>last_login_info</td>
								<td>
									<input type="text" id="search_last_login_info" name="search_last_login_info" class="easyui-textbox" value="${search_last_login_info}"/>
								</td>
								<td>status</td>
								<td>
									<input type="text" id="search_status" name="search_status" class="easyui-textbox" value="${search_status}"/>
								</td>
								<td>reserved</td>
								<td>
									<input type="text" id="search_reserved" name="search_reserved" class="easyui-textbox" value="${search_reserved}"/>
								</td>
								<td>agent_id_l1</td>
								<td>
									<input type="text" id="search_agent_id_l1" name="search_agent_id_l1" class="easyui-textbox" value="${search_agent_id_l1}"/>
								</td>
								<td>agent_id_l2</td>
								<td>
									<input type="text" id="search_agent_id_l2" name="search_agent_id_l2" class="easyui-textbox" value="${search_agent_id_l2}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_subMerTerminal" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'ID',width:120,sortable:'true',align:'left'">id</th>
							<th data-options="field:'TSN',width:120,sortable:'true',align:'left'">tsn</th>
							<th data-options="field:'FACTORY',width:120,sortable:'true',align:'left'">factory</th>
							<th data-options="field:'SUB_MER_ID',width:120,sortable:'true',align:'left'">sub_mer_id</th>
							<th data-options="field:'MER_SYS_ID',width:120,sortable:'true',align:'left'">mer_sys_id</th>
							<th data-options="field:'PLAT_MER_ID',width:120,sortable:'true',align:'left'">plat_mer_id</th>
							<th data-options="field:'VERSION',width:120,sortable:'true',align:'left'">version</th>
							<th data-options="field:'CATEGORY',width:120,sortable:'true',align:'left'">category</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'ACTIVE_TIME',width:120,sortable:'true',align:'left'">active_time</th>
							<th data-options="field:'LAST_UPDATE_TIME',width:120,sortable:'true',align:'left'">last_update_time</th>
							<th data-options="field:'TERMINAL_INFO',width:120,sortable:'true',align:'left'">terminal_info</th>
							<th data-options="field:'LOGIN_NAME',width:120,sortable:'true',align:'left'">login_name</th>
							<th data-options="field:'LOGIN_PWD',width:120,sortable:'true',align:'left'">login_pwd</th>
							<th data-options="field:'LAST_LOGIN_TIME',width:120,sortable:'true',align:'left'">last_login_time</th>
							<th data-options="field:'LAST_LOGIN_INFO',width:120,sortable:'true',align:'left'">last_login_info</th>
							<th data-options="field:'STATUS',width:120,sortable:'true',align:'left'">status</th>
							<th data-options="field:'RESERVED',width:120,sortable:'true',align:'left'">reserved</th>
							<th data-options="field:'AGENT_ID_L1',width:120,sortable:'true',align:'left'">agent_id_l1</th>
							<th data-options="field:'AGENT_ID_L2',width:120,sortable:'true',align:'left'">agent_id_l2</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var subMerTerminal_list ={};
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
	subMerTerminal_list.buildQueryParams=function(){
	    $('#dg_subMerTerminal').datagrid({
			queryParams: {
						 'search_id':$("input[name='search_id']").val(),
						 'search_tsn':$("input[name='search_tsn']").val(),
						 'search_factory':$("input[name='search_factory']").val(),
						 'search_sub_mer_id':$("input[name='search_sub_mer_id']").val(),
						 'search_mer_sys_id':$("input[name='search_mer_sys_id']").val(),
						 'search_plat_mer_id':$("input[name='search_plat_mer_id']").val(),
						 'search_version':$("input[name='search_version']").val(),
						 'search_category':$("input[name='search_category']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_active_time':$("input[name='search_active_time']").val(),
						 'search_last_update_time':$("input[name='search_last_update_time']").val(),
						 'search_terminal_info':$("input[name='search_terminal_info']").val(),
						 'search_login_name':$("input[name='search_login_name']").val(),
						 'search_login_pwd':$("input[name='search_login_pwd']").val(),
						 'search_last_login_time':$("input[name='search_last_login_time']").val(),
						 'search_last_login_info':$("input[name='search_last_login_info']").val(),
						 'search_status':$("input[name='search_status']").val(),
						 'search_reserved':$("input[name='search_reserved']").val(),
						 'search_agent_id_l1':$("input[name='search_agent_id_l1']").val(),
						 'search_agent_id_l2':$("input[name='search_agent_id_l2']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		subMerTerminal_list.buildQueryParams();
		$('#dg_subMerTerminal').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_id']").val("");
			$("input[name='search_tsn']").val("");
			$("input[name='search_factory']").val("");
			$("input[name='search_sub_mer_id']").val("");
			$("input[name='search_mer_sys_id']").val("");
			$("input[name='search_plat_mer_id']").val("");
			$("input[name='search_version']").val("");
			$("input[name='search_category']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_active_time']").val("");
			$("input[name='search_last_update_time']").val("");
			$("input[name='search_terminal_info']").val("");
			$("input[name='search_login_name']").val("");
			$("input[name='search_login_pwd']").val("");
			$("input[name='search_last_login_time']").val("");
			$("input[name='search_last_login_info']").val("");
			$("input[name='search_status']").val("");
			$("input[name='search_reserved']").val("");
			$("input[name='search_agent_id_l1']").val("");
			$("input[name='search_agent_id_l2']").val("");
		subMerTerminal_list.buildQueryParams();
		$('#dg_subMerTerminal').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addSubMerTerminalFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'SUB_MER_TERMINAL',
		    width: 800,
		    height: 500,
		    href: 'addSubMerTerminalPage.action',
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
		    		$('#addSubMerTerminalFrom').form({   
						 url:'addSubMerTerminalAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									subMerTerminal_list.buildQueryParams();
									$('#dg_subMerTerminal').datagrid('load');
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
	subMerTerminal_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editSubMerTerminalFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'SubMerTerminal',
		    width: 800,
		    height: 500,
		    href: 'editSubMerTerminalPage.action',
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
		   				$('#editSubMerTerminalFrom').form({   
						 url:'editSubMerTerminalAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									subMerTerminal_list.buildQueryParams();
									$('#dg_subMerTerminal').datagrid('load');
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
		     			$('#delSubMerTerminalFrom').form({   
						 url:'delSubMerTerminalAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									subMerTerminal_list.buildQueryParams();
									$('#dg_subMerTerminal').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delSubMerTerminalFrom').submit();
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
	subMerTerminal_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细SubMerTerminal',
		    width: 800,
		    height: 500,
		    href: 'detailSubMerTerminalPage.action',
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