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
														<td>sub_mer_id</td>
								<td>
									<input type="text" id="search_sub_mer_id" name="search_sub_mer_id" class="easyui-textbox" value="${search_sub_mer_id}"/>
								</td>
								<td>rate_type</td>
								<td>
									<input type="text" id="search_rate_type" name="search_rate_type" class="easyui-textbox" value="${search_rate_type}"/>
								</td>
								<td>trans_rate</td>
								<td>
									<input type="text" id="search_trans_rate" name="search_trans_rate" class="easyui-textbox" value="${search_trans_rate}"/>
								</td>
								<td>trans_rate_h</td>
								<td>
									<input type="text" id="search_trans_rate_h" name="search_trans_rate_h" class="easyui-textbox" value="${search_trans_rate_h}"/>
								</td>
								<td>trans_highest_fee</td>
								<td>
									<input type="text" id="search_trans_highest_fee" name="search_trans_highest_fee" class="easyui-textbox" value="${search_trans_highest_fee}"/>
								</td>
								<td>lowest_fee</td>
								<td>
									<input type="text" id="search_lowest_fee" name="search_lowest_fee" class="easyui-textbox" value="${search_lowest_fee}"/>
								</td>
								<td>agent_l1_rate</td>
								<td>
									<input type="text" id="search_agent_l1_rate" name="search_agent_l1_rate" class="easyui-textbox" value="${search_agent_l1_rate}"/>
								</td>
								<td>agent_l1_rate_h</td>
								<td>
									<input type="text" id="search_agent_l1_rate_h" name="search_agent_l1_rate_h" class="easyui-textbox" value="${search_agent_l1_rate_h}"/>
								</td>
								<td>agent_l1_highest_fee</td>
								<td>
									<input type="text" id="search_agent_l1_highest_fee" name="search_agent_l1_highest_fee" class="easyui-textbox" value="${search_agent_l1_highest_fee}"/>
								</td>
								<td>agent_l1_profit_rate</td>
								<td>
									<input type="text" id="search_agent_l1_profit_rate" name="search_agent_l1_profit_rate" class="easyui-textbox" value="${search_agent_l1_profit_rate}"/>
								</td>
								<td>agent_l2_rate</td>
								<td>
									<input type="text" id="search_agent_l2_rate" name="search_agent_l2_rate" class="easyui-textbox" value="${search_agent_l2_rate}"/>
								</td>
								<td>agent_l2_rate_h</td>
								<td>
									<input type="text" id="search_agent_l2_rate_h" name="search_agent_l2_rate_h" class="easyui-textbox" value="${search_agent_l2_rate_h}"/>
								</td>
								<td>agent_l2_highest_fee</td>
								<td>
									<input type="text" id="search_agent_l2_highest_fee" name="search_agent_l2_highest_fee" class="easyui-textbox" value="${search_agent_l2_highest_fee}"/>
								</td>
								<td>agent_l2_profit_rate</td>
								<td>
									<input type="text" id="search_agent_l2_profit_rate" name="search_agent_l2_profit_rate" class="easyui-textbox" value="${search_agent_l2_profit_rate}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>status</td>
								<td>
									<input type="text" id="search_status" name="search_status" class="easyui-textbox" value="${search_status}"/>
								</td>
								<td>reserved</td>
								<td>
									<input type="text" id="search_reserved" name="search_reserved" class="easyui-textbox" value="${search_reserved}"/>
								</td>
								<td>sub_mer_tract</td>
								<td>
									<input type="text" id="search_sub_mer_tract" name="search_sub_mer_tract" class="easyui-textbox" value="${search_sub_mer_tract}"/>
								</td>
								<td>mcc_category_id</td>
								<td>
									<input type="text" id="search_mcc_category_id" name="search_mcc_category_id" class="easyui-textbox" value="${search_mcc_category_id}"/>
								</td>
								<td>sign_rate</td>
								<td>
									<input type="text" id="search_sign_rate" name="search_sign_rate" class="easyui-textbox" value="${search_sign_rate}"/>
								</td>
								<td>sign_rate_h</td>
								<td>
									<input type="text" id="search_sign_rate_h" name="search_sign_rate_h" class="easyui-textbox" value="${search_sign_rate_h}"/>
								</td>
								<td>sign_highest_fee</td>
								<td>
									<input type="text" id="search_sign_highest_fee" name="search_sign_highest_fee" class="easyui-textbox" value="${search_sign_highest_fee}"/>
								</td>
								<td>sign_lowest_fee</td>
								<td>
									<input type="text" id="search_sign_lowest_fee" name="search_sign_lowest_fee" class="easyui-textbox" value="${search_sign_lowest_fee}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_subMerRate" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'SUB_MER_ID',width:120,sortable:'true',align:'left'">sub_mer_id</th>
							<th data-options="field:'RATE_TYPE',width:120,sortable:'true',align:'left'">rate_type</th>
							<th data-options="field:'TRANS_RATE',width:120,sortable:'true',align:'left'">trans_rate</th>
							<th data-options="field:'TRANS_RATE_H',width:120,sortable:'true',align:'left'">trans_rate_h</th>
							<th data-options="field:'TRANS_HIGHEST_FEE',width:120,sortable:'true',align:'left'">trans_highest_fee</th>
							<th data-options="field:'LOWEST_FEE',width:120,sortable:'true',align:'left'">lowest_fee</th>
							<th data-options="field:'AGENT_L1_RATE',width:120,sortable:'true',align:'left'">agent_l1_rate</th>
							<th data-options="field:'AGENT_L1_RATE_H',width:120,sortable:'true',align:'left'">agent_l1_rate_h</th>
							<th data-options="field:'AGENT_L1_HIGHEST_FEE',width:120,sortable:'true',align:'left'">agent_l1_highest_fee</th>
							<th data-options="field:'AGENT_L1_PROFIT_RATE',width:120,sortable:'true',align:'left'">agent_l1_profit_rate</th>
							<th data-options="field:'AGENT_L2_RATE',width:120,sortable:'true',align:'left'">agent_l2_rate</th>
							<th data-options="field:'AGENT_L2_RATE_H',width:120,sortable:'true',align:'left'">agent_l2_rate_h</th>
							<th data-options="field:'AGENT_L2_HIGHEST_FEE',width:120,sortable:'true',align:'left'">agent_l2_highest_fee</th>
							<th data-options="field:'AGENT_L2_PROFIT_RATE',width:120,sortable:'true',align:'left'">agent_l2_profit_rate</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'STATUS',width:120,sortable:'true',align:'left'">status</th>
							<th data-options="field:'RESERVED',width:120,sortable:'true',align:'left'">reserved</th>
							<th data-options="field:'SUB_MER_TRACT',width:120,sortable:'true',align:'left'">sub_mer_tract</th>
							<th data-options="field:'MCC_CATEGORY_ID',width:120,sortable:'true',align:'left'">mcc_category_id</th>
							<th data-options="field:'SIGN_RATE',width:120,sortable:'true',align:'left'">sign_rate</th>
							<th data-options="field:'SIGN_RATE_H',width:120,sortable:'true',align:'left'">sign_rate_h</th>
							<th data-options="field:'SIGN_HIGHEST_FEE',width:120,sortable:'true',align:'left'">sign_highest_fee</th>
							<th data-options="field:'SIGN_LOWEST_FEE',width:120,sortable:'true',align:'left'">sign_lowest_fee</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var subMerRate_list ={};
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
	subMerRate_list.buildQueryParams=function(){
	    $('#dg_subMerRate').datagrid({
			queryParams: {
						 'search_sub_mer_id':$("input[name='search_sub_mer_id']").val(),
						 'search_rate_type':$("input[name='search_rate_type']").val(),
						 'search_trans_rate':$("input[name='search_trans_rate']").val(),
						 'search_trans_rate_h':$("input[name='search_trans_rate_h']").val(),
						 'search_trans_highest_fee':$("input[name='search_trans_highest_fee']").val(),
						 'search_lowest_fee':$("input[name='search_lowest_fee']").val(),
						 'search_agent_l1_rate':$("input[name='search_agent_l1_rate']").val(),
						 'search_agent_l1_rate_h':$("input[name='search_agent_l1_rate_h']").val(),
						 'search_agent_l1_highest_fee':$("input[name='search_agent_l1_highest_fee']").val(),
						 'search_agent_l1_profit_rate':$("input[name='search_agent_l1_profit_rate']").val(),
						 'search_agent_l2_rate':$("input[name='search_agent_l2_rate']").val(),
						 'search_agent_l2_rate_h':$("input[name='search_agent_l2_rate_h']").val(),
						 'search_agent_l2_highest_fee':$("input[name='search_agent_l2_highest_fee']").val(),
						 'search_agent_l2_profit_rate':$("input[name='search_agent_l2_profit_rate']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_status':$("input[name='search_status']").val(),
						 'search_reserved':$("input[name='search_reserved']").val(),
						 'search_sub_mer_tract':$("input[name='search_sub_mer_tract']").val(),
						 'search_mcc_category_id':$("input[name='search_mcc_category_id']").val(),
						 'search_sign_rate':$("input[name='search_sign_rate']").val(),
						 'search_sign_rate_h':$("input[name='search_sign_rate_h']").val(),
						 'search_sign_highest_fee':$("input[name='search_sign_highest_fee']").val(),
						 'search_sign_lowest_fee':$("input[name='search_sign_lowest_fee']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		subMerRate_list.buildQueryParams();
		$('#dg_subMerRate').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_sub_mer_id']").val("");
			$("input[name='search_rate_type']").val("");
			$("input[name='search_trans_rate']").val("");
			$("input[name='search_trans_rate_h']").val("");
			$("input[name='search_trans_highest_fee']").val("");
			$("input[name='search_lowest_fee']").val("");
			$("input[name='search_agent_l1_rate']").val("");
			$("input[name='search_agent_l1_rate_h']").val("");
			$("input[name='search_agent_l1_highest_fee']").val("");
			$("input[name='search_agent_l1_profit_rate']").val("");
			$("input[name='search_agent_l2_rate']").val("");
			$("input[name='search_agent_l2_rate_h']").val("");
			$("input[name='search_agent_l2_highest_fee']").val("");
			$("input[name='search_agent_l2_profit_rate']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_status']").val("");
			$("input[name='search_reserved']").val("");
			$("input[name='search_sub_mer_tract']").val("");
			$("input[name='search_mcc_category_id']").val("");
			$("input[name='search_sign_rate']").val("");
			$("input[name='search_sign_rate_h']").val("");
			$("input[name='search_sign_highest_fee']").val("");
			$("input[name='search_sign_lowest_fee']").val("");
		subMerRate_list.buildQueryParams();
		$('#dg_subMerRate').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addSubMerRateFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'SUB_MER_RATE',
		    width: 800,
		    height: 500,
		    href: 'addSubMerRatePage.action',
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
		    		$('#addSubMerRateFrom').form({   
						 url:'addSubMerRateAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									subMerRate_list.buildQueryParams();
									$('#dg_subMerRate').datagrid('load');
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
	subMerRate_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editSubMerRateFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'SubMerRate',
		    width: 800,
		    height: 500,
		    href: 'editSubMerRatePage.action',
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
		   				$('#editSubMerRateFrom').form({   
						 url:'editSubMerRateAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									subMerRate_list.buildQueryParams();
									$('#dg_subMerRate').datagrid('load');
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
		     			$('#delSubMerRateFrom').form({   
						 url:'delSubMerRateAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									subMerRate_list.buildQueryParams();
									$('#dg_subMerRate').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delSubMerRateFrom').submit();
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
	subMerRate_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细SubMerRate',
		    width: 800,
		    height: 500,
		    href: 'detailSubMerRatePage.action',
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