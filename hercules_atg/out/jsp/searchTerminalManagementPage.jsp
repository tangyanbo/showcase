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
								<td>merchant_no</td>
								<td>
									<input type="text" id="search_merchant_no" name="search_merchant_no" class="easyui-textbox" value="${search_merchant_no}"/>
								</td>
								<td>terminal_no</td>
								<td>
									<input type="text" id="search_terminal_no" name="search_terminal_no" class="easyui-textbox" value="${search_terminal_no}"/>
								</td>
								<td>tmk</td>
								<td>
									<input type="text" id="search_tmk" name="search_tmk" class="easyui-textbox" value="${search_tmk}"/>
								</td>
								<td>channel_type</td>
								<td>
									<input type="text" id="search_channel_type" name="search_channel_type" class="easyui-textbox" value="${search_channel_type}"/>
								</td>
								<td>tmk_local</td>
								<td>
									<input type="text" id="search_tmk_local" name="search_tmk_local" class="easyui-textbox" value="${search_tmk_local}"/>
								</td>
								<td>pin_key</td>
								<td>
									<input type="text" id="search_pin_key" name="search_pin_key" class="easyui-textbox" value="${search_pin_key}"/>
								</td>
								<td>mac_key</td>
								<td>
									<input type="text" id="search_mac_key" name="search_mac_key" class="easyui-textbox" value="${search_mac_key}"/>
								</td>
								<td>track_key</td>
								<td>
									<input type="text" id="search_track_key" name="search_track_key" class="easyui-textbox" value="${search_track_key}"/>
								</td>
								<td>lot_no</td>
								<td>
									<input type="text" id="search_lot_no" name="search_lot_no" class="easyui-textbox" value="${search_lot_no}"/>
								</td>
								<td>create_date</td>
								<td>
									<input type="text" id="search_create_date" name="search_create_date" class="easyui-textbox" value="${search_create_date}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>network_no</td>
								<td>
									<input type="text" id="search_network_no" name="search_network_no" class="easyui-textbox" value="${search_network_no}"/>
								</td>
								<td>ext</td>
								<td>
									<input type="text" id="search_ext" name="search_ext" class="easyui-textbox" value="${search_ext}"/>
								</td>
								<td>ext1</td>
								<td>
									<input type="text" id="search_ext1" name="search_ext1" class="easyui-textbox" value="${search_ext1}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_terminalManagement" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'ID',width:120,sortable:'true',align:'left'">id</th>
							<th data-options="field:'MERCHANT_NO',width:120,sortable:'true',align:'left'">merchant_no</th>
							<th data-options="field:'TERMINAL_NO',width:120,sortable:'true',align:'left'">terminal_no</th>
							<th data-options="field:'TMK',width:120,sortable:'true',align:'left'">tmk</th>
							<th data-options="field:'CHANNEL_TYPE',width:120,sortable:'true',align:'left'">channel_type</th>
							<th data-options="field:'TMK_LOCAL',width:120,sortable:'true',align:'left'">tmk_local</th>
							<th data-options="field:'PIN_KEY',width:120,sortable:'true',align:'left'">pin_key</th>
							<th data-options="field:'MAC_KEY',width:120,sortable:'true',align:'left'">mac_key</th>
							<th data-options="field:'TRACK_KEY',width:120,sortable:'true',align:'left'">track_key</th>
							<th data-options="field:'LOT_NO',width:120,sortable:'true',align:'left'">lot_no</th>
							<th data-options="field:'CREATE_DATE',width:120,sortable:'true',align:'left'">create_date</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'NETWORK_NO',width:120,sortable:'true',align:'left'">network_no</th>
							<th data-options="field:'EXT',width:120,sortable:'true',align:'left'">ext</th>
							<th data-options="field:'EXT1',width:120,sortable:'true',align:'left'">ext1</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var terminalManagement_list ={};
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
	terminalManagement_list.buildQueryParams=function(){
	    $('#dg_terminalManagement').datagrid({
			queryParams: {
						 'search_id':$("input[name='search_id']").val(),
						 'search_merchant_no':$("input[name='search_merchant_no']").val(),
						 'search_terminal_no':$("input[name='search_terminal_no']").val(),
						 'search_tmk':$("input[name='search_tmk']").val(),
						 'search_channel_type':$("input[name='search_channel_type']").val(),
						 'search_tmk_local':$("input[name='search_tmk_local']").val(),
						 'search_pin_key':$("input[name='search_pin_key']").val(),
						 'search_mac_key':$("input[name='search_mac_key']").val(),
						 'search_track_key':$("input[name='search_track_key']").val(),
						 'search_lot_no':$("input[name='search_lot_no']").val(),
						 'search_create_date':$("input[name='search_create_date']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_network_no':$("input[name='search_network_no']").val(),
						 'search_ext':$("input[name='search_ext']").val(),
						 'search_ext1':$("input[name='search_ext1']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		terminalManagement_list.buildQueryParams();
		$('#dg_terminalManagement').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_id']").val("");
			$("input[name='search_merchant_no']").val("");
			$("input[name='search_terminal_no']").val("");
			$("input[name='search_tmk']").val("");
			$("input[name='search_channel_type']").val("");
			$("input[name='search_tmk_local']").val("");
			$("input[name='search_pin_key']").val("");
			$("input[name='search_mac_key']").val("");
			$("input[name='search_track_key']").val("");
			$("input[name='search_lot_no']").val("");
			$("input[name='search_create_date']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_network_no']").val("");
			$("input[name='search_ext']").val("");
			$("input[name='search_ext1']").val("");
		terminalManagement_list.buildQueryParams();
		$('#dg_terminalManagement').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addTerminalManagementFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'terminal_management',
		    width: 800,
		    height: 500,
		    href: 'addTerminalManagementPage.action',
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
		    		$('#addTerminalManagementFrom').form({   
						 url:'addTerminalManagementAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									terminalManagement_list.buildQueryParams();
									$('#dg_terminalManagement').datagrid('load');
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
	terminalManagement_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editTerminalManagementFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'TerminalManagement',
		    width: 800,
		    height: 500,
		    href: 'editTerminalManagementPage.action',
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
		   				$('#editTerminalManagementFrom').form({   
						 url:'editTerminalManagementAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									terminalManagement_list.buildQueryParams();
									$('#dg_terminalManagement').datagrid('load');
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
		     			$('#delTerminalManagementFrom').form({   
						 url:'delTerminalManagementAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									terminalManagement_list.buildQueryParams();
									$('#dg_terminalManagement').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delTerminalManagementFrom').submit();
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
	terminalManagement_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细TerminalManagement',
		    width: 800,
		    height: 500,
		    href: 'detailTerminalManagementPage.action',
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