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
														<td>bank_id</td>
								<td>
									<input type="text" id="search_bank_id" name="search_bank_id" class="easyui-textbox" value="${search_bank_id}"/>
								</td>
								<td>bank_code</td>
								<td>
									<input type="text" id="search_bank_code" name="search_bank_code" class="easyui-textbox" value="${search_bank_code}"/>
								</td>
								<td>bank_name</td>
								<td>
									<input type="text" id="search_bank_name" name="search_bank_name" class="easyui-textbox" value="${search_bank_name}"/>
								</td>
								<td>fee</td>
								<td>
									<input type="text" id="search_fee" name="search_fee" class="easyui-textbox" value="${search_fee}"/>
								</td>
								<td>arrive_time</td>
								<td>
									<input type="text" id="search_arrive_time" name="search_arrive_time" class="easyui-textbox" value="${search_arrive_time}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_bankCardFee" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'BANK_ID',width:120,sortable:'true',align:'left'">bank_id</th>
							<th data-options="field:'BANK_CODE',width:120,sortable:'true',align:'left'">bank_code</th>
							<th data-options="field:'BANK_NAME',width:120,sortable:'true',align:'left'">bank_name</th>
							<th data-options="field:'FEE',width:120,sortable:'true',align:'left'">fee</th>
							<th data-options="field:'ARRIVE_TIME',width:120,sortable:'true',align:'left'">arrive_time</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var bankCardFee_list ={};
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
	bankCardFee_list.buildQueryParams=function(){
	    $('#dg_bankCardFee').datagrid({
			queryParams: {
						 'search_bank_id':$("input[name='search_bank_id']").val(),
						 'search_bank_code':$("input[name='search_bank_code']").val(),
						 'search_bank_name':$("input[name='search_bank_name']").val(),
						 'search_fee':$("input[name='search_fee']").val(),
						 'search_arrive_time':$("input[name='search_arrive_time']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		bankCardFee_list.buildQueryParams();
		$('#dg_bankCardFee').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_bank_id']").val("");
			$("input[name='search_bank_code']").val("");
			$("input[name='search_bank_name']").val("");
			$("input[name='search_fee']").val("");
			$("input[name='search_arrive_time']").val("");
			$("input[name='search_create_time']").val("");
		bankCardFee_list.buildQueryParams();
		$('#dg_bankCardFee').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addBankCardFeeFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'BANK_CARD_FEE',
		    width: 800,
		    height: 500,
		    href: 'addBankCardFeePage.action',
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
		    		$('#addBankCardFeeFrom').form({   
						 url:'addBankCardFeeAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									bankCardFee_list.buildQueryParams();
									$('#dg_bankCardFee').datagrid('load');
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
	bankCardFee_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editBankCardFeeFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'BankCardFee',
		    width: 800,
		    height: 500,
		    href: 'editBankCardFeePage.action',
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
		   				$('#editBankCardFeeFrom').form({   
						 url:'editBankCardFeeAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									bankCardFee_list.buildQueryParams();
									$('#dg_bankCardFee').datagrid('load');
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
		     			$('#delBankCardFeeFrom').form({   
						 url:'delBankCardFeeAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									bankCardFee_list.buildQueryParams();
									$('#dg_bankCardFee').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delBankCardFeeFrom').submit();
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
	bankCardFee_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细BankCardFee',
		    width: 800,
		    height: 500,
		    href: 'detailBankCardFeePage.action',
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