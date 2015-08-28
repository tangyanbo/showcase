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
						<#list table.columns as c >
						   <#if (c.javaType=='java.util.Date'|| c.javaType=='java.sql.Timestamp' )>
								<td>${c.columnName}</td>
								<td>
									<input type="text" id="search_${c.columnName}" name="search_${c.columnName}"  value="${"$"}{search_${c.columnName}}" class="easyui-datebox" style="width:100px;" data-options="required:false" />
								</td>
							<#else>
								<td>${c.columnName}</td>
								<td>
									<input type="text" id="search_${c.columnName}" name="search_${c.columnName}" class="easyui-textbox" value="${"$"}{search_${c.columnName}}"/>
								</td>
						    </#if>
						</#list>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_${table.lowerCaseFirstClassName}" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
						<#list table.columns as c >
							<th data-options="field:'${c.getColumnNameUpperCase()}',width:120,sortable:'true',align:'left'">${c.columnName}</th>
						</#list>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var ${table.lowerCaseFirstClassName}_list ={};
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
	${table.lowerCaseFirstClassName}_list.buildQueryParams=function(){
	    $('#dg_${table.lowerCaseFirstClassName}').datagrid({
			queryParams: {
					<#list table.columns as c >
						 'search_${c.columnName}':$("input[name='search_${c.columnName}']").val(),
					</#list>  
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		${table.lowerCaseFirstClassName}_list.buildQueryParams();
		$('#dg_${table.lowerCaseFirstClassName}').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
		<#list table.columns as c >
			$("input[name='search_${c.columnName}']").val("");
		</#list>  
		${table.lowerCaseFirstClassName}_list.buildQueryParams();
		$('#dg_${table.lowerCaseFirstClassName}').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#add${table.className}From';
		$('<div id="dialog_holder"></div>').dialog({
		    title: '${table.tableName}',
		    width: 800,
		    height: 500,
		    href: 'add${table.className}Page.action',
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
		    		$('#add${table.className}From').form({   
						 url:'add${table.className}Action.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									${table.lowerCaseFirstClassName}_list.buildQueryParams();
									$('#dg_${table.lowerCaseFirstClassName}').datagrid('load');
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
	${table.lowerCaseFirstClassName}_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#edit${table.className}From';
		$('<div id="dialog_holder"></div>').dialog({
		    title: '${table.className}',
		    width: 800,
		    height: 500,
		    href: 'edit${table.className}Page.action',
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
		   				$('#edit${table.className}From').form({   
						 url:'edit${table.className}Action.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									${table.lowerCaseFirstClassName}_list.buildQueryParams();
									$('#dg_${table.lowerCaseFirstClassName}').datagrid('load');
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
		     			$('#del${table.className}From').form({   
						 url:'del${table.className}Action.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									${table.lowerCaseFirstClassName}_list.buildQueryParams();
									$('#dg_${table.lowerCaseFirstClassName}').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#del${table.className}From').submit();
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
	${table.lowerCaseFirstClassName}_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细${table.className}',
		    width: 800,
		    height: 500,
		    href: 'detail${table.className}Page.action',
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