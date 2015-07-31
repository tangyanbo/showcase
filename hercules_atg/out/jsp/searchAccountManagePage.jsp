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
								<td>mer_sys_id</td>
								<td>
									<input type="text" id="search_mer_sys_id" name="search_mer_sys_id" class="easyui-textbox" value="${search_mer_sys_id}"/>
								</td>
								<td>mer_amt</td>
								<td>
									<input type="text" id="search_mer_amt" name="search_mer_amt" class="easyui-textbox" value="${search_mer_amt}"/>
								</td>
								<td>fee_amt</td>
								<td>
									<input type="text" id="search_fee_amt" name="search_fee_amt" class="easyui-textbox" value="${search_fee_amt}"/>
								</td>
								<td>account_type</td>
								<td>
									<input type="text" id="search_account_type" name="search_account_type" class="easyui-textbox" value="${search_account_type}"/>
								</td>
								<td>status</td>
								<td>
									<input type="text" id="search_status" name="search_status" class="easyui-textbox" value="${search_status}"/>
								</td>
								<td>settle_date</td>
								<td>
									<input type="text" id="search_settle_date" name="search_settle_date" class="easyui-textbox" value="${search_settle_date}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>update_time</td>
								<td>
									<input type="text" id="search_update_time" name="search_update_time" class="easyui-textbox" value="${search_update_time}"/>
								</td>
								<td>update_oper_id</td>
								<td>
									<input type="text" id="search_update_oper_id" name="search_update_oper_id" class="easyui-textbox" value="${search_update_oper_id}"/>
								</td>
								<td>change_status</td>
								<td>
									<input type="text" id="search_change_status" name="search_change_status" class="easyui-textbox" value="${search_change_status}"/>
								</td>
								<td>change_amt</td>
								<td>
									<input type="text" id="search_change_amt" name="search_change_amt" class="easyui-textbox" value="${search_change_amt}"/>
								</td>
								<td>change_oper_id</td>
								<td>
									<input type="text" id="search_change_oper_id" name="search_change_oper_id" class="easyui-textbox" value="${search_change_oper_id}"/>
								</td>
								<td>change_reason</td>
								<td>
									<input type="text" id="search_change_reason" name="search_change_reason" class="easyui-textbox" value="${search_change_reason}"/>
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
				<table  id="dg_accountManage" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'ID',width:120,sortable:'true',align:'left'">id</th>
							<th data-options="field:'MER_SYS_ID',width:120,sortable:'true',align:'left'">mer_sys_id</th>
							<th data-options="field:'MER_AMT',width:120,sortable:'true',align:'left'">mer_amt</th>
							<th data-options="field:'FEE_AMT',width:120,sortable:'true',align:'left'">fee_amt</th>
							<th data-options="field:'ACCOUNT_TYPE',width:120,sortable:'true',align:'left'">account_type</th>
							<th data-options="field:'STATUS',width:120,sortable:'true',align:'left'">status</th>
							<th data-options="field:'SETTLE_DATE',width:120,sortable:'true',align:'left'">settle_date</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'UPDATE_TIME',width:120,sortable:'true',align:'left'">update_time</th>
							<th data-options="field:'UPDATE_OPER_ID',width:120,sortable:'true',align:'left'">update_oper_id</th>
							<th data-options="field:'CHANGE_STATUS',width:120,sortable:'true',align:'left'">change_status</th>
							<th data-options="field:'CHANGE_AMT',width:120,sortable:'true',align:'left'">change_amt</th>
							<th data-options="field:'CHANGE_OPER_ID',width:120,sortable:'true',align:'left'">change_oper_id</th>
							<th data-options="field:'CHANGE_REASON',width:120,sortable:'true',align:'left'">change_reason</th>
							<th data-options="field:'RESERVED1',width:120,sortable:'true',align:'left'">reserved1</th>
							<th data-options="field:'RESERVED2',width:120,sortable:'true',align:'left'">reserved2</th>
							<th data-options="field:'RESERVED3',width:120,sortable:'true',align:'left'">reserved3</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var accountManage_list ={};
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
	accountManage_list.buildQueryParams=function(){
	    $('#dg_accountManage').datagrid({
			queryParams: {
						 'search_id':$("input[name='search_id']").val(),
						 'search_mer_sys_id':$("input[name='search_mer_sys_id']").val(),
						 'search_mer_amt':$("input[name='search_mer_amt']").val(),
						 'search_fee_amt':$("input[name='search_fee_amt']").val(),
						 'search_account_type':$("input[name='search_account_type']").val(),
						 'search_status':$("input[name='search_status']").val(),
						 'search_settle_date':$("input[name='search_settle_date']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_update_time':$("input[name='search_update_time']").val(),
						 'search_update_oper_id':$("input[name='search_update_oper_id']").val(),
						 'search_change_status':$("input[name='search_change_status']").val(),
						 'search_change_amt':$("input[name='search_change_amt']").val(),
						 'search_change_oper_id':$("input[name='search_change_oper_id']").val(),
						 'search_change_reason':$("input[name='search_change_reason']").val(),
						 'search_reserved1':$("input[name='search_reserved1']").val(),
						 'search_reserved2':$("input[name='search_reserved2']").val(),
						 'search_reserved3':$("input[name='search_reserved3']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		accountManage_list.buildQueryParams();
		$('#dg_accountManage').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_id']").val("");
			$("input[name='search_mer_sys_id']").val("");
			$("input[name='search_mer_amt']").val("");
			$("input[name='search_fee_amt']").val("");
			$("input[name='search_account_type']").val("");
			$("input[name='search_status']").val("");
			$("input[name='search_settle_date']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_update_time']").val("");
			$("input[name='search_update_oper_id']").val("");
			$("input[name='search_change_status']").val("");
			$("input[name='search_change_amt']").val("");
			$("input[name='search_change_oper_id']").val("");
			$("input[name='search_change_reason']").val("");
			$("input[name='search_reserved1']").val("");
			$("input[name='search_reserved2']").val("");
			$("input[name='search_reserved3']").val("");
		accountManage_list.buildQueryParams();
		$('#dg_accountManage').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addAccountManageFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'ACCOUNT_MANAGE',
		    width: 800,
		    height: 500,
		    href: 'addAccountManagePage.action',
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
		    		$('#addAccountManageFrom').form({   
						 url:'addAccountManageAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									accountManage_list.buildQueryParams();
									$('#dg_accountManage').datagrid('load');
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
	accountManage_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editAccountManageFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'AccountManage',
		    width: 800,
		    height: 500,
		    href: 'editAccountManagePage.action',
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
		   				$('#editAccountManageFrom').form({   
						 url:'editAccountManageAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									accountManage_list.buildQueryParams();
									$('#dg_accountManage').datagrid('load');
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
		     			$('#delAccountManageFrom').form({   
						 url:'delAccountManageAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									accountManage_list.buildQueryParams();
									$('#dg_accountManage').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delAccountManageFrom').submit();
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
	accountManage_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细AccountManage',
		    width: 800,
		    height: 500,
		    href: 'detailAccountManagePage.action',
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