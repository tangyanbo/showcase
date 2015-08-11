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
														<td>app_tract_id</td>
								<td>
									<input type="text" id="search_app_tract_id" name="search_app_tract_id" class="easyui-textbox" value="${search_app_tract_id}"/>
								</td>
								<td>app_tract_name</td>
								<td>
									<input type="text" id="search_app_tract_name" name="search_app_tract_name" class="easyui-textbox" value="${search_app_tract_name}"/>
								</td>
								<td>trans_mer_id</td>
								<td>
									<input type="text" id="search_trans_mer_id" name="search_trans_mer_id" class="easyui-textbox" value="${search_trans_mer_id}"/>
								</td>
								<td>pay_tract</td>
								<td>
									<input type="text" id="search_pay_tract" name="search_pay_tract" class="easyui-textbox" value="${search_pay_tract}"/>
								</td>
								<td>trans_rate_cost</td>
								<td>
									<input type="text" id="search_trans_rate_cost" name="search_trans_rate_cost" class="easyui-textbox" value="${search_trans_rate_cost}"/>
								</td>
								<td>trans_lowest_cost</td>
								<td>
									<input type="text" id="search_trans_lowest_cost" name="search_trans_lowest_cost" class="easyui-textbox" value="${search_trans_lowest_cost}"/>
								</td>
								<td>trans_highest_cost</td>
								<td>
									<input type="text" id="search_trans_highest_cost" name="search_trans_highest_cost" class="easyui-textbox" value="${search_trans_highest_cost}"/>
								</td>
								<td>bypay_profit</td>
								<td>
									<input type="text" id="search_bypay_profit" name="search_bypay_profit" class="easyui-textbox" value="${search_bypay_profit}"/>
								</td>
								<td>status</td>
								<td>
									<input type="text" id="search_status" name="search_status" class="easyui-textbox" value="${search_status}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>remark</td>
								<td>
									<input type="text" id="search_remark" name="search_remark" class="easyui-textbox" value="${search_remark}"/>
								</td>
								<td>reserved</td>
								<td>
									<input type="text" id="search_reserved" name="search_reserved" class="easyui-textbox" value="${search_reserved}"/>
								</td>
								<td>per_card_quota</td>
								<td>
									<input type="text" id="search_per_card_quota" name="search_per_card_quota" class="easyui-textbox" value="${search_per_card_quota}"/>
								</td>
								<td>card_quota</td>
								<td>
									<input type="text" id="search_card_quota" name="search_card_quota" class="easyui-textbox" value="${search_card_quota}"/>
								</td>
								<td>card_count</td>
								<td>
									<input type="text" id="search_card_count" name="search_card_count" class="easyui-textbox" value="${search_card_count}"/>
								</td>
								<td>trans_time_begin</td>
								<td>
									<input type="text" id="search_trans_time_begin" name="search_trans_time_begin" class="easyui-textbox" value="${search_trans_time_begin}"/>
								</td>
								<td>trans_time_end</td>
								<td>
									<input type="text" id="search_trans_time_end" name="search_trans_time_end" class="easyui-textbox" value="${search_trans_time_end}"/>
								</td>
								<td>tract_type</td>
								<td>
									<input type="text" id="search_tract_type" name="search_tract_type" class="easyui-textbox" value="${search_tract_type}"/>
								</td>
								<td>terminal_id</td>
								<td>
									<input type="text" id="search_terminal_id" name="search_terminal_id" class="easyui-textbox" value="${search_terminal_id}"/>
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
				<table  id="dg_appTractInfo" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'APP_TRACT_ID',width:120,sortable:'true',align:'left'">app_tract_id</th>
							<th data-options="field:'APP_TRACT_NAME',width:120,sortable:'true',align:'left'">app_tract_name</th>
							<th data-options="field:'TRANS_MER_ID',width:120,sortable:'true',align:'left'">trans_mer_id</th>
							<th data-options="field:'PAY_TRACT',width:120,sortable:'true',align:'left'">pay_tract</th>
							<th data-options="field:'TRANS_RATE_COST',width:120,sortable:'true',align:'left'">trans_rate_cost</th>
							<th data-options="field:'TRANS_LOWEST_COST',width:120,sortable:'true',align:'left'">trans_lowest_cost</th>
							<th data-options="field:'TRANS_HIGHEST_COST',width:120,sortable:'true',align:'left'">trans_highest_cost</th>
							<th data-options="field:'BYPAY_PROFIT',width:120,sortable:'true',align:'left'">bypay_profit</th>
							<th data-options="field:'STATUS',width:120,sortable:'true',align:'left'">status</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'REMARK',width:120,sortable:'true',align:'left'">remark</th>
							<th data-options="field:'RESERVED',width:120,sortable:'true',align:'left'">reserved</th>
							<th data-options="field:'PER_CARD_QUOTA',width:120,sortable:'true',align:'left'">per_card_quota</th>
							<th data-options="field:'CARD_QUOTA',width:120,sortable:'true',align:'left'">card_quota</th>
							<th data-options="field:'CARD_COUNT',width:120,sortable:'true',align:'left'">card_count</th>
							<th data-options="field:'TRANS_TIME_BEGIN',width:120,sortable:'true',align:'left'">trans_time_begin</th>
							<th data-options="field:'TRANS_TIME_END',width:120,sortable:'true',align:'left'">trans_time_end</th>
							<th data-options="field:'TRACT_TYPE',width:120,sortable:'true',align:'left'">tract_type</th>
							<th data-options="field:'TERMINAL_ID',width:120,sortable:'true',align:'left'">terminal_id</th>
							<th data-options="field:'SPID',width:120,sortable:'true',align:'left'">spid</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var appTractInfo_list ={};
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
	appTractInfo_list.buildQueryParams=function(){
	    $('#dg_appTractInfo').datagrid({
			queryParams: {
						 'search_app_tract_id':$("input[name='search_app_tract_id']").val(),
						 'search_app_tract_name':$("input[name='search_app_tract_name']").val(),
						 'search_trans_mer_id':$("input[name='search_trans_mer_id']").val(),
						 'search_pay_tract':$("input[name='search_pay_tract']").val(),
						 'search_trans_rate_cost':$("input[name='search_trans_rate_cost']").val(),
						 'search_trans_lowest_cost':$("input[name='search_trans_lowest_cost']").val(),
						 'search_trans_highest_cost':$("input[name='search_trans_highest_cost']").val(),
						 'search_bypay_profit':$("input[name='search_bypay_profit']").val(),
						 'search_status':$("input[name='search_status']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_remark':$("input[name='search_remark']").val(),
						 'search_reserved':$("input[name='search_reserved']").val(),
						 'search_per_card_quota':$("input[name='search_per_card_quota']").val(),
						 'search_card_quota':$("input[name='search_card_quota']").val(),
						 'search_card_count':$("input[name='search_card_count']").val(),
						 'search_trans_time_begin':$("input[name='search_trans_time_begin']").val(),
						 'search_trans_time_end':$("input[name='search_trans_time_end']").val(),
						 'search_tract_type':$("input[name='search_tract_type']").val(),
						 'search_terminal_id':$("input[name='search_terminal_id']").val(),
						 'search_spid':$("input[name='search_spid']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		appTractInfo_list.buildQueryParams();
		$('#dg_appTractInfo').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_app_tract_id']").val("");
			$("input[name='search_app_tract_name']").val("");
			$("input[name='search_trans_mer_id']").val("");
			$("input[name='search_pay_tract']").val("");
			$("input[name='search_trans_rate_cost']").val("");
			$("input[name='search_trans_lowest_cost']").val("");
			$("input[name='search_trans_highest_cost']").val("");
			$("input[name='search_bypay_profit']").val("");
			$("input[name='search_status']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_remark']").val("");
			$("input[name='search_reserved']").val("");
			$("input[name='search_per_card_quota']").val("");
			$("input[name='search_card_quota']").val("");
			$("input[name='search_card_count']").val("");
			$("input[name='search_trans_time_begin']").val("");
			$("input[name='search_trans_time_end']").val("");
			$("input[name='search_tract_type']").val("");
			$("input[name='search_terminal_id']").val("");
			$("input[name='search_spid']").val("");
		appTractInfo_list.buildQueryParams();
		$('#dg_appTractInfo').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addAppTractInfoFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'APP_TRACT_INFO',
		    width: 800,
		    height: 500,
		    href: 'addAppTractInfoPage.action',
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
		    		$('#addAppTractInfoFrom').form({   
						 url:'addAppTractInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									appTractInfo_list.buildQueryParams();
									$('#dg_appTractInfo').datagrid('load');
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
	appTractInfo_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editAppTractInfoFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'AppTractInfo',
		    width: 800,
		    height: 500,
		    href: 'editAppTractInfoPage.action',
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
		   				$('#editAppTractInfoFrom').form({   
						 url:'editAppTractInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									appTractInfo_list.buildQueryParams();
									$('#dg_appTractInfo').datagrid('load');
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
		     			$('#delAppTractInfoFrom').form({   
						 url:'delAppTractInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									appTractInfo_list.buildQueryParams();
									$('#dg_appTractInfo').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delAppTractInfoFrom').submit();
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
	appTractInfo_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细AppTractInfo',
		    width: 800,
		    height: 500,
		    href: 'detailAppTractInfoPage.action',
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