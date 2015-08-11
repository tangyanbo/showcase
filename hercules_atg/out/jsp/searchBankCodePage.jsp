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
								<td>bank_branch_name</td>
								<td>
									<input type="text" id="search_bank_branch_name" name="search_bank_branch_name" class="easyui-textbox" value="${search_bank_branch_name}"/>
								</td>
								<td>bank_branch_code</td>
								<td>
									<input type="text" id="search_bank_branch_code" name="search_bank_branch_code" class="easyui-textbox" value="${search_bank_branch_code}"/>
								</td>
								<td>bank_name</td>
								<td>
									<input type="text" id="search_bank_name" name="search_bank_name" class="easyui-textbox" value="${search_bank_name}"/>
								</td>
								<td>bank_code</td>
								<td>
									<input type="text" id="search_bank_code" name="search_bank_code" class="easyui-textbox" value="${search_bank_code}"/>
								</td>
								<td>city</td>
								<td>
									<input type="text" id="search_city" name="search_city" class="easyui-textbox" value="${search_city}"/>
								</td>
								<td>province_code</td>
								<td>
									<input type="text" id="search_province_code" name="search_province_code" class="easyui-textbox" value="${search_province_code}"/>
								</td>
								<td>province</td>
								<td>
									<input type="text" id="search_province" name="search_province" class="easyui-textbox" value="${search_province}"/>
								</td>
								<td>city_code</td>
								<td>
									<input type="text" id="search_city_code" name="search_city_code" class="easyui-textbox" value="${search_city_code}"/>
								</td>
								<td>reserved1</td>
								<td>
									<input type="text" id="search_reserved1" name="search_reserved1" class="easyui-textbox" value="${search_reserved1}"/>
								</td>
								<td>reserved2</td>
								<td>
									<input type="text" id="search_reserved2" name="search_reserved2" class="easyui-textbox" value="${search_reserved2}"/>
								</td>
								<td>reserved3</td>
								<td>
									<input type="text" id="search_reserved3" name="search_reserved3" class="easyui-textbox" value="${search_reserved3}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_bankCode" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'ID',width:120,sortable:'true',align:'left'">id</th>
							<th data-options="field:'BANK_BRANCH_NAME',width:120,sortable:'true',align:'left'">bank_branch_name</th>
							<th data-options="field:'BANK_BRANCH_CODE',width:120,sortable:'true',align:'left'">bank_branch_code</th>
							<th data-options="field:'BANK_NAME',width:120,sortable:'true',align:'left'">bank_name</th>
							<th data-options="field:'BANK_CODE',width:120,sortable:'true',align:'left'">bank_code</th>
							<th data-options="field:'CITY',width:120,sortable:'true',align:'left'">city</th>
							<th data-options="field:'PROVINCE_CODE',width:120,sortable:'true',align:'left'">province_code</th>
							<th data-options="field:'PROVINCE',width:120,sortable:'true',align:'left'">province</th>
							<th data-options="field:'CITY_CODE',width:120,sortable:'true',align:'left'">city_code</th>
							<th data-options="field:'RESERVED1',width:120,sortable:'true',align:'left'">reserved1</th>
							<th data-options="field:'RESERVED2',width:120,sortable:'true',align:'left'">reserved2</th>
							<th data-options="field:'RESERVED3',width:120,sortable:'true',align:'left'">reserved3</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var bankCode_list ={};
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
	bankCode_list.buildQueryParams=function(){
	    $('#dg_bankCode').datagrid({
			queryParams: {
						 'search_id':$("input[name='search_id']").val(),
						 'search_bank_branch_name':$("input[name='search_bank_branch_name']").val(),
						 'search_bank_branch_code':$("input[name='search_bank_branch_code']").val(),
						 'search_bank_name':$("input[name='search_bank_name']").val(),
						 'search_bank_code':$("input[name='search_bank_code']").val(),
						 'search_city':$("input[name='search_city']").val(),
						 'search_province_code':$("input[name='search_province_code']").val(),
						 'search_province':$("input[name='search_province']").val(),
						 'search_city_code':$("input[name='search_city_code']").val(),
						 'search_reserved1':$("input[name='search_reserved1']").val(),
						 'search_reserved2':$("input[name='search_reserved2']").val(),
						 'search_reserved3':$("input[name='search_reserved3']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		bankCode_list.buildQueryParams();
		$('#dg_bankCode').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_id']").val("");
			$("input[name='search_bank_branch_name']").val("");
			$("input[name='search_bank_branch_code']").val("");
			$("input[name='search_bank_name']").val("");
			$("input[name='search_bank_code']").val("");
			$("input[name='search_city']").val("");
			$("input[name='search_province_code']").val("");
			$("input[name='search_province']").val("");
			$("input[name='search_city_code']").val("");
			$("input[name='search_reserved1']").val("");
			$("input[name='search_reserved2']").val("");
			$("input[name='search_reserved3']").val("");
		bankCode_list.buildQueryParams();
		$('#dg_bankCode').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addBankCodeFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'bank_code',
		    width: 800,
		    height: 500,
		    href: 'addBankCodePage.action',
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
		    		$('#addBankCodeFrom').form({   
						 url:'addBankCodeAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									bankCode_list.buildQueryParams();
									$('#dg_bankCode').datagrid('load');
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
	bankCode_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editBankCodeFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'BankCode',
		    width: 800,
		    height: 500,
		    href: 'editBankCodePage.action',
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
		   				$('#editBankCodeFrom').form({   
						 url:'editBankCodeAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									bankCode_list.buildQueryParams();
									$('#dg_bankCode').datagrid('load');
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
		     			$('#delBankCodeFrom').form({   
						 url:'delBankCodeAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									bankCode_list.buildQueryParams();
									$('#dg_bankCode').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delBankCodeFrom').submit();
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
	bankCode_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细BankCode',
		    width: 800,
		    height: 500,
		    href: 'detailBankCodePage.action',
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