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
														<td>bank_line_id</td>
								<td>
									<input type="text" id="search_bank_line_id" name="search_bank_line_id" class="easyui-textbox" value="${search_bank_line_id}"/>
								</td>
								<td>bank_line_number</td>
								<td>
									<input type="text" id="search_bank_line_number" name="search_bank_line_number" class="easyui-textbox" value="${search_bank_line_number}"/>
								</td>
								<td>bank_name</td>
								<td>
									<input type="text" id="search_bank_name" name="search_bank_name" class="easyui-textbox" value="${search_bank_name}"/>
								</td>
								<td>online_bank_number</td>
								<td>
									<input type="text" id="search_online_bank_number" name="search_online_bank_number" class="easyui-textbox" value="${search_online_bank_number}"/>
								</td>
								<td>settle_line_number</td>
								<td>
									<input type="text" id="search_settle_line_number" name="search_settle_line_number" class="easyui-textbox" value="${search_settle_line_number}"/>
								</td>
								<td>status</td>
								<td>
									<input type="text" id="search_status" name="search_status" class="easyui-textbox" value="${search_status}"/>
								</td>
								<td>interbank_settle_status</td>
								<td>
									<input type="text" id="search_interbank_settle_status" name="search_interbank_settle_status" class="easyui-textbox" value="${search_interbank_settle_status}"/>
								</td>
								<td>bank_type</td>
								<td>
									<input type="text" id="search_bank_type" name="search_bank_type" class="easyui-textbox" value="${search_bank_type}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>finish_time</td>
								<td>
									<input type="text" id="search_finish_time" name="search_finish_time" class="easyui-textbox" value="${search_finish_time}"/>
								</td>
								<td>keyword</td>
								<td>
									<input type="text" id="search_keyword" name="search_keyword" class="easyui-textbox" value="${search_keyword}"/>
								</td>
								<td>code</td>
								<td>
									<input type="text" id="search_code" name="search_code" class="easyui-textbox" value="${search_code}"/>
								</td>
								<td>with_holding_code</td>
								<td>
									<input type="text" id="search_with_holding_code" name="search_with_holding_code" class="easyui-textbox" value="${search_with_holding_code}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_bankBehalfBranch" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'BANK_LINE_ID',width:120,sortable:'true',align:'left'">bank_line_id</th>
							<th data-options="field:'BANK_LINE_NUMBER',width:120,sortable:'true',align:'left'">bank_line_number</th>
							<th data-options="field:'BANK_NAME',width:120,sortable:'true',align:'left'">bank_name</th>
							<th data-options="field:'ONLINE_BANK_NUMBER',width:120,sortable:'true',align:'left'">online_bank_number</th>
							<th data-options="field:'SETTLE_LINE_NUMBER',width:120,sortable:'true',align:'left'">settle_line_number</th>
							<th data-options="field:'STATUS',width:120,sortable:'true',align:'left'">status</th>
							<th data-options="field:'INTERBANK_SETTLE_STATUS',width:120,sortable:'true',align:'left'">interbank_settle_status</th>
							<th data-options="field:'BANK_TYPE',width:120,sortable:'true',align:'left'">bank_type</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'FINISH_TIME',width:120,sortable:'true',align:'left'">finish_time</th>
							<th data-options="field:'KEYWORD',width:120,sortable:'true',align:'left'">keyword</th>
							<th data-options="field:'CODE',width:120,sortable:'true',align:'left'">code</th>
							<th data-options="field:'WITH_HOLDING_CODE',width:120,sortable:'true',align:'left'">with_holding_code</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var bankBehalfBranch_list ={};
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
	bankBehalfBranch_list.buildQueryParams=function(){
	    $('#dg_bankBehalfBranch').datagrid({
			queryParams: {
						 'search_bank_line_id':$("input[name='search_bank_line_id']").val(),
						 'search_bank_line_number':$("input[name='search_bank_line_number']").val(),
						 'search_bank_name':$("input[name='search_bank_name']").val(),
						 'search_online_bank_number':$("input[name='search_online_bank_number']").val(),
						 'search_settle_line_number':$("input[name='search_settle_line_number']").val(),
						 'search_status':$("input[name='search_status']").val(),
						 'search_interbank_settle_status':$("input[name='search_interbank_settle_status']").val(),
						 'search_bank_type':$("input[name='search_bank_type']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_finish_time':$("input[name='search_finish_time']").val(),
						 'search_keyword':$("input[name='search_keyword']").val(),
						 'search_code':$("input[name='search_code']").val(),
						 'search_with_holding_code':$("input[name='search_with_holding_code']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		bankBehalfBranch_list.buildQueryParams();
		$('#dg_bankBehalfBranch').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_bank_line_id']").val("");
			$("input[name='search_bank_line_number']").val("");
			$("input[name='search_bank_name']").val("");
			$("input[name='search_online_bank_number']").val("");
			$("input[name='search_settle_line_number']").val("");
			$("input[name='search_status']").val("");
			$("input[name='search_interbank_settle_status']").val("");
			$("input[name='search_bank_type']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_finish_time']").val("");
			$("input[name='search_keyword']").val("");
			$("input[name='search_code']").val("");
			$("input[name='search_with_holding_code']").val("");
		bankBehalfBranch_list.buildQueryParams();
		$('#dg_bankBehalfBranch').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addBankBehalfBranchFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'BANK_BEHALF_BRANCH',
		    width: 800,
		    height: 500,
		    href: 'addBankBehalfBranchPage.action',
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
		    		$('#addBankBehalfBranchFrom').form({   
						 url:'addBankBehalfBranchAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									bankBehalfBranch_list.buildQueryParams();
									$('#dg_bankBehalfBranch').datagrid('load');
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
	bankBehalfBranch_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editBankBehalfBranchFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'BankBehalfBranch',
		    width: 800,
		    height: 500,
		    href: 'editBankBehalfBranchPage.action',
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
		   				$('#editBankBehalfBranchFrom').form({   
						 url:'editBankBehalfBranchAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									bankBehalfBranch_list.buildQueryParams();
									$('#dg_bankBehalfBranch').datagrid('load');
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
		     			$('#delBankBehalfBranchFrom').form({   
						 url:'delBankBehalfBranchAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									bankBehalfBranch_list.buildQueryParams();
									$('#dg_bankBehalfBranch').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delBankBehalfBranchFrom').submit();
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
	bankBehalfBranch_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细BankBehalfBranch',
		    width: 800,
		    height: 500,
		    href: 'detailBankBehalfBranchPage.action',
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