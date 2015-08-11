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
														<td>mer_id</td>
								<td>
									<input type="text" id="search_mer_id" name="search_mer_id" class="easyui-textbox" value="${search_mer_id}"/>
								</td>
								<td>balance</td>
								<td>
									<input type="text" id="search_balance" name="search_balance" class="easyui-textbox" value="${search_balance}"/>
								</td>
								<td>fee</td>
								<td>
									<input type="text" id="search_fee" name="search_fee" class="easyui-textbox" value="${search_fee}"/>
								</td>
								<td>rate</td>
								<td>
									<input type="text" id="search_rate" name="search_rate" class="easyui-textbox" value="${search_rate}"/>
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
								<td>back_url</td>
								<td>
									<input type="text" id="search_back_url" name="search_back_url" class="easyui-textbox" value="${search_back_url}"/>
								</td>
								<td>mer_name</td>
								<td>
									<input type="text" id="search_mer_name" name="search_mer_name" class="easyui-textbox" value="${search_mer_name}"/>
								</td>
								<td>available_balance</td>
								<td>
									<input type="text" id="search_available_balance" name="search_available_balance" class="easyui-textbox" value="${search_available_balance}"/>
								</td>
								<td>blocked_balances</td>
								<td>
									<input type="text" id="search_blocked_balances" name="search_blocked_balances" class="easyui-textbox" value="${search_blocked_balances}"/>
								</td>
								<td>available_fee</td>
								<td>
									<input type="text" id="search_available_fee" name="search_available_fee" class="easyui-textbox" value="${search_available_fee}"/>
								</td>
								<td>blocked_fee</td>
								<td>
									<input type="text" id="search_blocked_fee" name="search_blocked_fee" class="easyui-textbox" value="${search_blocked_fee}"/>
								</td>
								<td>pay_tract</td>
								<td>
									<input type="text" id="search_pay_tract" name="search_pay_tract" class="easyui-textbox" value="${search_pay_tract}"/>
								</td>
								<td>mer_sys_id</td>
								<td>
									<input type="text" id="search_mer_sys_id" name="search_mer_sys_id" class="easyui-textbox" value="${search_mer_sys_id}"/>
								</td>
								<td>mer_type</td>
								<td>
									<input type="text" id="search_mer_type" name="search_mer_type" class="easyui-textbox" value="${search_mer_type}"/>
								</td>
								<td>trans_mer_id</td>
								<td>
									<input type="text" id="search_trans_mer_id" name="search_trans_mer_id" class="easyui-textbox" value="${search_trans_mer_id}"/>
								</td>
								<td>account_no</td>
								<td>
									<input type="text" id="search_account_no" name="search_account_no" class="easyui-textbox" value="${search_account_no}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_v2BankBehalfMerConfig" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'MER_ID',width:120,sortable:'true',align:'left'">mer_id</th>
							<th data-options="field:'BALANCE',width:120,sortable:'true',align:'left'">balance</th>
							<th data-options="field:'FEE',width:120,sortable:'true',align:'left'">fee</th>
							<th data-options="field:'RATE',width:120,sortable:'true',align:'left'">rate</th>
							<th data-options="field:'STATUS',width:120,sortable:'true',align:'left'">status</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'FINISH_TIME',width:120,sortable:'true',align:'left'">finish_time</th>
							<th data-options="field:'BACK_URL',width:120,sortable:'true',align:'left'">back_url</th>
							<th data-options="field:'MER_NAME',width:120,sortable:'true',align:'left'">mer_name</th>
							<th data-options="field:'AVAILABLE_BALANCE',width:120,sortable:'true',align:'left'">available_balance</th>
							<th data-options="field:'BLOCKED_BALANCES',width:120,sortable:'true',align:'left'">blocked_balances</th>
							<th data-options="field:'AVAILABLE_FEE',width:120,sortable:'true',align:'left'">available_fee</th>
							<th data-options="field:'BLOCKED_FEE',width:120,sortable:'true',align:'left'">blocked_fee</th>
							<th data-options="field:'PAY_TRACT',width:120,sortable:'true',align:'left'">pay_tract</th>
							<th data-options="field:'MER_SYS_ID',width:120,sortable:'true',align:'left'">mer_sys_id</th>
							<th data-options="field:'MER_TYPE',width:120,sortable:'true',align:'left'">mer_type</th>
							<th data-options="field:'TRANS_MER_ID',width:120,sortable:'true',align:'left'">trans_mer_id</th>
							<th data-options="field:'ACCOUNT_NO',width:120,sortable:'true',align:'left'">account_no</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var v2BankBehalfMerConfig_list ={};
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
	v2BankBehalfMerConfig_list.buildQueryParams=function(){
	    $('#dg_v2BankBehalfMerConfig').datagrid({
			queryParams: {
						 'search_mer_id':$("input[name='search_mer_id']").val(),
						 'search_balance':$("input[name='search_balance']").val(),
						 'search_fee':$("input[name='search_fee']").val(),
						 'search_rate':$("input[name='search_rate']").val(),
						 'search_status':$("input[name='search_status']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_finish_time':$("input[name='search_finish_time']").val(),
						 'search_back_url':$("input[name='search_back_url']").val(),
						 'search_mer_name':$("input[name='search_mer_name']").val(),
						 'search_available_balance':$("input[name='search_available_balance']").val(),
						 'search_blocked_balances':$("input[name='search_blocked_balances']").val(),
						 'search_available_fee':$("input[name='search_available_fee']").val(),
						 'search_blocked_fee':$("input[name='search_blocked_fee']").val(),
						 'search_pay_tract':$("input[name='search_pay_tract']").val(),
						 'search_mer_sys_id':$("input[name='search_mer_sys_id']").val(),
						 'search_mer_type':$("input[name='search_mer_type']").val(),
						 'search_trans_mer_id':$("input[name='search_trans_mer_id']").val(),
						 'search_account_no':$("input[name='search_account_no']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		v2BankBehalfMerConfig_list.buildQueryParams();
		$('#dg_v2BankBehalfMerConfig').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_mer_id']").val("");
			$("input[name='search_balance']").val("");
			$("input[name='search_fee']").val("");
			$("input[name='search_rate']").val("");
			$("input[name='search_status']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_finish_time']").val("");
			$("input[name='search_back_url']").val("");
			$("input[name='search_mer_name']").val("");
			$("input[name='search_available_balance']").val("");
			$("input[name='search_blocked_balances']").val("");
			$("input[name='search_available_fee']").val("");
			$("input[name='search_blocked_fee']").val("");
			$("input[name='search_pay_tract']").val("");
			$("input[name='search_mer_sys_id']").val("");
			$("input[name='search_mer_type']").val("");
			$("input[name='search_trans_mer_id']").val("");
			$("input[name='search_account_no']").val("");
		v2BankBehalfMerConfig_list.buildQueryParams();
		$('#dg_v2BankBehalfMerConfig').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addV2BankBehalfMerConfigFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'V2_BANK_BEHALF_MER_CONFIG',
		    width: 800,
		    height: 500,
		    href: 'addV2BankBehalfMerConfigPage.action',
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
		    		$('#addV2BankBehalfMerConfigFrom').form({   
						 url:'addV2BankBehalfMerConfigAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									v2BankBehalfMerConfig_list.buildQueryParams();
									$('#dg_v2BankBehalfMerConfig').datagrid('load');
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
	v2BankBehalfMerConfig_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editV2BankBehalfMerConfigFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'V2BankBehalfMerConfig',
		    width: 800,
		    height: 500,
		    href: 'editV2BankBehalfMerConfigPage.action',
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
		   				$('#editV2BankBehalfMerConfigFrom').form({   
						 url:'editV2BankBehalfMerConfigAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									v2BankBehalfMerConfig_list.buildQueryParams();
									$('#dg_v2BankBehalfMerConfig').datagrid('load');
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
		     			$('#delV2BankBehalfMerConfigFrom').form({   
						 url:'delV2BankBehalfMerConfigAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									v2BankBehalfMerConfig_list.buildQueryParams();
									$('#dg_v2BankBehalfMerConfig').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delV2BankBehalfMerConfigFrom').submit();
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
	v2BankBehalfMerConfig_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细V2BankBehalfMerConfig',
		    width: 800,
		    height: 500,
		    href: 'detailV2BankBehalfMerConfigPage.action',
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