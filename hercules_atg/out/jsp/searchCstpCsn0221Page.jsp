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
														<td>cc_id</td>
								<td>
									<input type="text" id="search_cc_id" name="search_cc_id" class="easyui-textbox" value="${search_cc_id}"/>
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
								<td>sp_id</td>
								<td>
									<input type="text" id="search_sp_id" name="search_sp_id" class="easyui-textbox" value="${search_sp_id}"/>
								</td>
								<td>update_time</td>
								<td>
									<input type="text" id="search_update_time" name="search_update_time" class="easyui-textbox" value="${search_update_time}"/>
								</td>
								<td>ext</td>
								<td>
									<input type="text" id="search_ext" name="search_ext" class="easyui-textbox" value="${search_ext}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_cstpCsn0221" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'CC_ID',width:120,sortable:'true',align:'left'">cc_id</th>
							<th data-options="field:'CARD_SERIAL_NO',width:120,sortable:'true',align:'left'">card_serial_no</th>
							<th data-options="field:'MAIN_KEY',width:120,sortable:'true',align:'left'">main_key</th>
							<th data-options="field:'SECURITY_KEY',width:120,sortable:'true',align:'left'">security_key</th>
							<th data-options="field:'PIN_KEY',width:120,sortable:'true',align:'left'">pin_key</th>
							<th data-options="field:'MAC_KEY',width:120,sortable:'true',align:'left'">mac_key</th>
							<th data-options="field:'TRACK_KEY',width:120,sortable:'true',align:'left'">track_key</th>
							<th data-options="field:'CCD_STATUS',width:120,sortable:'true',align:'left'">ccd_status</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'SP_ID',width:120,sortable:'true',align:'left'">sp_id</th>
							<th data-options="field:'UPDATE_TIME',width:120,sortable:'true',align:'left'">update_time</th>
							<th data-options="field:'EXT',width:120,sortable:'true',align:'left'">ext</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var cstpCsn0221_list ={};
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
	cstpCsn0221_list.buildQueryParams=function(){
	    $('#dg_cstpCsn0221').datagrid({
			queryParams: {
						 'search_cc_id':$("input[name='search_cc_id']").val(),
						 'search_card_serial_no':$("input[name='search_card_serial_no']").val(),
						 'search_main_key':$("input[name='search_main_key']").val(),
						 'search_security_key':$("input[name='search_security_key']").val(),
						 'search_pin_key':$("input[name='search_pin_key']").val(),
						 'search_mac_key':$("input[name='search_mac_key']").val(),
						 'search_track_key':$("input[name='search_track_key']").val(),
						 'search_ccd_status':$("input[name='search_ccd_status']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_sp_id':$("input[name='search_sp_id']").val(),
						 'search_update_time':$("input[name='search_update_time']").val(),
						 'search_ext':$("input[name='search_ext']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		cstpCsn0221_list.buildQueryParams();
		$('#dg_cstpCsn0221').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_cc_id']").val("");
			$("input[name='search_card_serial_no']").val("");
			$("input[name='search_main_key']").val("");
			$("input[name='search_security_key']").val("");
			$("input[name='search_pin_key']").val("");
			$("input[name='search_mac_key']").val("");
			$("input[name='search_track_key']").val("");
			$("input[name='search_ccd_status']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_sp_id']").val("");
			$("input[name='search_update_time']").val("");
			$("input[name='search_ext']").val("");
		cstpCsn0221_list.buildQueryParams();
		$('#dg_cstpCsn0221').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addCstpCsn0221From';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'CSTP_CSN_0221',
		    width: 800,
		    height: 500,
		    href: 'addCstpCsn0221Page.action',
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
		    		$('#addCstpCsn0221From').form({   
						 url:'addCstpCsn0221Action.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									cstpCsn0221_list.buildQueryParams();
									$('#dg_cstpCsn0221').datagrid('load');
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
	cstpCsn0221_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editCstpCsn0221From';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'CstpCsn0221',
		    width: 800,
		    height: 500,
		    href: 'editCstpCsn0221Page.action',
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
		   				$('#editCstpCsn0221From').form({   
						 url:'editCstpCsn0221Action.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									cstpCsn0221_list.buildQueryParams();
									$('#dg_cstpCsn0221').datagrid('load');
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
		     			$('#delCstpCsn0221From').form({   
						 url:'delCstpCsn0221Action.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									cstpCsn0221_list.buildQueryParams();
									$('#dg_cstpCsn0221').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delCstpCsn0221From').submit();
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
	cstpCsn0221_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细CstpCsn0221',
		    width: 800,
		    height: 500,
		    href: 'detailCstpCsn0221Page.action',
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