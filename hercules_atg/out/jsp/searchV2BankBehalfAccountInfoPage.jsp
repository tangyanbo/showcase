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
														<td>bankid</td>
								<td>
									<input type="text" id="search_bankid" name="search_bankid" class="easyui-textbox" value="${search_bankid}"/>
								</td>
								<td>pay_branch_no</td>
								<td>
									<input type="text" id="search_pay_branch_no" name="search_pay_branch_no" class="easyui-textbox" value="${search_pay_branch_no}"/>
								</td>
								<td>balance</td>
								<td>
									<input type="text" id="search_balance" name="search_balance" class="easyui-textbox" value="${search_balance}"/>
								</td>
								<td>pay_bank_name</td>
								<td>
									<input type="text" id="search_pay_bank_name" name="search_pay_bank_name" class="easyui-textbox" value="${search_pay_bank_name}"/>
								</td>
								<td>pay_account_type</td>
								<td>
									<input type="text" id="search_pay_account_type" name="search_pay_account_type" class="easyui-textbox" value="${search_pay_account_type}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>finish_time</td>
								<td>
									<input type="text" id="search_finish_time" name="search_finish_time" class="easyui-textbox" value="${search_finish_time}"/>
								</td>
								<td>account1_no</td>
								<td>
									<input type="text" id="search_account1_no" name="search_account1_no" class="easyui-textbox" value="${search_account1_no}"/>
								</td>
								<td>account1_name</td>
								<td>
									<input type="text" id="search_account1_name" name="search_account1_name" class="easyui-textbox" value="${search_account1_name}"/>
								</td>
								<td>status</td>
								<td>
									<input type="text" id="search_status" name="search_status" class="easyui-textbox" value="${search_status}"/>
								</td>
								<td>acc_available_balance</td>
								<td>
									<input type="text" id="search_acc_available_balance" name="search_acc_available_balance" class="easyui-textbox" value="${search_acc_available_balance}"/>
								</td>
								<td>acc_blocked_balances</td>
								<td>
									<input type="text" id="search_acc_blocked_balances" name="search_acc_blocked_balances" class="easyui-textbox" value="${search_acc_blocked_balances}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_v2BankBehalfAccountInfo" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'BANKID',width:120,sortable:'true',align:'left'">bankid</th>
							<th data-options="field:'PAY_BRANCH_NO',width:120,sortable:'true',align:'left'">pay_branch_no</th>
							<th data-options="field:'BALANCE',width:120,sortable:'true',align:'left'">balance</th>
							<th data-options="field:'PAY_BANK_NAME',width:120,sortable:'true',align:'left'">pay_bank_name</th>
							<th data-options="field:'PAY_ACCOUNT_TYPE',width:120,sortable:'true',align:'left'">pay_account_type</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'FINISH_TIME',width:120,sortable:'true',align:'left'">finish_time</th>
							<th data-options="field:'ACCOUNT1_NO',width:120,sortable:'true',align:'left'">account1_no</th>
							<th data-options="field:'ACCOUNT1_NAME',width:120,sortable:'true',align:'left'">account1_name</th>
							<th data-options="field:'STATUS',width:120,sortable:'true',align:'left'">status</th>
							<th data-options="field:'ACC_AVAILABLE_BALANCE',width:120,sortable:'true',align:'left'">acc_available_balance</th>
							<th data-options="field:'ACC_BLOCKED_BALANCES',width:120,sortable:'true',align:'left'">acc_blocked_balances</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var v2BankBehalfAccountInfo_list ={};
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
	v2BankBehalfAccountInfo_list.buildQueryParams=function(){
	    $('#dg_v2BankBehalfAccountInfo').datagrid({
			queryParams: {
						 'search_bankid':$("input[name='search_bankid']").val(),
						 'search_pay_branch_no':$("input[name='search_pay_branch_no']").val(),
						 'search_balance':$("input[name='search_balance']").val(),
						 'search_pay_bank_name':$("input[name='search_pay_bank_name']").val(),
						 'search_pay_account_type':$("input[name='search_pay_account_type']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_finish_time':$("input[name='search_finish_time']").val(),
						 'search_account1_no':$("input[name='search_account1_no']").val(),
						 'search_account1_name':$("input[name='search_account1_name']").val(),
						 'search_status':$("input[name='search_status']").val(),
						 'search_acc_available_balance':$("input[name='search_acc_available_balance']").val(),
						 'search_acc_blocked_balances':$("input[name='search_acc_blocked_balances']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		v2BankBehalfAccountInfo_list.buildQueryParams();
		$('#dg_v2BankBehalfAccountInfo').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_bankid']").val("");
			$("input[name='search_pay_branch_no']").val("");
			$("input[name='search_balance']").val("");
			$("input[name='search_pay_bank_name']").val("");
			$("input[name='search_pay_account_type']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_finish_time']").val("");
			$("input[name='search_account1_no']").val("");
			$("input[name='search_account1_name']").val("");
			$("input[name='search_status']").val("");
			$("input[name='search_acc_available_balance']").val("");
			$("input[name='search_acc_blocked_balances']").val("");
		v2BankBehalfAccountInfo_list.buildQueryParams();
		$('#dg_v2BankBehalfAccountInfo').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addV2BankBehalfAccountInfoFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'V2_BANK_BEHALF_ACCOUNT_INFO',
		    width: 800,
		    height: 500,
		    href: 'addV2BankBehalfAccountInfoPage.action',
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
		    		$('#addV2BankBehalfAccountInfoFrom').form({   
						 url:'addV2BankBehalfAccountInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									v2BankBehalfAccountInfo_list.buildQueryParams();
									$('#dg_v2BankBehalfAccountInfo').datagrid('load');
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
	v2BankBehalfAccountInfo_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editV2BankBehalfAccountInfoFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'V2BankBehalfAccountInfo',
		    width: 800,
		    height: 500,
		    href: 'editV2BankBehalfAccountInfoPage.action',
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
		   				$('#editV2BankBehalfAccountInfoFrom').form({   
						 url:'editV2BankBehalfAccountInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									v2BankBehalfAccountInfo_list.buildQueryParams();
									$('#dg_v2BankBehalfAccountInfo').datagrid('load');
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
		     			$('#delV2BankBehalfAccountInfoFrom').form({   
						 url:'delV2BankBehalfAccountInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									v2BankBehalfAccountInfo_list.buildQueryParams();
									$('#dg_v2BankBehalfAccountInfo').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delV2BankBehalfAccountInfoFrom').submit();
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
	v2BankBehalfAccountInfo_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细V2BankBehalfAccountInfo',
		    width: 800,
		    height: 500,
		    href: 'detailV2BankBehalfAccountInfoPage.action',
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