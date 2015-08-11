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
														<td>behalf_order_id</td>
								<td>
									<input type="text" id="search_behalf_order_id" name="search_behalf_order_id" class="easyui-textbox" value="${search_behalf_order_id}"/>
								</td>
								<td>mer_order_id</td>
								<td>
									<input type="text" id="search_mer_order_id" name="search_mer_order_id" class="easyui-textbox" value="${search_mer_order_id}"/>
								</td>
								<td>mer_order_time</td>
								<td>
									<input type="text" id="search_mer_order_time" name="search_mer_order_time" class="easyui-textbox" value="${search_mer_order_time}"/>
								</td>
								<td>bus_mer_id</td>
								<td>
									<input type="text" id="search_bus_mer_id" name="search_bus_mer_id" class="easyui-textbox" value="${search_bus_mer_id}"/>
								</td>
								<td>status</td>
								<td>
									<input type="text" id="search_status" name="search_status" class="easyui-textbox" value="${search_status}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>finish_time</td>
								<td>
									<input type="text" id="search_finish_time" name="search_finish_time" class="easyui-textbox" value="${search_finish_time}"/>
								</td>
								<td>total_number</td>
								<td>
									<input type="text" id="search_total_number" name="search_total_number" class="easyui-textbox" value="${search_total_number}"/>
								</td>
								<td>success_mumber</td>
								<td>
									<input type="text" id="search_success_mumber" name="search_success_mumber" class="easyui-textbox" value="${search_success_mumber}"/>
								</td>
								<td>fail_number</td>
								<td>
									<input type="text" id="search_fail_number" name="search_fail_number" class="easyui-textbox" value="${search_fail_number}"/>
								</td>
								<td>amount</td>
								<td>
									<input type="text" id="search_amount" name="search_amount" class="easyui-textbox" value="${search_amount}"/>
								</td>
								<td>trans_amount</td>
								<td>
									<input type="text" id="search_trans_amount" name="search_trans_amount" class="easyui-textbox" value="${search_trans_amount}"/>
								</td>
								<td>back_url</td>
								<td>
									<input type="text" id="search_back_url" name="search_back_url" class="easyui-textbox" value="${search_back_url}"/>
								</td>
								<td>order_id</td>
								<td>
									<input type="text" id="search_order_id" name="search_order_id" class="easyui-textbox" value="${search_order_id}"/>
								</td>
								<td>mer_name</td>
								<td>
									<input type="text" id="search_mer_name" name="search_mer_name" class="easyui-textbox" value="${search_mer_name}"/>
								</td>
								<td>sub_mer_id</td>
								<td>
									<input type="text" id="search_sub_mer_id" name="search_sub_mer_id" class="easyui-textbox" value="${search_sub_mer_id}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_v2BankBehalfOrder" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'BEHALF_ORDER_ID',width:120,sortable:'true',align:'left'">behalf_order_id</th>
							<th data-options="field:'MER_ORDER_ID',width:120,sortable:'true',align:'left'">mer_order_id</th>
							<th data-options="field:'MER_ORDER_TIME',width:120,sortable:'true',align:'left'">mer_order_time</th>
							<th data-options="field:'BUS_MER_ID',width:120,sortable:'true',align:'left'">bus_mer_id</th>
							<th data-options="field:'STATUS',width:120,sortable:'true',align:'left'">status</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'FINISH_TIME',width:120,sortable:'true',align:'left'">finish_time</th>
							<th data-options="field:'TOTAL_NUMBER',width:120,sortable:'true',align:'left'">total_number</th>
							<th data-options="field:'SUCCESS_MUMBER',width:120,sortable:'true',align:'left'">success_mumber</th>
							<th data-options="field:'FAIL_NUMBER',width:120,sortable:'true',align:'left'">fail_number</th>
							<th data-options="field:'AMOUNT',width:120,sortable:'true',align:'left'">amount</th>
							<th data-options="field:'TRANS_AMOUNT',width:120,sortable:'true',align:'left'">trans_amount</th>
							<th data-options="field:'BACK_URL',width:120,sortable:'true',align:'left'">back_url</th>
							<th data-options="field:'ORDER_ID',width:120,sortable:'true',align:'left'">order_id</th>
							<th data-options="field:'MER_NAME',width:120,sortable:'true',align:'left'">mer_name</th>
							<th data-options="field:'SUB_MER_ID',width:120,sortable:'true',align:'left'">sub_mer_id</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var v2BankBehalfOrder_list ={};
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
	v2BankBehalfOrder_list.buildQueryParams=function(){
	    $('#dg_v2BankBehalfOrder').datagrid({
			queryParams: {
						 'search_behalf_order_id':$("input[name='search_behalf_order_id']").val(),
						 'search_mer_order_id':$("input[name='search_mer_order_id']").val(),
						 'search_mer_order_time':$("input[name='search_mer_order_time']").val(),
						 'search_bus_mer_id':$("input[name='search_bus_mer_id']").val(),
						 'search_status':$("input[name='search_status']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_finish_time':$("input[name='search_finish_time']").val(),
						 'search_total_number':$("input[name='search_total_number']").val(),
						 'search_success_mumber':$("input[name='search_success_mumber']").val(),
						 'search_fail_number':$("input[name='search_fail_number']").val(),
						 'search_amount':$("input[name='search_amount']").val(),
						 'search_trans_amount':$("input[name='search_trans_amount']").val(),
						 'search_back_url':$("input[name='search_back_url']").val(),
						 'search_order_id':$("input[name='search_order_id']").val(),
						 'search_mer_name':$("input[name='search_mer_name']").val(),
						 'search_sub_mer_id':$("input[name='search_sub_mer_id']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		v2BankBehalfOrder_list.buildQueryParams();
		$('#dg_v2BankBehalfOrder').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_behalf_order_id']").val("");
			$("input[name='search_mer_order_id']").val("");
			$("input[name='search_mer_order_time']").val("");
			$("input[name='search_bus_mer_id']").val("");
			$("input[name='search_status']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_finish_time']").val("");
			$("input[name='search_total_number']").val("");
			$("input[name='search_success_mumber']").val("");
			$("input[name='search_fail_number']").val("");
			$("input[name='search_amount']").val("");
			$("input[name='search_trans_amount']").val("");
			$("input[name='search_back_url']").val("");
			$("input[name='search_order_id']").val("");
			$("input[name='search_mer_name']").val("");
			$("input[name='search_sub_mer_id']").val("");
		v2BankBehalfOrder_list.buildQueryParams();
		$('#dg_v2BankBehalfOrder').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addV2BankBehalfOrderFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'V2_BANK_BEHALF_ORDER',
		    width: 800,
		    height: 500,
		    href: 'addV2BankBehalfOrderPage.action',
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
		    		$('#addV2BankBehalfOrderFrom').form({   
						 url:'addV2BankBehalfOrderAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									v2BankBehalfOrder_list.buildQueryParams();
									$('#dg_v2BankBehalfOrder').datagrid('load');
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
	v2BankBehalfOrder_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editV2BankBehalfOrderFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'V2BankBehalfOrder',
		    width: 800,
		    height: 500,
		    href: 'editV2BankBehalfOrderPage.action',
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
		   				$('#editV2BankBehalfOrderFrom').form({   
						 url:'editV2BankBehalfOrderAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									v2BankBehalfOrder_list.buildQueryParams();
									$('#dg_v2BankBehalfOrder').datagrid('load');
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
		     			$('#delV2BankBehalfOrderFrom').form({   
						 url:'delV2BankBehalfOrderAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									v2BankBehalfOrder_list.buildQueryParams();
									$('#dg_v2BankBehalfOrder').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delV2BankBehalfOrderFrom').submit();
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
	v2BankBehalfOrder_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细V2BankBehalfOrder',
		    width: 800,
		    height: 500,
		    href: 'detailV2BankBehalfOrderPage.action',
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