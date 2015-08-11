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
														<td>order_id</td>
								<td>
									<input type="text" id="search_order_id" name="search_order_id" class="easyui-textbox" value="${search_order_id}"/>
								</td>
								<td>trans_mer_id</td>
								<td>
									<input type="text" id="search_trans_mer_id" name="search_trans_mer_id" class="easyui-textbox" value="${search_trans_mer_id}"/>
								</td>
								<td>trans_ter_id</td>
								<td>
									<input type="text" id="search_trans_ter_id" name="search_trans_ter_id" class="easyui-textbox" value="${search_trans_ter_id}"/>
								</td>
								<td>channel_type</td>
								<td>
									<input type="text" id="search_channel_type" name="search_channel_type" class="easyui-textbox" value="${search_channel_type}"/>
								</td>
								<td>trans_amt</td>
								<td>
									<input type="text" id="search_trans_amt" name="search_trans_amt" class="easyui-textbox" value="${search_trans_amt}"/>
								</td>
								<td>trans_cur</td>
								<td>
									<input type="text" id="search_trans_cur" name="search_trans_cur" class="easyui-textbox" value="${search_trans_cur}"/>
								</td>
								<td>trans_time</td>
								<td>
									<input type="text" id="search_trans_time" name="search_trans_time" class="easyui-textbox" value="${search_trans_time}"/>
								</td>
								<td>trans_status</td>
								<td>
									<input type="text" id="search_trans_status" name="search_trans_status" class="easyui-textbox" value="${search_trans_status}"/>
								</td>
								<td>trans_type</td>
								<td>
									<input type="text" id="search_trans_type" name="search_trans_type" class="easyui-textbox" value="${search_trans_type}"/>
								</td>
								<td>res_code</td>
								<td>
									<input type="text" id="search_res_code" name="search_res_code" class="easyui-textbox" value="${search_res_code}"/>
								</td>
								<td>res_desc</td>
								<td>
									<input type="text" id="search_res_desc" name="search_res_desc" class="easyui-textbox" value="${search_res_desc}"/>
								</td>
								<td>trans_qid</td>
								<td>
									<input type="text" id="search_trans_qid" name="search_trans_qid" class="easyui-textbox" value="${search_trans_qid}"/>
								</td>
								<td>trans_trace_number</td>
								<td>
									<input type="text" id="search_trans_trace_number" name="search_trans_trace_number" class="easyui-textbox" value="${search_trans_trace_number}"/>
								</td>
								<td>trans_trace_time</td>
								<td>
									<input type="text" id="search_trans_trace_time" name="search_trans_trace_time" class="easyui-textbox" value="${search_trans_trace_time}"/>
								</td>
								<td>settle_date</td>
								<td>
									<input type="text" id="search_settle_date" name="search_settle_date" class="easyui-textbox" value="${search_settle_date}"/>
								</td>
								<td>settle_amt</td>
								<td>
									<input type="text" id="search_settle_amt" name="search_settle_amt" class="easyui-textbox" value="${search_settle_amt}"/>
								</td>
								<td>settle_cur</td>
								<td>
									<input type="text" id="search_settle_cur" name="search_settle_cur" class="easyui-textbox" value="${search_settle_cur}"/>
								</td>
								<td>settle_conver_rate</td>
								<td>
									<input type="text" id="search_settle_conver_rate" name="search_settle_conver_rate" class="easyui-textbox" value="${search_settle_conver_rate}"/>
								</td>
								<td>mobile</td>
								<td>
									<input type="text" id="search_mobile" name="search_mobile" class="easyui-textbox" value="${search_mobile}"/>
								</td>
								<td>id_type</td>
								<td>
									<input type="text" id="search_id_type" name="search_id_type" class="easyui-textbox" value="${search_id_type}"/>
								</td>
								<td>id_no</td>
								<td>
									<input type="text" id="search_id_no" name="search_id_no" class="easyui-textbox" value="${search_id_no}"/>
								</td>
								<td>user_name</td>
								<td>
									<input type="text" id="search_user_name" name="search_user_name" class="easyui-textbox" value="${search_user_name}"/>
								</td>
								<td>bind_num</td>
								<td>
									<input type="text" id="search_bind_num" name="search_bind_num" class="easyui-textbox" value="${search_bind_num}"/>
								</td>
								<td>pan</td>
								<td>
									<input type="text" id="search_pan" name="search_pan" class="easyui-textbox" value="${search_pan}"/>
								</td>
								<td>card_type</td>
								<td>
									<input type="text" id="search_card_type" name="search_card_type" class="easyui-textbox" value="${search_card_type}"/>
								</td>
								<td>issbank_id</td>
								<td>
									<input type="text" id="search_issbank_id" name="search_issbank_id" class="easyui-textbox" value="${search_issbank_id}"/>
								</td>
								<td>issbank_name</td>
								<td>
									<input type="text" id="search_issbank_name" name="search_issbank_name" class="easyui-textbox" value="${search_issbank_name}"/>
								</td>
								<td>ch_info</td>
								<td>
									<input type="text" id="search_ch_info" name="search_ch_info" class="easyui-textbox" value="${search_ch_info}"/>
								</td>
								<td>account1</td>
								<td>
									<input type="text" id="search_account1" name="search_account1" class="easyui-textbox" value="${search_account1}"/>
								</td>
								<td>account2</td>
								<td>
									<input type="text" id="search_account2" name="search_account2" class="easyui-textbox" value="${search_account2}"/>
								</td>
								<td>org_order_id</td>
								<td>
									<input type="text" id="search_org_order_id" name="search_org_order_id" class="easyui-textbox" value="${search_org_order_id}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>modify_time</td>
								<td>
									<input type="text" id="search_modify_time" name="search_modify_time" class="easyui-textbox" value="${search_modify_time}"/>
								</td>
								<td>reserved</td>
								<td>
									<input type="text" id="search_reserved" name="search_reserved" class="easyui-textbox" value="${search_reserved}"/>
								</td>
								<td>ext</td>
								<td>
									<input type="text" id="search_ext" name="search_ext" class="easyui-textbox" value="${search_ext}"/>
								</td>
								<td>csn</td>
								<td>
									<input type="text" id="search_csn" name="search_csn" class="easyui-textbox" value="${search_csn}"/>
								</td>
								<td>trans_mer_name</td>
								<td>
									<input type="text" id="search_trans_mer_name" name="search_trans_mer_name" class="easyui-textbox" value="${search_trans_mer_name}"/>
								</td>
								<td>spid</td>
								<td>
									<input type="text" id="search_spid" name="search_spid" class="easyui-textbox" value="${search_spid}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_sucOrderInfoV21102" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'ORDER_ID',width:120,sortable:'true',align:'left'">order_id</th>
							<th data-options="field:'TRANS_MER_ID',width:120,sortable:'true',align:'left'">trans_mer_id</th>
							<th data-options="field:'TRANS_TER_ID',width:120,sortable:'true',align:'left'">trans_ter_id</th>
							<th data-options="field:'CHANNEL_TYPE',width:120,sortable:'true',align:'left'">channel_type</th>
							<th data-options="field:'TRANS_AMT',width:120,sortable:'true',align:'left'">trans_amt</th>
							<th data-options="field:'TRANS_CUR',width:120,sortable:'true',align:'left'">trans_cur</th>
							<th data-options="field:'TRANS_TIME',width:120,sortable:'true',align:'left'">trans_time</th>
							<th data-options="field:'TRANS_STATUS',width:120,sortable:'true',align:'left'">trans_status</th>
							<th data-options="field:'TRANS_TYPE',width:120,sortable:'true',align:'left'">trans_type</th>
							<th data-options="field:'RES_CODE',width:120,sortable:'true',align:'left'">res_code</th>
							<th data-options="field:'RES_DESC',width:120,sortable:'true',align:'left'">res_desc</th>
							<th data-options="field:'TRANS_QID',width:120,sortable:'true',align:'left'">trans_qid</th>
							<th data-options="field:'TRANS_TRACE_NUMBER',width:120,sortable:'true',align:'left'">trans_trace_number</th>
							<th data-options="field:'TRANS_TRACE_TIME',width:120,sortable:'true',align:'left'">trans_trace_time</th>
							<th data-options="field:'SETTLE_DATE',width:120,sortable:'true',align:'left'">settle_date</th>
							<th data-options="field:'SETTLE_AMT',width:120,sortable:'true',align:'left'">settle_amt</th>
							<th data-options="field:'SETTLE_CUR',width:120,sortable:'true',align:'left'">settle_cur</th>
							<th data-options="field:'SETTLE_CONVER_RATE',width:120,sortable:'true',align:'left'">settle_conver_rate</th>
							<th data-options="field:'MOBILE',width:120,sortable:'true',align:'left'">mobile</th>
							<th data-options="field:'ID_TYPE',width:120,sortable:'true',align:'left'">id_type</th>
							<th data-options="field:'ID_NO',width:120,sortable:'true',align:'left'">id_no</th>
							<th data-options="field:'USER_NAME',width:120,sortable:'true',align:'left'">user_name</th>
							<th data-options="field:'BIND_NUM',width:120,sortable:'true',align:'left'">bind_num</th>
							<th data-options="field:'PAN',width:120,sortable:'true',align:'left'">pan</th>
							<th data-options="field:'CARD_TYPE',width:120,sortable:'true',align:'left'">card_type</th>
							<th data-options="field:'ISSBANK_ID',width:120,sortable:'true',align:'left'">issbank_id</th>
							<th data-options="field:'ISSBANK_NAME',width:120,sortable:'true',align:'left'">issbank_name</th>
							<th data-options="field:'CH_INFO',width:120,sortable:'true',align:'left'">ch_info</th>
							<th data-options="field:'ACCOUNT1',width:120,sortable:'true',align:'left'">account1</th>
							<th data-options="field:'ACCOUNT2',width:120,sortable:'true',align:'left'">account2</th>
							<th data-options="field:'ORG_ORDER_ID',width:120,sortable:'true',align:'left'">org_order_id</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'MODIFY_TIME',width:120,sortable:'true',align:'left'">modify_time</th>
							<th data-options="field:'RESERVED',width:120,sortable:'true',align:'left'">reserved</th>
							<th data-options="field:'EXT',width:120,sortable:'true',align:'left'">ext</th>
							<th data-options="field:'CSN',width:120,sortable:'true',align:'left'">csn</th>
							<th data-options="field:'TRANS_MER_NAME',width:120,sortable:'true',align:'left'">trans_mer_name</th>
							<th data-options="field:'SPID',width:120,sortable:'true',align:'left'">spid</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var sucOrderInfoV21102_list ={};
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
	sucOrderInfoV21102_list.buildQueryParams=function(){
	    $('#dg_sucOrderInfoV21102').datagrid({
			queryParams: {
						 'search_order_id':$("input[name='search_order_id']").val(),
						 'search_trans_mer_id':$("input[name='search_trans_mer_id']").val(),
						 'search_trans_ter_id':$("input[name='search_trans_ter_id']").val(),
						 'search_channel_type':$("input[name='search_channel_type']").val(),
						 'search_trans_amt':$("input[name='search_trans_amt']").val(),
						 'search_trans_cur':$("input[name='search_trans_cur']").val(),
						 'search_trans_time':$("input[name='search_trans_time']").val(),
						 'search_trans_status':$("input[name='search_trans_status']").val(),
						 'search_trans_type':$("input[name='search_trans_type']").val(),
						 'search_res_code':$("input[name='search_res_code']").val(),
						 'search_res_desc':$("input[name='search_res_desc']").val(),
						 'search_trans_qid':$("input[name='search_trans_qid']").val(),
						 'search_trans_trace_number':$("input[name='search_trans_trace_number']").val(),
						 'search_trans_trace_time':$("input[name='search_trans_trace_time']").val(),
						 'search_settle_date':$("input[name='search_settle_date']").val(),
						 'search_settle_amt':$("input[name='search_settle_amt']").val(),
						 'search_settle_cur':$("input[name='search_settle_cur']").val(),
						 'search_settle_conver_rate':$("input[name='search_settle_conver_rate']").val(),
						 'search_mobile':$("input[name='search_mobile']").val(),
						 'search_id_type':$("input[name='search_id_type']").val(),
						 'search_id_no':$("input[name='search_id_no']").val(),
						 'search_user_name':$("input[name='search_user_name']").val(),
						 'search_bind_num':$("input[name='search_bind_num']").val(),
						 'search_pan':$("input[name='search_pan']").val(),
						 'search_card_type':$("input[name='search_card_type']").val(),
						 'search_issbank_id':$("input[name='search_issbank_id']").val(),
						 'search_issbank_name':$("input[name='search_issbank_name']").val(),
						 'search_ch_info':$("input[name='search_ch_info']").val(),
						 'search_account1':$("input[name='search_account1']").val(),
						 'search_account2':$("input[name='search_account2']").val(),
						 'search_org_order_id':$("input[name='search_org_order_id']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_modify_time':$("input[name='search_modify_time']").val(),
						 'search_reserved':$("input[name='search_reserved']").val(),
						 'search_ext':$("input[name='search_ext']").val(),
						 'search_csn':$("input[name='search_csn']").val(),
						 'search_trans_mer_name':$("input[name='search_trans_mer_name']").val(),
						 'search_spid':$("input[name='search_spid']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		sucOrderInfoV21102_list.buildQueryParams();
		$('#dg_sucOrderInfoV21102').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_order_id']").val("");
			$("input[name='search_trans_mer_id']").val("");
			$("input[name='search_trans_ter_id']").val("");
			$("input[name='search_channel_type']").val("");
			$("input[name='search_trans_amt']").val("");
			$("input[name='search_trans_cur']").val("");
			$("input[name='search_trans_time']").val("");
			$("input[name='search_trans_status']").val("");
			$("input[name='search_trans_type']").val("");
			$("input[name='search_res_code']").val("");
			$("input[name='search_res_desc']").val("");
			$("input[name='search_trans_qid']").val("");
			$("input[name='search_trans_trace_number']").val("");
			$("input[name='search_trans_trace_time']").val("");
			$("input[name='search_settle_date']").val("");
			$("input[name='search_settle_amt']").val("");
			$("input[name='search_settle_cur']").val("");
			$("input[name='search_settle_conver_rate']").val("");
			$("input[name='search_mobile']").val("");
			$("input[name='search_id_type']").val("");
			$("input[name='search_id_no']").val("");
			$("input[name='search_user_name']").val("");
			$("input[name='search_bind_num']").val("");
			$("input[name='search_pan']").val("");
			$("input[name='search_card_type']").val("");
			$("input[name='search_issbank_id']").val("");
			$("input[name='search_issbank_name']").val("");
			$("input[name='search_ch_info']").val("");
			$("input[name='search_account1']").val("");
			$("input[name='search_account2']").val("");
			$("input[name='search_org_order_id']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_modify_time']").val("");
			$("input[name='search_reserved']").val("");
			$("input[name='search_ext']").val("");
			$("input[name='search_csn']").val("");
			$("input[name='search_trans_mer_name']").val("");
			$("input[name='search_spid']").val("");
		sucOrderInfoV21102_list.buildQueryParams();
		$('#dg_sucOrderInfoV21102').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addSucOrderInfoV21102From';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'SUC_ORDER_INFO_V2_1102',
		    width: 800,
		    height: 500,
		    href: 'addSucOrderInfoV21102Page.action',
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
		    		$('#addSucOrderInfoV21102From').form({   
						 url:'addSucOrderInfoV21102Action.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									sucOrderInfoV21102_list.buildQueryParams();
									$('#dg_sucOrderInfoV21102').datagrid('load');
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
	sucOrderInfoV21102_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editSucOrderInfoV21102From';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'SucOrderInfoV21102',
		    width: 800,
		    height: 500,
		    href: 'editSucOrderInfoV21102Page.action',
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
		   				$('#editSucOrderInfoV21102From').form({   
						 url:'editSucOrderInfoV21102Action.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									sucOrderInfoV21102_list.buildQueryParams();
									$('#dg_sucOrderInfoV21102').datagrid('load');
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
		     			$('#delSucOrderInfoV21102From').form({   
						 url:'delSucOrderInfoV21102Action.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									sucOrderInfoV21102_list.buildQueryParams();
									$('#dg_sucOrderInfoV21102').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delSucOrderInfoV21102From').submit();
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
	sucOrderInfoV21102_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细SucOrderInfoV21102',
		    width: 800,
		    height: 500,
		    href: 'detailSucOrderInfoV21102Page.action',
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