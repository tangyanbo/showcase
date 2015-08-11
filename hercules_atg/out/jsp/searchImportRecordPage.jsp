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
								<td>tract_err_name</td>
								<td>
									<input type="text" id="search_tract_err_name" name="search_tract_err_name" class="easyui-textbox" value="${search_tract_err_name}"/>
								</td>
								<td>subinfo_name</td>
								<td>
									<input type="text" id="search_subinfo_name" name="search_subinfo_name" class="easyui-textbox" value="${search_subinfo_name}"/>
								</td>
								<td>signin_err_name</td>
								<td>
									<input type="text" id="search_signin_err_name" name="search_signin_err_name" class="easyui-textbox" value="${search_signin_err_name}"/>
								</td>
								<td>sub_err_name</td>
								<td>
									<input type="text" id="search_sub_err_name" name="search_sub_err_name" class="easyui-textbox" value="${search_sub_err_name}"/>
								</td>
								<td>err_name</td>
								<td>
									<input type="text" id="search_err_name" name="search_err_name" class="easyui-textbox" value="${search_err_name}"/>
								</td>
								<td>download_url</td>
								<td>
									<input type="text" id="search_download_url" name="search_download_url" class="easyui-textbox" value="${search_download_url}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>batch_id</td>
								<td>
									<input type="text" id="search_batch_id" name="search_batch_id" class="easyui-textbox" value="${search_batch_id}"/>
								</td>
								<td>file_type</td>
								<td>
									<input type="text" id="search_file_type" name="search_file_type" class="easyui-textbox" value="${search_file_type}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_importRecord" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'ID',width:120,sortable:'true',align:'left'">id</th>
							<th data-options="field:'TRACT_ERR_NAME',width:120,sortable:'true',align:'left'">tract_err_name</th>
							<th data-options="field:'SUBINFO_NAME',width:120,sortable:'true',align:'left'">subinfo_name</th>
							<th data-options="field:'SIGNIN_ERR_NAME',width:120,sortable:'true',align:'left'">signin_err_name</th>
							<th data-options="field:'SUB_ERR_NAME',width:120,sortable:'true',align:'left'">sub_err_name</th>
							<th data-options="field:'ERR_NAME',width:120,sortable:'true',align:'left'">err_name</th>
							<th data-options="field:'DOWNLOAD_URL',width:120,sortable:'true',align:'left'">download_url</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'BATCH_ID',width:120,sortable:'true',align:'left'">batch_id</th>
							<th data-options="field:'FILE_TYPE',width:120,sortable:'true',align:'left'">file_type</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var importRecord_list ={};
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
	importRecord_list.buildQueryParams=function(){
	    $('#dg_importRecord').datagrid({
			queryParams: {
						 'search_id':$("input[name='search_id']").val(),
						 'search_tract_err_name':$("input[name='search_tract_err_name']").val(),
						 'search_subinfo_name':$("input[name='search_subinfo_name']").val(),
						 'search_signin_err_name':$("input[name='search_signin_err_name']").val(),
						 'search_sub_err_name':$("input[name='search_sub_err_name']").val(),
						 'search_err_name':$("input[name='search_err_name']").val(),
						 'search_download_url':$("input[name='search_download_url']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_batch_id':$("input[name='search_batch_id']").val(),
						 'search_file_type':$("input[name='search_file_type']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		importRecord_list.buildQueryParams();
		$('#dg_importRecord').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_id']").val("");
			$("input[name='search_tract_err_name']").val("");
			$("input[name='search_subinfo_name']").val("");
			$("input[name='search_signin_err_name']").val("");
			$("input[name='search_sub_err_name']").val("");
			$("input[name='search_err_name']").val("");
			$("input[name='search_download_url']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_batch_id']").val("");
			$("input[name='search_file_type']").val("");
		importRecord_list.buildQueryParams();
		$('#dg_importRecord').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addImportRecordFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'IMPORT_RECORD',
		    width: 800,
		    height: 500,
		    href: 'addImportRecordPage.action',
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
		    		$('#addImportRecordFrom').form({   
						 url:'addImportRecordAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									importRecord_list.buildQueryParams();
									$('#dg_importRecord').datagrid('load');
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
	importRecord_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editImportRecordFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'ImportRecord',
		    width: 800,
		    height: 500,
		    href: 'editImportRecordPage.action',
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
		   				$('#editImportRecordFrom').form({   
						 url:'editImportRecordAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									importRecord_list.buildQueryParams();
									$('#dg_importRecord').datagrid('load');
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
		     			$('#delImportRecordFrom').form({   
						 url:'delImportRecordAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									importRecord_list.buildQueryParams();
									$('#dg_importRecord').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delImportRecordFrom').submit();
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
	importRecord_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细ImportRecord',
		    width: 800,
		    height: 500,
		    href: 'detailImportRecordPage.action',
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