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
														<td>sub_mer_id</td>
								<td>
									<input type="text" id="search_sub_mer_id" name="search_sub_mer_id" class="easyui-textbox" value="${search_sub_mer_id}"/>
								</td>
								<td>disp_mer_id</td>
								<td>
									<input type="text" id="search_disp_mer_id" name="search_disp_mer_id" class="easyui-textbox" value="${search_disp_mer_id}"/>
								</td>
								<td>disp_mer_name</td>
								<td>
									<input type="text" id="search_disp_mer_name" name="search_disp_mer_name" class="easyui-textbox" value="${search_disp_mer_name}"/>
								</td>
								<td>terminal_type</td>
								<td>
									<input type="text" id="search_terminal_type" name="search_terminal_type" class="easyui-textbox" value="${search_terminal_type}"/>
								</td>
								<td>bus_type</td>
								<td>
									<input type="text" id="search_bus_type" name="search_bus_type" class="easyui-textbox" value="${search_bus_type}"/>
								</td>
								<td>clear_time</td>
								<td>
									<input type="text" id="search_clear_time" name="search_clear_time" class="easyui-textbox" value="${search_clear_time}"/>
								</td>
								<td>auth_status</td>
								<td>
									<input type="text" id="search_auth_status" name="search_auth_status" class="easyui-textbox" value="${search_auth_status}"/>
								</td>
								<td>auth_time</td>
								<td>
									<input type="text" id="search_auth_time" name="search_auth_time" class="easyui-textbox" value="${search_auth_time}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>sub_mer_tract_r1</td>
								<td>
									<input type="text" id="search_sub_mer_tract_r1" name="search_sub_mer_tract_r1" class="easyui-textbox" value="${search_sub_mer_tract_r1}"/>
								</td>
								<td>sub_mer_tract_r2</td>
								<td>
									<input type="text" id="search_sub_mer_tract_r2" name="search_sub_mer_tract_r2" class="easyui-textbox" value="${search_sub_mer_tract_r2}"/>
								</td>
								<td>reserved</td>
								<td>
									<input type="text" id="search_reserved" name="search_reserved" class="easyui-textbox" value="${search_reserved}"/>
								</td>
								<td>sub_access_type</td>
								<td>
									<input type="text" id="search_sub_access_type" name="search_sub_access_type" class="easyui-textbox" value="${search_sub_access_type}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_subMerTrans" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'SUB_MER_ID',width:120,sortable:'true',align:'left'">sub_mer_id</th>
							<th data-options="field:'DISP_MER_ID',width:120,sortable:'true',align:'left'">disp_mer_id</th>
							<th data-options="field:'DISP_MER_NAME',width:120,sortable:'true',align:'left'">disp_mer_name</th>
							<th data-options="field:'TERMINAL_TYPE',width:120,sortable:'true',align:'left'">terminal_type</th>
							<th data-options="field:'BUS_TYPE',width:120,sortable:'true',align:'left'">bus_type</th>
							<th data-options="field:'CLEAR_TIME',width:120,sortable:'true',align:'left'">clear_time</th>
							<th data-options="field:'AUTH_STATUS',width:120,sortable:'true',align:'left'">auth_status</th>
							<th data-options="field:'AUTH_TIME',width:120,sortable:'true',align:'left'">auth_time</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'SUB_MER_TRACT_R1',width:120,sortable:'true',align:'left'">sub_mer_tract_r1</th>
							<th data-options="field:'SUB_MER_TRACT_R2',width:120,sortable:'true',align:'left'">sub_mer_tract_r2</th>
							<th data-options="field:'RESERVED',width:120,sortable:'true',align:'left'">reserved</th>
							<th data-options="field:'SUB_ACCESS_TYPE',width:120,sortable:'true',align:'left'">sub_access_type</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var subMerTrans_list ={};
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
	subMerTrans_list.buildQueryParams=function(){
	    $('#dg_subMerTrans').datagrid({
			queryParams: {
						 'search_sub_mer_id':$("input[name='search_sub_mer_id']").val(),
						 'search_disp_mer_id':$("input[name='search_disp_mer_id']").val(),
						 'search_disp_mer_name':$("input[name='search_disp_mer_name']").val(),
						 'search_terminal_type':$("input[name='search_terminal_type']").val(),
						 'search_bus_type':$("input[name='search_bus_type']").val(),
						 'search_clear_time':$("input[name='search_clear_time']").val(),
						 'search_auth_status':$("input[name='search_auth_status']").val(),
						 'search_auth_time':$("input[name='search_auth_time']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_sub_mer_tract_r1':$("input[name='search_sub_mer_tract_r1']").val(),
						 'search_sub_mer_tract_r2':$("input[name='search_sub_mer_tract_r2']").val(),
						 'search_reserved':$("input[name='search_reserved']").val(),
						 'search_sub_access_type':$("input[name='search_sub_access_type']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		subMerTrans_list.buildQueryParams();
		$('#dg_subMerTrans').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_sub_mer_id']").val("");
			$("input[name='search_disp_mer_id']").val("");
			$("input[name='search_disp_mer_name']").val("");
			$("input[name='search_terminal_type']").val("");
			$("input[name='search_bus_type']").val("");
			$("input[name='search_clear_time']").val("");
			$("input[name='search_auth_status']").val("");
			$("input[name='search_auth_time']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_sub_mer_tract_r1']").val("");
			$("input[name='search_sub_mer_tract_r2']").val("");
			$("input[name='search_reserved']").val("");
			$("input[name='search_sub_access_type']").val("");
		subMerTrans_list.buildQueryParams();
		$('#dg_subMerTrans').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addSubMerTransFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'SUB_MER_TRANS',
		    width: 800,
		    height: 500,
		    href: 'addSubMerTransPage.action',
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
		    		$('#addSubMerTransFrom').form({   
						 url:'addSubMerTransAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									subMerTrans_list.buildQueryParams();
									$('#dg_subMerTrans').datagrid('load');
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
	subMerTrans_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editSubMerTransFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'SubMerTrans',
		    width: 800,
		    height: 500,
		    href: 'editSubMerTransPage.action',
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
		   				$('#editSubMerTransFrom').form({   
						 url:'editSubMerTransAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									subMerTrans_list.buildQueryParams();
									$('#dg_subMerTrans').datagrid('load');
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
		     			$('#delSubMerTransFrom').form({   
						 url:'delSubMerTransAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									subMerTrans_list.buildQueryParams();
									$('#dg_subMerTrans').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delSubMerTransFrom').submit();
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
	subMerTrans_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细SubMerTrans',
		    width: 800,
		    height: 500,
		    href: 'detailSubMerTransPage.action',
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