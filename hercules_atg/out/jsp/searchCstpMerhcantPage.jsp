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
														<td>cm_id</td>
								<td>
									<input type="text" id="search_cm_id" name="search_cm_id" class="easyui-textbox" value="${search_cm_id}"/>
								</td>
								<td>merchant_id</td>
								<td>
									<input type="text" id="search_merchant_id" name="search_merchant_id" class="easyui-textbox" value="${search_merchant_id}"/>
								</td>
								<td>merchant_name</td>
								<td>
									<input type="text" id="search_merchant_name" name="search_merchant_name" class="easyui-textbox" value="${search_merchant_name}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>primery_key</td>
								<td>
									<input type="text" id="search_primery_key" name="search_primery_key" class="easyui-textbox" value="${search_primery_key}"/>
								</td>
								<td>develop_id</td>
								<td>
									<input type="text" id="search_develop_id" name="search_develop_id" class="easyui-textbox" value="${search_develop_id}"/>
								</td>
								<td>sp_id</td>
								<td>
									<input type="text" id="search_sp_id" name="search_sp_id" class="easyui-textbox" value="${search_sp_id}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_cstpMerhcant" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'CM_ID',width:120,sortable:'true',align:'left'">cm_id</th>
							<th data-options="field:'MERCHANT_ID',width:120,sortable:'true',align:'left'">merchant_id</th>
							<th data-options="field:'MERCHANT_NAME',width:120,sortable:'true',align:'left'">merchant_name</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'PRIMERY_KEY',width:120,sortable:'true',align:'left'">primery_key</th>
							<th data-options="field:'DEVELOP_ID',width:120,sortable:'true',align:'left'">develop_id</th>
							<th data-options="field:'SP_ID',width:120,sortable:'true',align:'left'">sp_id</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var cstpMerhcant_list ={};
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
	cstpMerhcant_list.buildQueryParams=function(){
	    $('#dg_cstpMerhcant').datagrid({
			queryParams: {
						 'search_cm_id':$("input[name='search_cm_id']").val(),
						 'search_merchant_id':$("input[name='search_merchant_id']").val(),
						 'search_merchant_name':$("input[name='search_merchant_name']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_primery_key':$("input[name='search_primery_key']").val(),
						 'search_develop_id':$("input[name='search_develop_id']").val(),
						 'search_sp_id':$("input[name='search_sp_id']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		cstpMerhcant_list.buildQueryParams();
		$('#dg_cstpMerhcant').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_cm_id']").val("");
			$("input[name='search_merchant_id']").val("");
			$("input[name='search_merchant_name']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_primery_key']").val("");
			$("input[name='search_develop_id']").val("");
			$("input[name='search_sp_id']").val("");
		cstpMerhcant_list.buildQueryParams();
		$('#dg_cstpMerhcant').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addCstpMerhcantFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'CSTP_MERHCANT',
		    width: 800,
		    height: 500,
		    href: 'addCstpMerhcantPage.action',
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
		    		$('#addCstpMerhcantFrom').form({   
						 url:'addCstpMerhcantAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									cstpMerhcant_list.buildQueryParams();
									$('#dg_cstpMerhcant').datagrid('load');
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
	cstpMerhcant_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editCstpMerhcantFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'CstpMerhcant',
		    width: 800,
		    height: 500,
		    href: 'editCstpMerhcantPage.action',
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
		   				$('#editCstpMerhcantFrom').form({   
						 url:'editCstpMerhcantAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									cstpMerhcant_list.buildQueryParams();
									$('#dg_cstpMerhcant').datagrid('load');
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
		     			$('#delCstpMerhcantFrom').form({   
						 url:'delCstpMerhcantAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									cstpMerhcant_list.buildQueryParams();
									$('#dg_cstpMerhcant').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delCstpMerhcantFrom').submit();
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
	cstpMerhcant_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细CstpMerhcant',
		    width: 800,
		    height: 500,
		    href: 'detailCstpMerhcantPage.action',
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