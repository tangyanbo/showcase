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
								<td>order_id</td>
								<td>
									<input type="text" id="search_order_id" name="search_order_id" class="easyui-textbox" value="${search_order_id}"/>
								</td>
								<td>terminal_id</td>
								<td>
									<input type="text" id="search_terminal_id" name="search_terminal_id" class="easyui-textbox" value="${search_terminal_id}"/>
								</td>
								<td>merchant_id</td>
								<td>
									<input type="text" id="search_merchant_id" name="search_merchant_id" class="easyui-textbox" value="${search_merchant_id}"/>
								</td>
								<td>merchant_name</td>
								<td>
									<input type="text" id="search_merchant_name" name="search_merchant_name" class="easyui-textbox" value="${search_merchant_name}"/>
								</td>
								<td>tsn</td>
								<td>
									<input type="text" id="search_tsn" name="search_tsn" class="easyui-textbox" value="${search_tsn}"/>
								</td>
								<td>trans_code</td>
								<td>
									<input type="text" id="search_trans_code" name="search_trans_code" class="easyui-textbox" value="${search_trans_code}"/>
								</td>
								<td>merchant_order_id</td>
								<td>
									<input type="text" id="search_merchant_order_id" name="search_merchant_order_id" class="easyui-textbox" value="${search_merchant_order_id}"/>
								</td>
								<td>merchant_order_time</td>
								<td>
									<input type="text" id="search_merchant_order_time" name="search_merchant_order_time" class="easyui-textbox" value="${search_merchant_order_time}"/>
								</td>
								<td>merchant_order_amt</td>
								<td>
									<input type="text" id="search_merchant_order_amt" name="search_merchant_order_amt" class="easyui-textbox" value="${search_merchant_order_amt}"/>
								</td>
								<td>merchant_order_currency</td>
								<td>
									<input type="text" id="search_merchant_order_currency" name="search_merchant_order_currency" class="easyui-textbox" value="${search_merchant_order_currency}"/>
								</td>
								<td>phone_num</td>
								<td>
									<input type="text" id="search_phone_num" name="search_phone_num" class="easyui-textbox" value="${search_phone_num}"/>
								</td>
								<td>product_type</td>
								<td>
									<input type="text" id="search_product_type" name="search_product_type" class="easyui-textbox" value="${search_product_type}"/>
								</td>
								<td>bus_type</td>
								<td>
									<input type="text" id="search_bus_type" name="search_bus_type" class="easyui-textbox" value="${search_bus_type}"/>
								</td>
								<td>trans_type</td>
								<td>
									<input type="text" id="search_trans_type" name="search_trans_type" class="easyui-textbox" value="${search_trans_type}"/>
								</td>
								<td>terminal_ip</td>
								<td>
									<input type="text" id="search_terminal_ip" name="search_terminal_ip" class="easyui-textbox" value="${search_terminal_ip}"/>
								</td>
								<td>user_ip</td>
								<td>
									<input type="text" id="search_user_ip" name="search_user_ip" class="easyui-textbox" value="${search_user_ip}"/>
								</td>
								<td>batch_no</td>
								<td>
									<input type="text" id="search_batch_no" name="search_batch_no" class="easyui-textbox" value="${search_batch_no}"/>
								</td>
								<td>voucher_no</td>
								<td>
									<input type="text" id="search_voucher_no" name="search_voucher_no" class="easyui-textbox" value="${search_voucher_no}"/>
								</td>
								<td>resp_code</td>
								<td>
									<input type="text" id="search_resp_code" name="search_resp_code" class="easyui-textbox" value="${search_resp_code}"/>
								</td>
								<td>resp_desc</td>
								<td>
									<input type="text" id="search_resp_desc" name="search_resp_desc" class="easyui-textbox" value="${search_resp_desc}"/>
								</td>
								<td>trans_time</td>
								<td>
									<input type="text" id="search_trans_time" name="search_trans_time" class="easyui-textbox" value="${search_trans_time}"/>
								</td>
								<td>create_date</td>
								<td>
									<input type="text" id="search_create_date" name="search_create_date" class="easyui-textbox" value="${search_create_date}"/>
								</td>
								<td>full_card_no</td>
								<td>
									<input type="text" id="search_full_card_no" name="search_full_card_no" class="easyui-textbox" value="${search_full_card_no}"/>
								</td>
								<td>full_card_no2</td>
								<td>
									<input type="text" id="search_full_card_no2" name="search_full_card_no2" class="easyui-textbox" value="${search_full_card_no2}"/>
								</td>
								<td>reserved1</td>
								<td>
									<input type="text" id="search_reserved1" name="search_reserved1" class="easyui-textbox" value="${search_reserved1}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_errOrderInfo" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'ID',width:120,sortable:'true',align:'left'">id</th>
							<th data-options="field:'ORDER_ID',width:120,sortable:'true',align:'left'">order_id</th>
							<th data-options="field:'TERMINAL_ID',width:120,sortable:'true',align:'left'">terminal_id</th>
							<th data-options="field:'MERCHANT_ID',width:120,sortable:'true',align:'left'">merchant_id</th>
							<th data-options="field:'MERCHANT_NAME',width:120,sortable:'true',align:'left'">merchant_name</th>
							<th data-options="field:'TSN',width:120,sortable:'true',align:'left'">tsn</th>
							<th data-options="field:'TRANS_CODE',width:120,sortable:'true',align:'left'">trans_code</th>
							<th data-options="field:'MERCHANT_ORDER_ID',width:120,sortable:'true',align:'left'">merchant_order_id</th>
							<th data-options="field:'MERCHANT_ORDER_TIME',width:120,sortable:'true',align:'left'">merchant_order_time</th>
							<th data-options="field:'MERCHANT_ORDER_AMT',width:120,sortable:'true',align:'left'">merchant_order_amt</th>
							<th data-options="field:'MERCHANT_ORDER_CURRENCY',width:120,sortable:'true',align:'left'">merchant_order_currency</th>
							<th data-options="field:'PHONE_NUM',width:120,sortable:'true',align:'left'">phone_num</th>
							<th data-options="field:'PRODUCT_TYPE',width:120,sortable:'true',align:'left'">product_type</th>
							<th data-options="field:'BUS_TYPE',width:120,sortable:'true',align:'left'">bus_type</th>
							<th data-options="field:'TRANS_TYPE',width:120,sortable:'true',align:'left'">trans_type</th>
							<th data-options="field:'TERMINAL_IP',width:120,sortable:'true',align:'left'">terminal_ip</th>
							<th data-options="field:'USER_IP',width:120,sortable:'true',align:'left'">user_ip</th>
							<th data-options="field:'BATCH_NO',width:120,sortable:'true',align:'left'">batch_no</th>
							<th data-options="field:'VOUCHER_NO',width:120,sortable:'true',align:'left'">voucher_no</th>
							<th data-options="field:'RESP_CODE',width:120,sortable:'true',align:'left'">resp_code</th>
							<th data-options="field:'RESP_DESC',width:120,sortable:'true',align:'left'">resp_desc</th>
							<th data-options="field:'TRANS_TIME',width:120,sortable:'true',align:'left'">trans_time</th>
							<th data-options="field:'CREATE_DATE',width:120,sortable:'true',align:'left'">create_date</th>
							<th data-options="field:'FULL_CARD_NO',width:120,sortable:'true',align:'left'">full_card_no</th>
							<th data-options="field:'FULL_CARD_NO2',width:120,sortable:'true',align:'left'">full_card_no2</th>
							<th data-options="field:'RESERVED1',width:120,sortable:'true',align:'left'">reserved1</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var errOrderInfo_list ={};
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
	errOrderInfo_list.buildQueryParams=function(){
	    $('#dg_errOrderInfo').datagrid({
			queryParams: {
						 'search_id':$("input[name='search_id']").val(),
						 'search_order_id':$("input[name='search_order_id']").val(),
						 'search_terminal_id':$("input[name='search_terminal_id']").val(),
						 'search_merchant_id':$("input[name='search_merchant_id']").val(),
						 'search_merchant_name':$("input[name='search_merchant_name']").val(),
						 'search_tsn':$("input[name='search_tsn']").val(),
						 'search_trans_code':$("input[name='search_trans_code']").val(),
						 'search_merchant_order_id':$("input[name='search_merchant_order_id']").val(),
						 'search_merchant_order_time':$("input[name='search_merchant_order_time']").val(),
						 'search_merchant_order_amt':$("input[name='search_merchant_order_amt']").val(),
						 'search_merchant_order_currency':$("input[name='search_merchant_order_currency']").val(),
						 'search_phone_num':$("input[name='search_phone_num']").val(),
						 'search_product_type':$("input[name='search_product_type']").val(),
						 'search_bus_type':$("input[name='search_bus_type']").val(),
						 'search_trans_type':$("input[name='search_trans_type']").val(),
						 'search_terminal_ip':$("input[name='search_terminal_ip']").val(),
						 'search_user_ip':$("input[name='search_user_ip']").val(),
						 'search_batch_no':$("input[name='search_batch_no']").val(),
						 'search_voucher_no':$("input[name='search_voucher_no']").val(),
						 'search_resp_code':$("input[name='search_resp_code']").val(),
						 'search_resp_desc':$("input[name='search_resp_desc']").val(),
						 'search_trans_time':$("input[name='search_trans_time']").val(),
						 'search_create_date':$("input[name='search_create_date']").val(),
						 'search_full_card_no':$("input[name='search_full_card_no']").val(),
						 'search_full_card_no2':$("input[name='search_full_card_no2']").val(),
						 'search_reserved1':$("input[name='search_reserved1']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		errOrderInfo_list.buildQueryParams();
		$('#dg_errOrderInfo').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_id']").val("");
			$("input[name='search_order_id']").val("");
			$("input[name='search_terminal_id']").val("");
			$("input[name='search_merchant_id']").val("");
			$("input[name='search_merchant_name']").val("");
			$("input[name='search_tsn']").val("");
			$("input[name='search_trans_code']").val("");
			$("input[name='search_merchant_order_id']").val("");
			$("input[name='search_merchant_order_time']").val("");
			$("input[name='search_merchant_order_amt']").val("");
			$("input[name='search_merchant_order_currency']").val("");
			$("input[name='search_phone_num']").val("");
			$("input[name='search_product_type']").val("");
			$("input[name='search_bus_type']").val("");
			$("input[name='search_trans_type']").val("");
			$("input[name='search_terminal_ip']").val("");
			$("input[name='search_user_ip']").val("");
			$("input[name='search_batch_no']").val("");
			$("input[name='search_voucher_no']").val("");
			$("input[name='search_resp_code']").val("");
			$("input[name='search_resp_desc']").val("");
			$("input[name='search_trans_time']").val("");
			$("input[name='search_create_date']").val("");
			$("input[name='search_full_card_no']").val("");
			$("input[name='search_full_card_no2']").val("");
			$("input[name='search_reserved1']").val("");
		errOrderInfo_list.buildQueryParams();
		$('#dg_errOrderInfo').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addErrOrderInfoFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'ERR_ORDER_INFO',
		    width: 800,
		    height: 500,
		    href: 'addErrOrderInfoPage.action',
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
		    		$('#addErrOrderInfoFrom').form({   
						 url:'addErrOrderInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									errOrderInfo_list.buildQueryParams();
									$('#dg_errOrderInfo').datagrid('load');
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
	errOrderInfo_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editErrOrderInfoFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'ErrOrderInfo',
		    width: 800,
		    height: 500,
		    href: 'editErrOrderInfoPage.action',
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
		   				$('#editErrOrderInfoFrom').form({   
						 url:'editErrOrderInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									errOrderInfo_list.buildQueryParams();
									$('#dg_errOrderInfo').datagrid('load');
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
		     			$('#delErrOrderInfoFrom').form({   
						 url:'delErrOrderInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									errOrderInfo_list.buildQueryParams();
									$('#dg_errOrderInfo').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delErrOrderInfoFrom').submit();
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
	errOrderInfo_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细ErrOrderInfo',
		    width: 800,
		    height: 500,
		    href: 'detailErrOrderInfoPage.action',
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