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
														<td>mer_sys_id</td>
								<td>
									<input type="text" id="search_mer_sys_id" name="search_mer_sys_id" class="easyui-textbox" value="${search_mer_sys_id}"/>
								</td>
								<td>trans_key</td>
								<td>
									<input type="text" id="search_trans_key" name="search_trans_key" class="easyui-textbox" value="${search_trans_key}"/>
								</td>
								<td>public_key</td>
								<td>
									<input type="text" id="search_public_key" name="search_public_key" class="easyui-textbox" value="${search_public_key}"/>
								</td>
								<td>private_key</td>
								<td>
									<input type="text" id="search_private_key" name="search_private_key" class="easyui-textbox" value="${search_private_key}"/>
								</td>
								<td>rules</td>
								<td>
									<input type="text" id="search_rules" name="search_rules" class="easyui-textbox" value="${search_rules}"/>
								</td>
								<td>lowest_trans_amt</td>
								<td>
									<input type="text" id="search_lowest_trans_amt" name="search_lowest_trans_amt" class="easyui-textbox" value="${search_lowest_trans_amt}"/>
								</td>
								<td>terminal_type</td>
								<td>
									<input type="text" id="search_terminal_type" name="search_terminal_type" class="easyui-textbox" value="${search_terminal_type}"/>
								</td>
								<td>bus_type</td>
								<td>
									<input type="text" id="search_bus_type" name="search_bus_type" class="easyui-textbox" value="${search_bus_type}"/>
								</td>
								<td>action_list</td>
								<td>
									<input type="text" id="search_action_list" name="search_action_list" class="easyui-textbox" value="${search_action_list}"/>
								</td>
								<td>auto_approve</td>
								<td>
									<input type="text" id="search_auto_approve" name="search_auto_approve" class="easyui-textbox" value="${search_auto_approve}"/>
								</td>
								<td>auth_status</td>
								<td>
									<input type="text" id="search_auth_status" name="search_auth_status" class="easyui-textbox" value="${search_auth_status}"/>
								</td>
								<td>t0_status</td>
								<td>
									<input type="text" id="search_t0_status" name="search_t0_status" class="easyui-textbox" value="${search_t0_status}"/>
								</td>
								<td>clear_type</td>
								<td>
									<input type="text" id="search_clear_type" name="search_clear_type" class="easyui-textbox" value="${search_clear_type}"/>
								</td>
								<td>clear_tract</td>
								<td>
									<input type="text" id="search_clear_tract" name="search_clear_tract" class="easyui-textbox" value="${search_clear_tract}"/>
								</td>
								<td>trans_notify_status</td>
								<td>
									<input type="text" id="search_trans_notify_status" name="search_trans_notify_status" class="easyui-textbox" value="${search_trans_notify_status}"/>
								</td>
								<td>trans_notify_url</td>
								<td>
									<input type="text" id="search_trans_notify_url" name="search_trans_notify_url" class="easyui-textbox" value="${search_trans_notify_url}"/>
								</td>
								<td>trans_notify_action_list</td>
								<td>
									<input type="text" id="search_trans_notify_action_list" name="search_trans_notify_action_list" class="easyui-textbox" value="${search_trans_notify_action_list}"/>
								</td>
								<td>basic_rate</td>
								<td>
									<input type="text" id="search_basic_rate" name="search_basic_rate" class="easyui-textbox" value="${search_basic_rate}"/>
								</td>
								<td>basic_rate2</td>
								<td>
									<input type="text" id="search_basic_rate2" name="search_basic_rate2" class="easyui-textbox" value="${search_basic_rate2}"/>
								</td>
								<td>basic_highest_fee</td>
								<td>
									<input type="text" id="search_basic_highest_fee" name="search_basic_highest_fee" class="easyui-textbox" value="${search_basic_highest_fee}"/>
								</td>
								<td>basic_per_card_quota</td>
								<td>
									<input type="text" id="search_basic_per_card_quota" name="search_basic_per_card_quota" class="easyui-textbox" value="${search_basic_per_card_quota}"/>
								</td>
								<td>basic_card_quota</td>
								<td>
									<input type="text" id="search_basic_card_quota" name="search_basic_card_quota" class="easyui-textbox" value="${search_basic_card_quota}"/>
								</td>
								<td>baisc_card_count</td>
								<td>
									<input type="text" id="search_baisc_card_count" name="search_baisc_card_count" class="easyui-textbox" value="${search_baisc_card_count}"/>
								</td>
								<td>basic_terminal_quota</td>
								<td>
									<input type="text" id="search_basic_terminal_quota" name="search_basic_terminal_quota" class="easyui-textbox" value="${search_basic_terminal_quota}"/>
								</td>
								<td>basic_region</td>
								<td>
									<input type="text" id="search_basic_region" name="search_basic_region" class="easyui-textbox" value="${search_basic_region}"/>
								</td>
								<td>basic_mcc</td>
								<td>
									<input type="text" id="search_basic_mcc" name="search_basic_mcc" class="easyui-textbox" value="${search_basic_mcc}"/>
								</td>
								<td>mer_rate_1</td>
								<td>
									<input type="text" id="search_mer_rate_1" name="search_mer_rate_1" class="easyui-textbox" value="${search_mer_rate_1}"/>
								</td>
								<td>mer_rate_2</td>
								<td>
									<input type="text" id="search_mer_rate_2" name="search_mer_rate_2" class="easyui-textbox" value="${search_mer_rate_2}"/>
								</td>
								<td>mer_highest_fee</td>
								<td>
									<input type="text" id="search_mer_highest_fee" name="search_mer_highest_fee" class="easyui-textbox" value="${search_mer_highest_fee}"/>
								</td>
								<td>mer_lowest_fee</td>
								<td>
									<input type="text" id="search_mer_lowest_fee" name="search_mer_lowest_fee" class="easyui-textbox" value="${search_mer_lowest_fee}"/>
								</td>
								<td>mer_profit_rate</td>
								<td>
									<input type="text" id="search_mer_profit_rate" name="search_mer_profit_rate" class="easyui-textbox" value="${search_mer_profit_rate}"/>
								</td>
								<td>mer_tsn</td>
								<td>
									<input type="text" id="search_mer_tsn" name="search_mer_tsn" class="easyui-textbox" value="${search_mer_tsn}"/>
								</td>
								<td>reserved</td>
								<td>
									<input type="text" id="search_reserved" name="search_reserved" class="easyui-textbox" value="${search_reserved}"/>
								</td>
								<td>rate_type</td>
								<td>
									<input type="text" id="search_rate_type" name="search_rate_type" class="easyui-textbox" value="${search_rate_type}"/>
								</td>
								<td>is_report</td>
								<td>
									<input type="text" id="search_is_report" name="search_is_report" class="easyui-textbox" value="${search_is_report}"/>
								</td>
								<td>is_app_trans_terminal</td>
								<td>
									<input type="text" id="search_is_app_trans_terminal" name="search_is_app_trans_terminal" class="easyui-textbox" value="${search_is_app_trans_terminal}"/>
								</td>
								<td>t0_rate</td>
								<td>
									<input type="text" id="search_t0_rate" name="search_t0_rate" class="easyui-textbox" value="${search_t0_rate}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_merTrans" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'MER_SYS_ID',width:120,sortable:'true',align:'left'">mer_sys_id</th>
							<th data-options="field:'TRANS_KEY',width:120,sortable:'true',align:'left'">trans_key</th>
							<th data-options="field:'PUBLIC_KEY',width:120,sortable:'true',align:'left'">public_key</th>
							<th data-options="field:'PRIVATE_KEY',width:120,sortable:'true',align:'left'">private_key</th>
							<th data-options="field:'RULES',width:120,sortable:'true',align:'left'">rules</th>
							<th data-options="field:'LOWEST_TRANS_AMT',width:120,sortable:'true',align:'left'">lowest_trans_amt</th>
							<th data-options="field:'TERMINAL_TYPE',width:120,sortable:'true',align:'left'">terminal_type</th>
							<th data-options="field:'BUS_TYPE',width:120,sortable:'true',align:'left'">bus_type</th>
							<th data-options="field:'ACTION_LIST',width:120,sortable:'true',align:'left'">action_list</th>
							<th data-options="field:'AUTO_APPROVE',width:120,sortable:'true',align:'left'">auto_approve</th>
							<th data-options="field:'AUTH_STATUS',width:120,sortable:'true',align:'left'">auth_status</th>
							<th data-options="field:'T0_STATUS',width:120,sortable:'true',align:'left'">t0_status</th>
							<th data-options="field:'CLEAR_TYPE',width:120,sortable:'true',align:'left'">clear_type</th>
							<th data-options="field:'CLEAR_TRACT',width:120,sortable:'true',align:'left'">clear_tract</th>
							<th data-options="field:'TRANS_NOTIFY_STATUS',width:120,sortable:'true',align:'left'">trans_notify_status</th>
							<th data-options="field:'TRANS_NOTIFY_URL',width:120,sortable:'true',align:'left'">trans_notify_url</th>
							<th data-options="field:'TRANS_NOTIFY_ACTION_LIST',width:120,sortable:'true',align:'left'">trans_notify_action_list</th>
							<th data-options="field:'BASIC_RATE',width:120,sortable:'true',align:'left'">basic_rate</th>
							<th data-options="field:'BASIC_RATE2',width:120,sortable:'true',align:'left'">basic_rate2</th>
							<th data-options="field:'BASIC_HIGHEST_FEE',width:120,sortable:'true',align:'left'">basic_highest_fee</th>
							<th data-options="field:'BASIC_PER_CARD_QUOTA',width:120,sortable:'true',align:'left'">basic_per_card_quota</th>
							<th data-options="field:'BASIC_CARD_QUOTA',width:120,sortable:'true',align:'left'">basic_card_quota</th>
							<th data-options="field:'BAISC_CARD_COUNT',width:120,sortable:'true',align:'left'">baisc_card_count</th>
							<th data-options="field:'BASIC_TERMINAL_QUOTA',width:120,sortable:'true',align:'left'">basic_terminal_quota</th>
							<th data-options="field:'BASIC_REGION',width:120,sortable:'true',align:'left'">basic_region</th>
							<th data-options="field:'BASIC_MCC',width:120,sortable:'true',align:'left'">basic_mcc</th>
							<th data-options="field:'MER_RATE_1',width:120,sortable:'true',align:'left'">mer_rate_1</th>
							<th data-options="field:'MER_RATE_2',width:120,sortable:'true',align:'left'">mer_rate_2</th>
							<th data-options="field:'MER_HIGHEST_FEE',width:120,sortable:'true',align:'left'">mer_highest_fee</th>
							<th data-options="field:'MER_LOWEST_FEE',width:120,sortable:'true',align:'left'">mer_lowest_fee</th>
							<th data-options="field:'MER_PROFIT_RATE',width:120,sortable:'true',align:'left'">mer_profit_rate</th>
							<th data-options="field:'MER_TSN',width:120,sortable:'true',align:'left'">mer_tsn</th>
							<th data-options="field:'RESERVED',width:120,sortable:'true',align:'left'">reserved</th>
							<th data-options="field:'RATE_TYPE',width:120,sortable:'true',align:'left'">rate_type</th>
							<th data-options="field:'IS_REPORT',width:120,sortable:'true',align:'left'">is_report</th>
							<th data-options="field:'IS_APP_TRANS_TERMINAL',width:120,sortable:'true',align:'left'">is_app_trans_terminal</th>
							<th data-options="field:'T0_RATE',width:120,sortable:'true',align:'left'">t0_rate</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var merTrans_list ={};
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
	merTrans_list.buildQueryParams=function(){
	    $('#dg_merTrans').datagrid({
			queryParams: {
						 'search_mer_sys_id':$("input[name='search_mer_sys_id']").val(),
						 'search_trans_key':$("input[name='search_trans_key']").val(),
						 'search_public_key':$("input[name='search_public_key']").val(),
						 'search_private_key':$("input[name='search_private_key']").val(),
						 'search_rules':$("input[name='search_rules']").val(),
						 'search_lowest_trans_amt':$("input[name='search_lowest_trans_amt']").val(),
						 'search_terminal_type':$("input[name='search_terminal_type']").val(),
						 'search_bus_type':$("input[name='search_bus_type']").val(),
						 'search_action_list':$("input[name='search_action_list']").val(),
						 'search_auto_approve':$("input[name='search_auto_approve']").val(),
						 'search_auth_status':$("input[name='search_auth_status']").val(),
						 'search_t0_status':$("input[name='search_t0_status']").val(),
						 'search_clear_type':$("input[name='search_clear_type']").val(),
						 'search_clear_tract':$("input[name='search_clear_tract']").val(),
						 'search_trans_notify_status':$("input[name='search_trans_notify_status']").val(),
						 'search_trans_notify_url':$("input[name='search_trans_notify_url']").val(),
						 'search_trans_notify_action_list':$("input[name='search_trans_notify_action_list']").val(),
						 'search_basic_rate':$("input[name='search_basic_rate']").val(),
						 'search_basic_rate2':$("input[name='search_basic_rate2']").val(),
						 'search_basic_highest_fee':$("input[name='search_basic_highest_fee']").val(),
						 'search_basic_per_card_quota':$("input[name='search_basic_per_card_quota']").val(),
						 'search_basic_card_quota':$("input[name='search_basic_card_quota']").val(),
						 'search_baisc_card_count':$("input[name='search_baisc_card_count']").val(),
						 'search_basic_terminal_quota':$("input[name='search_basic_terminal_quota']").val(),
						 'search_basic_region':$("input[name='search_basic_region']").val(),
						 'search_basic_mcc':$("input[name='search_basic_mcc']").val(),
						 'search_mer_rate_1':$("input[name='search_mer_rate_1']").val(),
						 'search_mer_rate_2':$("input[name='search_mer_rate_2']").val(),
						 'search_mer_highest_fee':$("input[name='search_mer_highest_fee']").val(),
						 'search_mer_lowest_fee':$("input[name='search_mer_lowest_fee']").val(),
						 'search_mer_profit_rate':$("input[name='search_mer_profit_rate']").val(),
						 'search_mer_tsn':$("input[name='search_mer_tsn']").val(),
						 'search_reserved':$("input[name='search_reserved']").val(),
						 'search_rate_type':$("input[name='search_rate_type']").val(),
						 'search_is_report':$("input[name='search_is_report']").val(),
						 'search_is_app_trans_terminal':$("input[name='search_is_app_trans_terminal']").val(),
						 'search_t0_rate':$("input[name='search_t0_rate']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		merTrans_list.buildQueryParams();
		$('#dg_merTrans').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_mer_sys_id']").val("");
			$("input[name='search_trans_key']").val("");
			$("input[name='search_public_key']").val("");
			$("input[name='search_private_key']").val("");
			$("input[name='search_rules']").val("");
			$("input[name='search_lowest_trans_amt']").val("");
			$("input[name='search_terminal_type']").val("");
			$("input[name='search_bus_type']").val("");
			$("input[name='search_action_list']").val("");
			$("input[name='search_auto_approve']").val("");
			$("input[name='search_auth_status']").val("");
			$("input[name='search_t0_status']").val("");
			$("input[name='search_clear_type']").val("");
			$("input[name='search_clear_tract']").val("");
			$("input[name='search_trans_notify_status']").val("");
			$("input[name='search_trans_notify_url']").val("");
			$("input[name='search_trans_notify_action_list']").val("");
			$("input[name='search_basic_rate']").val("");
			$("input[name='search_basic_rate2']").val("");
			$("input[name='search_basic_highest_fee']").val("");
			$("input[name='search_basic_per_card_quota']").val("");
			$("input[name='search_basic_card_quota']").val("");
			$("input[name='search_baisc_card_count']").val("");
			$("input[name='search_basic_terminal_quota']").val("");
			$("input[name='search_basic_region']").val("");
			$("input[name='search_basic_mcc']").val("");
			$("input[name='search_mer_rate_1']").val("");
			$("input[name='search_mer_rate_2']").val("");
			$("input[name='search_mer_highest_fee']").val("");
			$("input[name='search_mer_lowest_fee']").val("");
			$("input[name='search_mer_profit_rate']").val("");
			$("input[name='search_mer_tsn']").val("");
			$("input[name='search_reserved']").val("");
			$("input[name='search_rate_type']").val("");
			$("input[name='search_is_report']").val("");
			$("input[name='search_is_app_trans_terminal']").val("");
			$("input[name='search_t0_rate']").val("");
		merTrans_list.buildQueryParams();
		$('#dg_merTrans').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addMerTransFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'MER_TRANS',
		    width: 800,
		    height: 500,
		    href: 'addMerTransPage.action',
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
		    		$('#addMerTransFrom').form({   
						 url:'addMerTransAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									merTrans_list.buildQueryParams();
									$('#dg_merTrans').datagrid('load');
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
	merTrans_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editMerTransFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'MerTrans',
		    width: 800,
		    height: 500,
		    href: 'editMerTransPage.action',
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
		   				$('#editMerTransFrom').form({   
						 url:'editMerTransAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									merTrans_list.buildQueryParams();
									$('#dg_merTrans').datagrid('load');
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
		     			$('#delMerTransFrom').form({   
						 url:'delMerTransAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									merTrans_list.buildQueryParams();
									$('#dg_merTrans').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delMerTransFrom').submit();
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
	merTrans_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细MerTrans',
		    width: 800,
		    height: 500,
		    href: 'detailMerTransPage.action',
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