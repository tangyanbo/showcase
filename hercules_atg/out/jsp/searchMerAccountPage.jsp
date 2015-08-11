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
								<td>sett_account_name</td>
								<td>
									<input type="text" id="search_sett_account_name" name="search_sett_account_name" class="easyui-textbox" value="${search_sett_account_name}"/>
								</td>
								<td>sett_account_no</td>
								<td>
									<input type="text" id="search_sett_account_no" name="search_sett_account_no" class="easyui-textbox" value="${search_sett_account_no}"/>
								</td>
								<td>sett_agency</td>
								<td>
									<input type="text" id="search_sett_agency" name="search_sett_agency" class="easyui-textbox" value="${search_sett_agency}"/>
								</td>
								<td>sett_acc_type</td>
								<td>
									<input type="text" id="search_sett_acc_type" name="search_sett_acc_type" class="easyui-textbox" value="${search_sett_acc_type}"/>
								</td>
								<td>status</td>
								<td>
									<input type="text" id="search_status" name="search_status" class="easyui-textbox" value="${search_status}"/>
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
								<td>reserved4</td>
								<td>
									<input type="text" id="search_reserved4" name="search_reserved4" class="easyui-textbox" value="${search_reserved4}"/>
								</td>
								<td>reserved5</td>
								<td>
									<input type="text" id="search_reserved5" name="search_reserved5" class="easyui-textbox" value="${search_reserved5}"/>
								</td>
								<td>sett_agency_name</td>
								<td>
									<input type="text" id="search_sett_agency_name" name="search_sett_agency_name" class="easyui-textbox" value="${search_sett_agency_name}"/>
								</td>
								<td>deduction_type</td>
								<td>
									<input type="text" id="search_deduction_type" name="search_deduction_type" class="easyui-textbox" value="${search_deduction_type}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_merAccount" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'ID',width:120,sortable:'true',align:'left'">id</th>
							<th data-options="field:'MER_SYS_ID',width:120,sortable:'true',align:'left'">mer_sys_id</th>
							<th data-options="field:'SETT_ACCOUNT_NAME',width:120,sortable:'true',align:'left'">sett_account_name</th>
							<th data-options="field:'SETT_ACCOUNT_NO',width:120,sortable:'true',align:'left'">sett_account_no</th>
							<th data-options="field:'SETT_AGENCY',width:120,sortable:'true',align:'left'">sett_agency</th>
							<th data-options="field:'SETT_ACC_TYPE',width:120,sortable:'true',align:'left'">sett_acc_type</th>
							<th data-options="field:'STATUS',width:120,sortable:'true',align:'left'">status</th>
							<th data-options="field:'RESERVED1',width:120,sortable:'true',align:'left'">reserved1</th>
							<th data-options="field:'RESERVED2',width:120,sortable:'true',align:'left'">reserved2</th>
							<th data-options="field:'RESERVED3',width:120,sortable:'true',align:'left'">reserved3</th>
							<th data-options="field:'RESERVED4',width:120,sortable:'true',align:'left'">reserved4</th>
							<th data-options="field:'RESERVED5',width:120,sortable:'true',align:'left'">reserved5</th>
							<th data-options="field:'SETT_AGENCY_NAME',width:120,sortable:'true',align:'left'">sett_agency_name</th>
							<th data-options="field:'DEDUCTION_TYPE',width:120,sortable:'true',align:'left'">deduction_type</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var merAccount_list ={};
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
	merAccount_list.buildQueryParams=function(){
	    $('#dg_merAccount').datagrid({
			queryParams: {
						 'search_id':$("input[name='search_id']").val(),
						 'search_mer_sys_id':$("input[name='search_mer_sys_id']").val(),
						 'search_sett_account_name':$("input[name='search_sett_account_name']").val(),
						 'search_sett_account_no':$("input[name='search_sett_account_no']").val(),
						 'search_sett_agency':$("input[name='search_sett_agency']").val(),
						 'search_sett_acc_type':$("input[name='search_sett_acc_type']").val(),
						 'search_status':$("input[name='search_status']").val(),
						 'search_reserved1':$("input[name='search_reserved1']").val(),
						 'search_reserved2':$("input[name='search_reserved2']").val(),
						 'search_reserved3':$("input[name='search_reserved3']").val(),
						 'search_reserved4':$("input[name='search_reserved4']").val(),
						 'search_reserved5':$("input[name='search_reserved5']").val(),
						 'search_sett_agency_name':$("input[name='search_sett_agency_name']").val(),
						 'search_deduction_type':$("input[name='search_deduction_type']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		merAccount_list.buildQueryParams();
		$('#dg_merAccount').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_id']").val("");
			$("input[name='search_mer_sys_id']").val("");
			$("input[name='search_sett_account_name']").val("");
			$("input[name='search_sett_account_no']").val("");
			$("input[name='search_sett_agency']").val("");
			$("input[name='search_sett_acc_type']").val("");
			$("input[name='search_status']").val("");
			$("input[name='search_reserved1']").val("");
			$("input[name='search_reserved2']").val("");
			$("input[name='search_reserved3']").val("");
			$("input[name='search_reserved4']").val("");
			$("input[name='search_reserved5']").val("");
			$("input[name='search_sett_agency_name']").val("");
			$("input[name='search_deduction_type']").val("");
		merAccount_list.buildQueryParams();
		$('#dg_merAccount').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addMerAccountFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'MER_ACCOUNT',
		    width: 800,
		    height: 500,
		    href: 'addMerAccountPage.action',
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
		    		$('#addMerAccountFrom').form({   
						 url:'addMerAccountAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									merAccount_list.buildQueryParams();
									$('#dg_merAccount').datagrid('load');
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
	merAccount_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editMerAccountFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'MerAccount',
		    width: 800,
		    height: 500,
		    href: 'editMerAccountPage.action',
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
		   				$('#editMerAccountFrom').form({   
						 url:'editMerAccountAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									merAccount_list.buildQueryParams();
									$('#dg_merAccount').datagrid('load');
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
		     			$('#delMerAccountFrom').form({   
						 url:'delMerAccountAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									merAccount_list.buildQueryParams();
									$('#dg_merAccount').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delMerAccountFrom').submit();
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
	merAccount_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细MerAccount',
		    width: 800,
		    height: 500,
		    href: 'detailMerAccountPage.action',
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