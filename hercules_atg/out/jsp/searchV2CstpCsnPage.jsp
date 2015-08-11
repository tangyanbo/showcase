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
														<td>merchant_id</td>
								<td>
									<input type="text" id="search_merchant_id" name="search_merchant_id" class="easyui-textbox" value="${search_merchant_id}"/>
								</td>
								<td>terminal_id</td>
								<td>
									<input type="text" id="search_terminal_id" name="search_terminal_id" class="easyui-textbox" value="${search_terminal_id}"/>
								</td>
								<td>card_serial_no</td>
								<td>
									<input type="text" id="search_card_serial_no" name="search_card_serial_no" class="easyui-textbox" value="${search_card_serial_no}"/>
								</td>
								<td>main_key</td>
								<td>
									<input type="text" id="search_main_key" name="search_main_key" class="easyui-textbox" value="${search_main_key}"/>
								</td>
								<td>security_key</td>
								<td>
									<input type="text" id="search_security_key" name="search_security_key" class="easyui-textbox" value="${search_security_key}"/>
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
								<td>ccd_status</td>
								<td>
									<input type="text" id="search_ccd_status" name="search_ccd_status" class="easyui-textbox" value="${search_ccd_status}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>merchant_name</td>
								<td>
									<input type="text" id="search_merchant_name" name="search_merchant_name" class="easyui-textbox" value="${search_merchant_name}"/>
								</td>
								<td>sp_id</td>
								<td>
									<input type="text" id="search_sp_id" name="search_sp_id" class="easyui-textbox" value="${search_sp_id}"/>
								</td>
								<td>update_time</td>
								<td>
									<input type="text" id="search_update_time" name="search_update_time" class="easyui-textbox" value="${search_update_time}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_v2CstpCsn" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'MERCHANT_ID',width:120,sortable:'true',align:'left'">merchant_id</th>
							<th data-options="field:'TERMINAL_ID',width:120,sortable:'true',align:'left'">terminal_id</th>
							<th data-options="field:'CARD_SERIAL_NO',width:120,sortable:'true',align:'left'">card_serial_no</th>
							<th data-options="field:'MAIN_KEY',width:120,sortable:'true',align:'left'">main_key</th>
							<th data-options="field:'SECURITY_KEY',width:120,sortable:'true',align:'left'">security_key</th>
							<th data-options="field:'PIN_KEY',width:120,sortable:'true',align:'left'">pin_key</th>
							<th data-options="field:'MAC_KEY',width:120,sortable:'true',align:'left'">mac_key</th>
							<th data-options="field:'TRACK_KEY',width:120,sortable:'true',align:'left'">track_key</th>
							<th data-options="field:'CCD_STATUS',width:120,sortable:'true',align:'left'">ccd_status</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'MERCHANT_NAME',width:120,sortable:'true',align:'left'">merchant_name</th>
							<th data-options="field:'SP_ID',width:120,sortable:'true',align:'left'">sp_id</th>
							<th data-options="field:'UPDATE_TIME',width:120,sortable:'true',align:'left'">update_time</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var v2CstpCsn_list ={};
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
	v2CstpCsn_list.buildQueryParams=function(){
	    $('#dg_v2CstpCsn').datagrid({
			queryParams: {
						 'search_merchant_id':$("input[name='search_merchant_id']").val(),
						 'search_terminal_id':$("input[name='search_terminal_id']").val(),
						 'search_card_serial_no':$("input[name='search_card_serial_no']").val(),
						 'search_main_key':$("input[name='search_main_key']").val(),
						 'search_security_key':$("input[name='search_security_key']").val(),
						 'search_pin_key':$("input[name='search_pin_key']").val(),
						 'search_mac_key':$("input[name='search_mac_key']").val(),
						 'search_track_key':$("input[name='search_track_key']").val(),
						 'search_ccd_status':$("input[name='search_ccd_status']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_merchant_name':$("input[name='search_merchant_name']").val(),
						 'search_sp_id':$("input[name='search_sp_id']").val(),
						 'search_update_time':$("input[name='search_update_time']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		v2CstpCsn_list.buildQueryParams();
		$('#dg_v2CstpCsn').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_merchant_id']").val("");
			$("input[name='search_terminal_id']").val("");
			$("input[name='search_card_serial_no']").val("");
			$("input[name='search_main_key']").val("");
			$("input[name='search_security_key']").val("");
			$("input[name='search_pin_key']").val("");
			$("input[name='search_mac_key']").val("");
			$("input[name='search_track_key']").val("");
			$("input[name='search_ccd_status']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_merchant_name']").val("");
			$("input[name='search_sp_id']").val("");
			$("input[name='search_update_time']").val("");
		v2CstpCsn_list.buildQueryParams();
		$('#dg_v2CstpCsn').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addV2CstpCsnFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'V2_CSTP_CSN',
		    width: 800,
		    height: 500,
		    href: 'addV2CstpCsnPage.action',
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
		    		$('#addV2CstpCsnFrom').form({   
						 url:'addV2CstpCsnAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									v2CstpCsn_list.buildQueryParams();
									$('#dg_v2CstpCsn').datagrid('load');
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
	v2CstpCsn_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editV2CstpCsnFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'V2CstpCsn',
		    width: 800,
		    height: 500,
		    href: 'editV2CstpCsnPage.action',
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
		   				$('#editV2CstpCsnFrom').form({   
						 url:'editV2CstpCsnAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									v2CstpCsn_list.buildQueryParams();
									$('#dg_v2CstpCsn').datagrid('load');
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
		     			$('#delV2CstpCsnFrom').form({   
						 url:'delV2CstpCsnAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									v2CstpCsn_list.buildQueryParams();
									$('#dg_v2CstpCsn').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delV2CstpCsnFrom').submit();
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
	v2CstpCsn_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细V2CstpCsn',
		    width: 800,
		    height: 500,
		    href: 'detailV2CstpCsnPage.action',
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