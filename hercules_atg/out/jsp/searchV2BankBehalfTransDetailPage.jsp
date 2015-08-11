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
														<td>trans_detail_id</td>
								<td>
									<input type="text" id="search_trans_detail_id" name="search_trans_detail_id" class="easyui-textbox" value="${search_trans_detail_id}"/>
								</td>
								<td>bank_behalf_id</td>
								<td>
									<input type="text" id="search_bank_behalf_id" name="search_bank_behalf_id" class="easyui-textbox" value="${search_bank_behalf_id}"/>
								</td>
								<td>order_id</td>
								<td>
									<input type="text" id="search_order_id" name="search_order_id" class="easyui-textbox" value="${search_order_id}"/>
								</td>
								<td>mer_order_id</td>
								<td>
									<input type="text" id="search_mer_order_id" name="search_mer_order_id" class="easyui-textbox" value="${search_mer_order_id}"/>
								</td>
								<td>bus_mer_id</td>
								<td>
									<input type="text" id="search_bus_mer_id" name="search_bus_mer_id" class="easyui-textbox" value="${search_bus_mer_id}"/>
								</td>
								<td>account1_no</td>
								<td>
									<input type="text" id="search_account1_no" name="search_account1_no" class="easyui-textbox" value="${search_account1_no}"/>
								</td>
								<td>status</td>
								<td>
									<input type="text" id="search_status" name="search_status" class="easyui-textbox" value="${search_status}"/>
								</td>
								<td>account2_no</td>
								<td>
									<input type="text" id="search_account2_no" name="search_account2_no" class="easyui-textbox" value="${search_account2_no}"/>
								</td>
								<td>account2_name</td>
								<td>
									<input type="text" id="search_account2_name" name="search_account2_name" class="easyui-textbox" value="${search_account2_name}"/>
								</td>
								<td>acc2_bank_code</td>
								<td>
									<input type="text" id="search_acc2_bank_code" name="search_acc2_bank_code" class="easyui-textbox" value="${search_acc2_bank_code}"/>
								</td>
								<td>amount</td>
								<td>
									<input type="text" id="search_amount" name="search_amount" class="easyui-textbox" value="${search_amount}"/>
								</td>
								<td>fee</td>
								<td>
									<input type="text" id="search_fee" name="search_fee" class="easyui-textbox" value="${search_fee}"/>
								</td>
								<td>res_code</td>
								<td>
									<input type="text" id="search_res_code" name="search_res_code" class="easyui-textbox" value="${search_res_code}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>finish_time</td>
								<td>
									<input type="text" id="search_finish_time" name="search_finish_time" class="easyui-textbox" value="${search_finish_time}"/>
								</td>
								<td>acc1_balance</td>
								<td>
									<input type="text" id="search_acc1_balance" name="search_acc1_balance" class="easyui-textbox" value="${search_acc1_balance}"/>
								</td>
								<td>mer_balance</td>
								<td>
									<input type="text" id="search_mer_balance" name="search_mer_balance" class="easyui-textbox" value="${search_mer_balance}"/>
								</td>
								<td>mer_fee_bal</td>
								<td>
									<input type="text" id="search_mer_fee_bal" name="search_mer_fee_bal" class="easyui-textbox" value="${search_mer_fee_bal}"/>
								</td>
								<td>postscript</td>
								<td>
									<input type="text" id="search_postscript" name="search_postscript" class="easyui-textbox" value="${search_postscript}"/>
								</td>
								<td>acc2_bank_name</td>
								<td>
									<input type="text" id="search_acc2_bank_name" name="search_acc2_bank_name" class="easyui-textbox" value="${search_acc2_bank_name}"/>
								</td>
								<td>pre_detail_id</td>
								<td>
									<input type="text" id="search_pre_detail_id" name="search_pre_detail_id" class="easyui-textbox" value="${search_pre_detail_id}"/>
								</td>
								<td>branchno</td>
								<td>
									<input type="text" id="search_branchno" name="search_branchno" class="easyui-textbox" value="${search_branchno}"/>
								</td>
								<td>index1</td>
								<td>
									<input type="text" id="search_index1" name="search_index1" class="easyui-textbox" value="${search_index1}"/>
								</td>
								<td>res_desc</td>
								<td>
									<input type="text" id="search_res_desc" name="search_res_desc" class="easyui-textbox" value="${search_res_desc}"/>
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
				<table  id="dg_v2BankBehalfTransDetail" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'TRANS_DETAIL_ID',width:120,sortable:'true',align:'left'">trans_detail_id</th>
							<th data-options="field:'BANK_BEHALF_ID',width:120,sortable:'true',align:'left'">bank_behalf_id</th>
							<th data-options="field:'ORDER_ID',width:120,sortable:'true',align:'left'">order_id</th>
							<th data-options="field:'MER_ORDER_ID',width:120,sortable:'true',align:'left'">mer_order_id</th>
							<th data-options="field:'BUS_MER_ID',width:120,sortable:'true',align:'left'">bus_mer_id</th>
							<th data-options="field:'ACCOUNT1_NO',width:120,sortable:'true',align:'left'">account1_no</th>
							<th data-options="field:'STATUS',width:120,sortable:'true',align:'left'">status</th>
							<th data-options="field:'ACCOUNT2_NO',width:120,sortable:'true',align:'left'">account2_no</th>
							<th data-options="field:'ACCOUNT2_NAME',width:120,sortable:'true',align:'left'">account2_name</th>
							<th data-options="field:'ACC2_BANK_CODE',width:120,sortable:'true',align:'left'">acc2_bank_code</th>
							<th data-options="field:'AMOUNT',width:120,sortable:'true',align:'left'">amount</th>
							<th data-options="field:'FEE',width:120,sortable:'true',align:'left'">fee</th>
							<th data-options="field:'RES_CODE',width:120,sortable:'true',align:'left'">res_code</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'FINISH_TIME',width:120,sortable:'true',align:'left'">finish_time</th>
							<th data-options="field:'ACC1_BALANCE',width:120,sortable:'true',align:'left'">acc1_balance</th>
							<th data-options="field:'MER_BALANCE',width:120,sortable:'true',align:'left'">mer_balance</th>
							<th data-options="field:'MER_FEE_BAL',width:120,sortable:'true',align:'left'">mer_fee_bal</th>
							<th data-options="field:'POSTSCRIPT',width:120,sortable:'true',align:'left'">postscript</th>
							<th data-options="field:'ACC2_BANK_NAME',width:120,sortable:'true',align:'left'">acc2_bank_name</th>
							<th data-options="field:'PRE_DETAIL_ID',width:120,sortable:'true',align:'left'">pre_detail_id</th>
							<th data-options="field:'BRANCHNO',width:120,sortable:'true',align:'left'">branchno</th>
							<th data-options="field:'INDEX1',width:120,sortable:'true',align:'left'">index1</th>
							<th data-options="field:'RES_DESC',width:120,sortable:'true',align:'left'">res_desc</th>
							<th data-options="field:'SUB_MER_ID',width:120,sortable:'true',align:'left'">sub_mer_id</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var v2BankBehalfTransDetail_list ={};
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
	v2BankBehalfTransDetail_list.buildQueryParams=function(){
	    $('#dg_v2BankBehalfTransDetail').datagrid({
			queryParams: {
						 'search_trans_detail_id':$("input[name='search_trans_detail_id']").val(),
						 'search_bank_behalf_id':$("input[name='search_bank_behalf_id']").val(),
						 'search_order_id':$("input[name='search_order_id']").val(),
						 'search_mer_order_id':$("input[name='search_mer_order_id']").val(),
						 'search_bus_mer_id':$("input[name='search_bus_mer_id']").val(),
						 'search_account1_no':$("input[name='search_account1_no']").val(),
						 'search_status':$("input[name='search_status']").val(),
						 'search_account2_no':$("input[name='search_account2_no']").val(),
						 'search_account2_name':$("input[name='search_account2_name']").val(),
						 'search_acc2_bank_code':$("input[name='search_acc2_bank_code']").val(),
						 'search_amount':$("input[name='search_amount']").val(),
						 'search_fee':$("input[name='search_fee']").val(),
						 'search_res_code':$("input[name='search_res_code']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_finish_time':$("input[name='search_finish_time']").val(),
						 'search_acc1_balance':$("input[name='search_acc1_balance']").val(),
						 'search_mer_balance':$("input[name='search_mer_balance']").val(),
						 'search_mer_fee_bal':$("input[name='search_mer_fee_bal']").val(),
						 'search_postscript':$("input[name='search_postscript']").val(),
						 'search_acc2_bank_name':$("input[name='search_acc2_bank_name']").val(),
						 'search_pre_detail_id':$("input[name='search_pre_detail_id']").val(),
						 'search_branchno':$("input[name='search_branchno']").val(),
						 'search_index1':$("input[name='search_index1']").val(),
						 'search_res_desc':$("input[name='search_res_desc']").val(),
						 'search_sub_mer_id':$("input[name='search_sub_mer_id']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		v2BankBehalfTransDetail_list.buildQueryParams();
		$('#dg_v2BankBehalfTransDetail').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_trans_detail_id']").val("");
			$("input[name='search_bank_behalf_id']").val("");
			$("input[name='search_order_id']").val("");
			$("input[name='search_mer_order_id']").val("");
			$("input[name='search_bus_mer_id']").val("");
			$("input[name='search_account1_no']").val("");
			$("input[name='search_status']").val("");
			$("input[name='search_account2_no']").val("");
			$("input[name='search_account2_name']").val("");
			$("input[name='search_acc2_bank_code']").val("");
			$("input[name='search_amount']").val("");
			$("input[name='search_fee']").val("");
			$("input[name='search_res_code']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_finish_time']").val("");
			$("input[name='search_acc1_balance']").val("");
			$("input[name='search_mer_balance']").val("");
			$("input[name='search_mer_fee_bal']").val("");
			$("input[name='search_postscript']").val("");
			$("input[name='search_acc2_bank_name']").val("");
			$("input[name='search_pre_detail_id']").val("");
			$("input[name='search_branchno']").val("");
			$("input[name='search_index1']").val("");
			$("input[name='search_res_desc']").val("");
			$("input[name='search_sub_mer_id']").val("");
		v2BankBehalfTransDetail_list.buildQueryParams();
		$('#dg_v2BankBehalfTransDetail').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addV2BankBehalfTransDetailFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'V2_BANK_BEHALF_TRANS_DETAIL',
		    width: 800,
		    height: 500,
		    href: 'addV2BankBehalfTransDetailPage.action',
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
		    		$('#addV2BankBehalfTransDetailFrom').form({   
						 url:'addV2BankBehalfTransDetailAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									v2BankBehalfTransDetail_list.buildQueryParams();
									$('#dg_v2BankBehalfTransDetail').datagrid('load');
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
	v2BankBehalfTransDetail_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editV2BankBehalfTransDetailFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'V2BankBehalfTransDetail',
		    width: 800,
		    height: 500,
		    href: 'editV2BankBehalfTransDetailPage.action',
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
		   				$('#editV2BankBehalfTransDetailFrom').form({   
						 url:'editV2BankBehalfTransDetailAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									v2BankBehalfTransDetail_list.buildQueryParams();
									$('#dg_v2BankBehalfTransDetail').datagrid('load');
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
		     			$('#delV2BankBehalfTransDetailFrom').form({   
						 url:'delV2BankBehalfTransDetailAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									v2BankBehalfTransDetail_list.buildQueryParams();
									$('#dg_v2BankBehalfTransDetail').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delV2BankBehalfTransDetailFrom').submit();
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
	v2BankBehalfTransDetail_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细V2BankBehalfTransDetail',
		    width: 800,
		    height: 500,
		    href: 'detailV2BankBehalfTransDetailPage.action',
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