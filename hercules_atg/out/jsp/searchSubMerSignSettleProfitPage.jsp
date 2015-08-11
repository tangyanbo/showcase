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
								<td>sub_mer_id</td>
								<td>
									<input type="text" id="search_sub_mer_id" name="search_sub_mer_id" class="easyui-textbox" value="${search_sub_mer_id}"/>
								</td>
								<td>mer_sys_id</td>
								<td>
									<input type="text" id="search_mer_sys_id" name="search_mer_sys_id" class="easyui-textbox" value="${search_mer_sys_id}"/>
								</td>
								<td>sub_mer_sign_rate</td>
								<td>
									<input type="text" id="search_sub_mer_sign_rate" name="search_sub_mer_sign_rate" class="easyui-textbox" value="${search_sub_mer_sign_rate}"/>
								</td>
								<td>sub_mer_sign_high_fee</td>
								<td>
									<input type="text" id="search_sub_mer_sign_high_fee" name="search_sub_mer_sign_high_fee" class="easyui-textbox" value="${search_sub_mer_sign_high_fee}"/>
								</td>
								<td>sub_mer_trans_rate</td>
								<td>
									<input type="text" id="search_sub_mer_trans_rate" name="search_sub_mer_trans_rate" class="easyui-textbox" value="${search_sub_mer_trans_rate}"/>
								</td>
								<td>sub_mer_trans_high_fee</td>
								<td>
									<input type="text" id="search_sub_mer_trans_high_fee" name="search_sub_mer_trans_high_fee" class="easyui-textbox" value="${search_sub_mer_trans_high_fee}"/>
								</td>
								<td>create_date</td>
								<td>
									<input type="text" id="search_create_date" name="search_create_date" class="easyui-textbox" value="${search_create_date}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>profit_date</td>
								<td>
									<input type="text" id="search_profit_date" name="search_profit_date" class="easyui-textbox" value="${search_profit_date}"/>
								</td>
								<td>profit_time</td>
								<td>
									<input type="text" id="search_profit_time" name="search_profit_time" class="easyui-textbox" value="${search_profit_time}"/>
								</td>
								<td>profit</td>
								<td>
									<input type="text" id="search_profit" name="search_profit" class="easyui-textbox" value="${search_profit}"/>
								</td>
								<td>trans_type</td>
								<td>
									<input type="text" id="search_trans_type" name="search_trans_type" class="easyui-textbox" value="${search_trans_type}"/>
								</td>
								<td>status</td>
								<td>
									<input type="text" id="search_status" name="search_status" class="easyui-textbox" value="${search_status}"/>
								</td>
								<td>desc</td>
								<td>
									<input type="text" id="search_desc" name="search_desc" class="easyui-textbox" value="${search_desc}"/>
								</td>
								<td>reserved</td>
								<td>
									<input type="text" id="search_reserved" name="search_reserved" class="easyui-textbox" value="${search_reserved}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_subMerSignSettleProfit" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'ID',width:120,sortable:'true',align:'left'">id</th>
							<th data-options="field:'ORDER_ID',width:120,sortable:'true',align:'left'">order_id</th>
							<th data-options="field:'SUB_MER_ID',width:120,sortable:'true',align:'left'">sub_mer_id</th>
							<th data-options="field:'MER_SYS_ID',width:120,sortable:'true',align:'left'">mer_sys_id</th>
							<th data-options="field:'SUB_MER_SIGN_RATE',width:120,sortable:'true',align:'left'">sub_mer_sign_rate</th>
							<th data-options="field:'SUB_MER_SIGN_HIGH_FEE',width:120,sortable:'true',align:'left'">sub_mer_sign_high_fee</th>
							<th data-options="field:'SUB_MER_TRANS_RATE',width:120,sortable:'true',align:'left'">sub_mer_trans_rate</th>
							<th data-options="field:'SUB_MER_TRANS_HIGH_FEE',width:120,sortable:'true',align:'left'">sub_mer_trans_high_fee</th>
							<th data-options="field:'CREATE_DATE',width:120,sortable:'true',align:'left'">create_date</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'PROFIT_DATE',width:120,sortable:'true',align:'left'">profit_date</th>
							<th data-options="field:'PROFIT_TIME',width:120,sortable:'true',align:'left'">profit_time</th>
							<th data-options="field:'PROFIT',width:120,sortable:'true',align:'left'">profit</th>
							<th data-options="field:'TRANS_TYPE',width:120,sortable:'true',align:'left'">trans_type</th>
							<th data-options="field:'STATUS',width:120,sortable:'true',align:'left'">status</th>
							<th data-options="field:'DESC',width:120,sortable:'true',align:'left'">desc</th>
							<th data-options="field:'RESERVED',width:120,sortable:'true',align:'left'">reserved</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var subMerSignSettleProfit_list ={};
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
	subMerSignSettleProfit_list.buildQueryParams=function(){
	    $('#dg_subMerSignSettleProfit').datagrid({
			queryParams: {
						 'search_id':$("input[name='search_id']").val(),
						 'search_order_id':$("input[name='search_order_id']").val(),
						 'search_sub_mer_id':$("input[name='search_sub_mer_id']").val(),
						 'search_mer_sys_id':$("input[name='search_mer_sys_id']").val(),
						 'search_sub_mer_sign_rate':$("input[name='search_sub_mer_sign_rate']").val(),
						 'search_sub_mer_sign_high_fee':$("input[name='search_sub_mer_sign_high_fee']").val(),
						 'search_sub_mer_trans_rate':$("input[name='search_sub_mer_trans_rate']").val(),
						 'search_sub_mer_trans_high_fee':$("input[name='search_sub_mer_trans_high_fee']").val(),
						 'search_create_date':$("input[name='search_create_date']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_profit_date':$("input[name='search_profit_date']").val(),
						 'search_profit_time':$("input[name='search_profit_time']").val(),
						 'search_profit':$("input[name='search_profit']").val(),
						 'search_trans_type':$("input[name='search_trans_type']").val(),
						 'search_status':$("input[name='search_status']").val(),
						 'search_desc':$("input[name='search_desc']").val(),
						 'search_reserved':$("input[name='search_reserved']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		subMerSignSettleProfit_list.buildQueryParams();
		$('#dg_subMerSignSettleProfit').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_id']").val("");
			$("input[name='search_order_id']").val("");
			$("input[name='search_sub_mer_id']").val("");
			$("input[name='search_mer_sys_id']").val("");
			$("input[name='search_sub_mer_sign_rate']").val("");
			$("input[name='search_sub_mer_sign_high_fee']").val("");
			$("input[name='search_sub_mer_trans_rate']").val("");
			$("input[name='search_sub_mer_trans_high_fee']").val("");
			$("input[name='search_create_date']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_profit_date']").val("");
			$("input[name='search_profit_time']").val("");
			$("input[name='search_profit']").val("");
			$("input[name='search_trans_type']").val("");
			$("input[name='search_status']").val("");
			$("input[name='search_desc']").val("");
			$("input[name='search_reserved']").val("");
		subMerSignSettleProfit_list.buildQueryParams();
		$('#dg_subMerSignSettleProfit').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addSubMerSignSettleProfitFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'SUB_MER_SIGN_SETTLE_PROFIT',
		    width: 800,
		    height: 500,
		    href: 'addSubMerSignSettleProfitPage.action',
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
		    		$('#addSubMerSignSettleProfitFrom').form({   
						 url:'addSubMerSignSettleProfitAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									subMerSignSettleProfit_list.buildQueryParams();
									$('#dg_subMerSignSettleProfit').datagrid('load');
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
	subMerSignSettleProfit_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editSubMerSignSettleProfitFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'SubMerSignSettleProfit',
		    width: 800,
		    height: 500,
		    href: 'editSubMerSignSettleProfitPage.action',
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
		   				$('#editSubMerSignSettleProfitFrom').form({   
						 url:'editSubMerSignSettleProfitAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									subMerSignSettleProfit_list.buildQueryParams();
									$('#dg_subMerSignSettleProfit').datagrid('load');
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
		     			$('#delSubMerSignSettleProfitFrom').form({   
						 url:'delSubMerSignSettleProfitAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									subMerSignSettleProfit_list.buildQueryParams();
									$('#dg_subMerSignSettleProfit').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delSubMerSignSettleProfitFrom').submit();
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
	subMerSignSettleProfit_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细SubMerSignSettleProfit',
		    width: 800,
		    height: 500,
		    href: 'detailSubMerSignSettleProfitPage.action',
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