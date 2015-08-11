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
														<td>mid</td>
								<td>
									<input type="text" id="search_mid" name="search_mid" class="easyui-textbox" value="${search_mid}"/>
								</td>
								<td>mer_type</td>
								<td>
									<input type="text" id="search_mer_type" name="search_mer_type" class="easyui-textbox" value="${search_mer_type}"/>
								</td>
								<td>mer_sys_id</td>
								<td>
									<input type="text" id="search_mer_sys_id" name="search_mer_sys_id" class="easyui-textbox" value="${search_mer_sys_id}"/>
								</td>
								<td>sub_mer_name</td>
								<td>
									<input type="text" id="search_sub_mer_name" name="search_sub_mer_name" class="easyui-textbox" value="${search_sub_mer_name}"/>
								</td>
								<td>debit_per_card_quota</td>
								<td>
									<input type="text" id="search_debit_per_card_quota" name="search_debit_per_card_quota" class="easyui-textbox" value="${search_debit_per_card_quota}"/>
								</td>
								<td>debit_card_quota</td>
								<td>
									<input type="text" id="search_debit_card_quota" name="search_debit_card_quota" class="easyui-textbox" value="${search_debit_card_quota}"/>
								</td>
								<td>debit_card_count</td>
								<td>
									<input type="text" id="search_debit_card_count" name="search_debit_card_count" class="easyui-textbox" value="${search_debit_card_count}"/>
								</td>
								<td>credit_per_card_quota</td>
								<td>
									<input type="text" id="search_credit_per_card_quota" name="search_credit_per_card_quota" class="easyui-textbox" value="${search_credit_per_card_quota}"/>
								</td>
								<td>credit_card_quota</td>
								<td>
									<input type="text" id="search_credit_card_quota" name="search_credit_card_quota" class="easyui-textbox" value="${search_credit_card_quota}"/>
								</td>
								<td>credit_card_count</td>
								<td>
									<input type="text" id="search_credit_card_count" name="search_credit_card_count" class="easyui-textbox" value="${search_credit_card_count}"/>
								</td>
								<td>terminal_card_quota</td>
								<td>
									<input type="text" id="search_terminal_card_quota" name="search_terminal_card_quota" class="easyui-textbox" value="${search_terminal_card_quota}"/>
								</td>
								<td>transfer_per_card_quota</td>
								<td>
									<input type="text" id="search_transfer_per_card_quota" name="search_transfer_per_card_quota" class="easyui-textbox" value="${search_transfer_per_card_quota}"/>
								</td>
								<td>transfer_card_quota</td>
								<td>
									<input type="text" id="search_transfer_card_quota" name="search_transfer_card_quota" class="easyui-textbox" value="${search_transfer_card_quota}"/>
								</td>
								<td>transfer_card_count</td>
								<td>
									<input type="text" id="search_transfer_card_count" name="search_transfer_card_count" class="easyui-textbox" value="${search_transfer_card_count}"/>
								</td>
								<td>terminal_transfer_card_quota</td>
								<td>
									<input type="text" id="search_terminal_transfer_card_quota" name="search_terminal_transfer_card_quota" class="easyui-textbox" value="${search_terminal_transfer_card_quota}"/>
								</td>
								<td>pay_credit_per_card_quota</td>
								<td>
									<input type="text" id="search_pay_credit_per_card_quota" name="search_pay_credit_per_card_quota" class="easyui-textbox" value="${search_pay_credit_per_card_quota}"/>
								</td>
								<td>pay_credit_card_quota</td>
								<td>
									<input type="text" id="search_pay_credit_card_quota" name="search_pay_credit_card_quota" class="easyui-textbox" value="${search_pay_credit_card_quota}"/>
								</td>
								<td>pay_credit_card_count</td>
								<td>
									<input type="text" id="search_pay_credit_card_count" name="search_pay_credit_card_count" class="easyui-textbox" value="${search_pay_credit_card_count}"/>
								</td>
								<td>trans_time_begin</td>
								<td>
									<input type="text" id="search_trans_time_begin" name="search_trans_time_begin" class="easyui-textbox" value="${search_trans_time_begin}"/>
								</td>
								<td>trans_time_end</td>
								<td>
									<input type="text" id="search_trans_time_end" name="search_trans_time_end" class="easyui-textbox" value="${search_trans_time_end}"/>
								</td>
								<td>trans_rules</td>
								<td>
									<input type="text" id="search_trans_rules" name="search_trans_rules" class="easyui-textbox" value="${search_trans_rules}"/>
								</td>
								<td>query_credit_card_count</td>
								<td>
									<input type="text" id="search_query_credit_card_count" name="search_query_credit_card_count" class="easyui-textbox" value="${search_query_credit_card_count}"/>
								</td>
								<td>query_debit_card_count</td>
								<td>
									<input type="text" id="search_query_debit_card_count" name="search_query_debit_card_count" class="easyui-textbox" value="${search_query_debit_card_count}"/>
								</td>
								<td>mer_trans_quota</td>
								<td>
									<input type="text" id="search_mer_trans_quota" name="search_mer_trans_quota" class="easyui-textbox" value="${search_mer_trans_quota}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_merRisk" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'MID',width:120,sortable:'true',align:'left'">mid</th>
							<th data-options="field:'MER_TYPE',width:120,sortable:'true',align:'left'">mer_type</th>
							<th data-options="field:'MER_SYS_ID',width:120,sortable:'true',align:'left'">mer_sys_id</th>
							<th data-options="field:'SUB_MER_NAME',width:120,sortable:'true',align:'left'">sub_mer_name</th>
							<th data-options="field:'DEBIT_PER_CARD_QUOTA',width:120,sortable:'true',align:'left'">debit_per_card_quota</th>
							<th data-options="field:'DEBIT_CARD_QUOTA',width:120,sortable:'true',align:'left'">debit_card_quota</th>
							<th data-options="field:'DEBIT_CARD_COUNT',width:120,sortable:'true',align:'left'">debit_card_count</th>
							<th data-options="field:'CREDIT_PER_CARD_QUOTA',width:120,sortable:'true',align:'left'">credit_per_card_quota</th>
							<th data-options="field:'CREDIT_CARD_QUOTA',width:120,sortable:'true',align:'left'">credit_card_quota</th>
							<th data-options="field:'CREDIT_CARD_COUNT',width:120,sortable:'true',align:'left'">credit_card_count</th>
							<th data-options="field:'TERMINAL_CARD_QUOTA',width:120,sortable:'true',align:'left'">terminal_card_quota</th>
							<th data-options="field:'TRANSFER_PER_CARD_QUOTA',width:120,sortable:'true',align:'left'">transfer_per_card_quota</th>
							<th data-options="field:'TRANSFER_CARD_QUOTA',width:120,sortable:'true',align:'left'">transfer_card_quota</th>
							<th data-options="field:'TRANSFER_CARD_COUNT',width:120,sortable:'true',align:'left'">transfer_card_count</th>
							<th data-options="field:'TERMINAL_TRANSFER_CARD_QUOTA',width:120,sortable:'true',align:'left'">terminal_transfer_card_quota</th>
							<th data-options="field:'PAY_CREDIT_PER_CARD_QUOTA',width:120,sortable:'true',align:'left'">pay_credit_per_card_quota</th>
							<th data-options="field:'PAY_CREDIT_CARD_QUOTA',width:120,sortable:'true',align:'left'">pay_credit_card_quota</th>
							<th data-options="field:'PAY_CREDIT_CARD_COUNT',width:120,sortable:'true',align:'left'">pay_credit_card_count</th>
							<th data-options="field:'TRANS_TIME_BEGIN',width:120,sortable:'true',align:'left'">trans_time_begin</th>
							<th data-options="field:'TRANS_TIME_END',width:120,sortable:'true',align:'left'">trans_time_end</th>
							<th data-options="field:'TRANS_RULES',width:120,sortable:'true',align:'left'">trans_rules</th>
							<th data-options="field:'QUERY_CREDIT_CARD_COUNT',width:120,sortable:'true',align:'left'">query_credit_card_count</th>
							<th data-options="field:'QUERY_DEBIT_CARD_COUNT',width:120,sortable:'true',align:'left'">query_debit_card_count</th>
							<th data-options="field:'MER_TRANS_QUOTA',width:120,sortable:'true',align:'left'">mer_trans_quota</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var merRisk_list ={};
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
	merRisk_list.buildQueryParams=function(){
	    $('#dg_merRisk').datagrid({
			queryParams: {
						 'search_mid':$("input[name='search_mid']").val(),
						 'search_mer_type':$("input[name='search_mer_type']").val(),
						 'search_mer_sys_id':$("input[name='search_mer_sys_id']").val(),
						 'search_sub_mer_name':$("input[name='search_sub_mer_name']").val(),
						 'search_debit_per_card_quota':$("input[name='search_debit_per_card_quota']").val(),
						 'search_debit_card_quota':$("input[name='search_debit_card_quota']").val(),
						 'search_debit_card_count':$("input[name='search_debit_card_count']").val(),
						 'search_credit_per_card_quota':$("input[name='search_credit_per_card_quota']").val(),
						 'search_credit_card_quota':$("input[name='search_credit_card_quota']").val(),
						 'search_credit_card_count':$("input[name='search_credit_card_count']").val(),
						 'search_terminal_card_quota':$("input[name='search_terminal_card_quota']").val(),
						 'search_transfer_per_card_quota':$("input[name='search_transfer_per_card_quota']").val(),
						 'search_transfer_card_quota':$("input[name='search_transfer_card_quota']").val(),
						 'search_transfer_card_count':$("input[name='search_transfer_card_count']").val(),
						 'search_terminal_transfer_card_quota':$("input[name='search_terminal_transfer_card_quota']").val(),
						 'search_pay_credit_per_card_quota':$("input[name='search_pay_credit_per_card_quota']").val(),
						 'search_pay_credit_card_quota':$("input[name='search_pay_credit_card_quota']").val(),
						 'search_pay_credit_card_count':$("input[name='search_pay_credit_card_count']").val(),
						 'search_trans_time_begin':$("input[name='search_trans_time_begin']").val(),
						 'search_trans_time_end':$("input[name='search_trans_time_end']").val(),
						 'search_trans_rules':$("input[name='search_trans_rules']").val(),
						 'search_query_credit_card_count':$("input[name='search_query_credit_card_count']").val(),
						 'search_query_debit_card_count':$("input[name='search_query_debit_card_count']").val(),
						 'search_mer_trans_quota':$("input[name='search_mer_trans_quota']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		merRisk_list.buildQueryParams();
		$('#dg_merRisk').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_mid']").val("");
			$("input[name='search_mer_type']").val("");
			$("input[name='search_mer_sys_id']").val("");
			$("input[name='search_sub_mer_name']").val("");
			$("input[name='search_debit_per_card_quota']").val("");
			$("input[name='search_debit_card_quota']").val("");
			$("input[name='search_debit_card_count']").val("");
			$("input[name='search_credit_per_card_quota']").val("");
			$("input[name='search_credit_card_quota']").val("");
			$("input[name='search_credit_card_count']").val("");
			$("input[name='search_terminal_card_quota']").val("");
			$("input[name='search_transfer_per_card_quota']").val("");
			$("input[name='search_transfer_card_quota']").val("");
			$("input[name='search_transfer_card_count']").val("");
			$("input[name='search_terminal_transfer_card_quota']").val("");
			$("input[name='search_pay_credit_per_card_quota']").val("");
			$("input[name='search_pay_credit_card_quota']").val("");
			$("input[name='search_pay_credit_card_count']").val("");
			$("input[name='search_trans_time_begin']").val("");
			$("input[name='search_trans_time_end']").val("");
			$("input[name='search_trans_rules']").val("");
			$("input[name='search_query_credit_card_count']").val("");
			$("input[name='search_query_debit_card_count']").val("");
			$("input[name='search_mer_trans_quota']").val("");
		merRisk_list.buildQueryParams();
		$('#dg_merRisk').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addMerRiskFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'MER_RISK',
		    width: 800,
		    height: 500,
		    href: 'addMerRiskPage.action',
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
		    		$('#addMerRiskFrom').form({   
						 url:'addMerRiskAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									merRisk_list.buildQueryParams();
									$('#dg_merRisk').datagrid('load');
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
	merRisk_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editMerRiskFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'MerRisk',
		    width: 800,
		    height: 500,
		    href: 'editMerRiskPage.action',
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
		   				$('#editMerRiskFrom').form({   
						 url:'editMerRiskAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									merRisk_list.buildQueryParams();
									$('#dg_merRisk').datagrid('load');
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
		     			$('#delMerRiskFrom').form({   
						 url:'delMerRiskAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									merRisk_list.buildQueryParams();
									$('#dg_merRisk').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delMerRiskFrom').submit();
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
	merRisk_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细MerRisk',
		    width: 800,
		    height: 500,
		    href: 'detailMerRiskPage.action',
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