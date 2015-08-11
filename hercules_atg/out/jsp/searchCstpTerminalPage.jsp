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
														<td>ct_id</td>
								<td>
									<input type="text" id="search_ct_id" name="search_ct_id" class="easyui-textbox" value="${search_ct_id}"/>
								</td>
								<td>merchant_id</td>
								<td>
									<input type="text" id="search_merchant_id" name="search_merchant_id" class="easyui-textbox" value="${search_merchant_id}"/>
								</td>
								<td>terminal_id</td>
								<td>
									<input type="text" id="search_terminal_id" name="search_terminal_id" class="easyui-textbox" value="${search_terminal_id}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>sign_in_date</td>
								<td>
									<input type="text" id="search_sign_in_date" name="search_sign_in_date" class="easyui-textbox" value="${search_sign_in_date}"/>
								</td>
								<td>mac_key</td>
								<td>
									<input type="text" id="search_mac_key" name="search_mac_key" class="easyui-textbox" value="${search_mac_key}"/>
								</td>
								<td>pin_key</td>
								<td>
									<input type="text" id="search_pin_key" name="search_pin_key" class="easyui-textbox" value="${search_pin_key}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_cstpTerminal" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'CT_ID',width:120,sortable:'true',align:'left'">ct_id</th>
							<th data-options="field:'MERCHANT_ID',width:120,sortable:'true',align:'left'">merchant_id</th>
							<th data-options="field:'TERMINAL_ID',width:120,sortable:'true',align:'left'">terminal_id</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'SIGN_IN_DATE',width:120,sortable:'true',align:'left'">sign_in_date</th>
							<th data-options="field:'MAC_KEY',width:120,sortable:'true',align:'left'">mac_key</th>
							<th data-options="field:'PIN_KEY',width:120,sortable:'true',align:'left'">pin_key</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var cstpTerminal_list ={};
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
	cstpTerminal_list.buildQueryParams=function(){
	    $('#dg_cstpTerminal').datagrid({
			queryParams: {
						 'search_ct_id':$("input[name='search_ct_id']").val(),
						 'search_merchant_id':$("input[name='search_merchant_id']").val(),
						 'search_terminal_id':$("input[name='search_terminal_id']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_sign_in_date':$("input[name='search_sign_in_date']").val(),
						 'search_mac_key':$("input[name='search_mac_key']").val(),
						 'search_pin_key':$("input[name='search_pin_key']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		cstpTerminal_list.buildQueryParams();
		$('#dg_cstpTerminal').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_ct_id']").val("");
			$("input[name='search_merchant_id']").val("");
			$("input[name='search_terminal_id']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_sign_in_date']").val("");
			$("input[name='search_mac_key']").val("");
			$("input[name='search_pin_key']").val("");
		cstpTerminal_list.buildQueryParams();
		$('#dg_cstpTerminal').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addCstpTerminalFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'CSTP_TERMINAL',
		    width: 800,
		    height: 500,
		    href: 'addCstpTerminalPage.action',
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
		    		$('#addCstpTerminalFrom').form({   
						 url:'addCstpTerminalAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									cstpTerminal_list.buildQueryParams();
									$('#dg_cstpTerminal').datagrid('load');
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
	cstpTerminal_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editCstpTerminalFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'CstpTerminal',
		    width: 800,
		    height: 500,
		    href: 'editCstpTerminalPage.action',
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
		   				$('#editCstpTerminalFrom').form({   
						 url:'editCstpTerminalAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									cstpTerminal_list.buildQueryParams();
									$('#dg_cstpTerminal').datagrid('load');
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
		     			$('#delCstpTerminalFrom').form({   
						 url:'delCstpTerminalAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									cstpTerminal_list.buildQueryParams();
									$('#dg_cstpTerminal').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delCstpTerminalFrom').submit();
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
	cstpTerminal_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细CstpTerminal',
		    width: 800,
		    height: 500,
		    href: 'detailCstpTerminalPage.action',
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