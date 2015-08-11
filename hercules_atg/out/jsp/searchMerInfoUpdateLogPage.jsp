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
								<td>mer_id</td>
								<td>
									<input type="text" id="search_mer_id" name="search_mer_id" class="easyui-textbox" value="${search_mer_id}"/>
								</td>
								<td>mer_type</td>
								<td>
									<input type="text" id="search_mer_type" name="search_mer_type" class="easyui-textbox" value="${search_mer_type}"/>
								</td>
								<td>org_value</td>
								<td>
									<input type="text" id="search_org_value" name="search_org_value" class="easyui-textbox" value="${search_org_value}"/>
								</td>
								<td>new_value</td>
								<td>
									<input type="text" id="search_new_value" name="search_new_value" class="easyui-textbox" value="${search_new_value}"/>
								</td>
								<td>org_time</td>
								<td>
									<input type="text" id="search_org_time" name="search_org_time" class="easyui-textbox" value="${search_org_time}"/>
								</td>
								<td>update_time</td>
								<td>
									<input type="text" id="search_update_time" name="search_update_time" class="easyui-textbox" value="${search_update_time}"/>
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
				<table  id="dg_merInfoUpdateLog" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'ID',width:120,sortable:'true',align:'left'">id</th>
							<th data-options="field:'MER_ID',width:120,sortable:'true',align:'left'">mer_id</th>
							<th data-options="field:'MER_TYPE',width:120,sortable:'true',align:'left'">mer_type</th>
							<th data-options="field:'ORG_VALUE',width:120,sortable:'true',align:'left'">org_value</th>
							<th data-options="field:'NEW_VALUE',width:120,sortable:'true',align:'left'">new_value</th>
							<th data-options="field:'ORG_TIME',width:120,sortable:'true',align:'left'">org_time</th>
							<th data-options="field:'UPDATE_TIME',width:120,sortable:'true',align:'left'">update_time</th>
							<th data-options="field:'RESERVED1',width:120,sortable:'true',align:'left'">reserved1</th>
							<th data-options="field:'RESERVED2',width:120,sortable:'true',align:'left'">reserved2</th>
							<th data-options="field:'RESERVED3',width:120,sortable:'true',align:'left'">reserved3</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var merInfoUpdateLog_list ={};
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
	merInfoUpdateLog_list.buildQueryParams=function(){
	    $('#dg_merInfoUpdateLog').datagrid({
			queryParams: {
						 'search_id':$("input[name='search_id']").val(),
						 'search_mer_id':$("input[name='search_mer_id']").val(),
						 'search_mer_type':$("input[name='search_mer_type']").val(),
						 'search_org_value':$("input[name='search_org_value']").val(),
						 'search_new_value':$("input[name='search_new_value']").val(),
						 'search_org_time':$("input[name='search_org_time']").val(),
						 'search_update_time':$("input[name='search_update_time']").val(),
						 'search_reserved1':$("input[name='search_reserved1']").val(),
						 'search_reserved2':$("input[name='search_reserved2']").val(),
						 'search_reserved3':$("input[name='search_reserved3']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		merInfoUpdateLog_list.buildQueryParams();
		$('#dg_merInfoUpdateLog').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_id']").val("");
			$("input[name='search_mer_id']").val("");
			$("input[name='search_mer_type']").val("");
			$("input[name='search_org_value']").val("");
			$("input[name='search_new_value']").val("");
			$("input[name='search_org_time']").val("");
			$("input[name='search_update_time']").val("");
			$("input[name='search_reserved1']").val("");
			$("input[name='search_reserved2']").val("");
			$("input[name='search_reserved3']").val("");
		merInfoUpdateLog_list.buildQueryParams();
		$('#dg_merInfoUpdateLog').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addMerInfoUpdateLogFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'MER_INFO_UPDATE_LOG',
		    width: 800,
		    height: 500,
		    href: 'addMerInfoUpdateLogPage.action',
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
		    		$('#addMerInfoUpdateLogFrom').form({   
						 url:'addMerInfoUpdateLogAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									merInfoUpdateLog_list.buildQueryParams();
									$('#dg_merInfoUpdateLog').datagrid('load');
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
	merInfoUpdateLog_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editMerInfoUpdateLogFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'MerInfoUpdateLog',
		    width: 800,
		    height: 500,
		    href: 'editMerInfoUpdateLogPage.action',
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
		   				$('#editMerInfoUpdateLogFrom').form({   
						 url:'editMerInfoUpdateLogAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									merInfoUpdateLog_list.buildQueryParams();
									$('#dg_merInfoUpdateLog').datagrid('load');
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
		     			$('#delMerInfoUpdateLogFrom').form({   
						 url:'delMerInfoUpdateLogAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									merInfoUpdateLog_list.buildQueryParams();
									$('#dg_merInfoUpdateLog').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delMerInfoUpdateLogFrom').submit();
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
	merInfoUpdateLog_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细MerInfoUpdateLog',
		    width: 800,
		    height: 500,
		    href: 'detailMerInfoUpdateLogPage.action',
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