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
								<td>app_tract_id</td>
								<td>
									<input type="text" id="search_app_tract_id" name="search_app_tract_id" class="easyui-textbox" value="${search_app_tract_id}"/>
								</td>
								<td>trans_mer_id</td>
								<td>
									<input type="text" id="search_trans_mer_id" name="search_trans_mer_id" class="easyui-textbox" value="${search_trans_mer_id}"/>
								</td>
								<td>trans_rate</td>
								<td>
									<input type="text" id="search_trans_rate" name="search_trans_rate" class="easyui-textbox" value="${search_trans_rate}"/>
								</td>
								<td>lowest_fee</td>
								<td>
									<input type="text" id="search_lowest_fee" name="search_lowest_fee" class="easyui-textbox" value="${search_lowest_fee}"/>
								</td>
								<td>highest_fee</td>
								<td>
									<input type="text" id="search_highest_fee" name="search_highest_fee" class="easyui-textbox" value="${search_highest_fee}"/>
								</td>
								<td>mer_profit</td>
								<td>
									<input type="text" id="search_mer_profit" name="search_mer_profit" class="easyui-textbox" value="${search_mer_profit}"/>
								</td>
								<td>status</td>
								<td>
									<input type="text" id="search_status" name="search_status" class="easyui-textbox" value="${search_status}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>app_tract_type</td>
								<td>
									<input type="text" id="search_app_tract_type" name="search_app_tract_type" class="easyui-textbox" value="${search_app_tract_type}"/>
								</td>
								<td>remark</td>
								<td>
									<input type="text" id="search_remark" name="search_remark" class="easyui-textbox" value="${search_remark}"/>
								</td>
								<td>reserved</td>
								<td>
									<input type="text" id="search_reserved" name="search_reserved" class="easyui-textbox" value="${search_reserved}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_merAppTract" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'ID',width:120,sortable:'true',align:'left'">id</th>
							<th data-options="field:'MER_SYS_ID',width:120,sortable:'true',align:'left'">mer_sys_id</th>
							<th data-options="field:'APP_TRACT_ID',width:120,sortable:'true',align:'left'">app_tract_id</th>
							<th data-options="field:'TRANS_MER_ID',width:120,sortable:'true',align:'left'">trans_mer_id</th>
							<th data-options="field:'TRANS_RATE',width:120,sortable:'true',align:'left'">trans_rate</th>
							<th data-options="field:'LOWEST_FEE',width:120,sortable:'true',align:'left'">lowest_fee</th>
							<th data-options="field:'HIGHEST_FEE',width:120,sortable:'true',align:'left'">highest_fee</th>
							<th data-options="field:'MER_PROFIT',width:120,sortable:'true',align:'left'">mer_profit</th>
							<th data-options="field:'STATUS',width:120,sortable:'true',align:'left'">status</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'APP_TRACT_TYPE',width:120,sortable:'true',align:'left'">app_tract_type</th>
							<th data-options="field:'REMARK',width:120,sortable:'true',align:'left'">remark</th>
							<th data-options="field:'RESERVED',width:120,sortable:'true',align:'left'">reserved</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var merAppTract_list ={};
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
	merAppTract_list.buildQueryParams=function(){
	    $('#dg_merAppTract').datagrid({
			queryParams: {
						 'search_id':$("input[name='search_id']").val(),
						 'search_mer_sys_id':$("input[name='search_mer_sys_id']").val(),
						 'search_app_tract_id':$("input[name='search_app_tract_id']").val(),
						 'search_trans_mer_id':$("input[name='search_trans_mer_id']").val(),
						 'search_trans_rate':$("input[name='search_trans_rate']").val(),
						 'search_lowest_fee':$("input[name='search_lowest_fee']").val(),
						 'search_highest_fee':$("input[name='search_highest_fee']").val(),
						 'search_mer_profit':$("input[name='search_mer_profit']").val(),
						 'search_status':$("input[name='search_status']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_app_tract_type':$("input[name='search_app_tract_type']").val(),
						 'search_remark':$("input[name='search_remark']").val(),
						 'search_reserved':$("input[name='search_reserved']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		merAppTract_list.buildQueryParams();
		$('#dg_merAppTract').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_id']").val("");
			$("input[name='search_mer_sys_id']").val("");
			$("input[name='search_app_tract_id']").val("");
			$("input[name='search_trans_mer_id']").val("");
			$("input[name='search_trans_rate']").val("");
			$("input[name='search_lowest_fee']").val("");
			$("input[name='search_highest_fee']").val("");
			$("input[name='search_mer_profit']").val("");
			$("input[name='search_status']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_app_tract_type']").val("");
			$("input[name='search_remark']").val("");
			$("input[name='search_reserved']").val("");
		merAppTract_list.buildQueryParams();
		$('#dg_merAppTract').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addMerAppTractFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'MER_APP_TRACT',
		    width: 800,
		    height: 500,
		    href: 'addMerAppTractPage.action',
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
		    		$('#addMerAppTractFrom').form({   
						 url:'addMerAppTractAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									merAppTract_list.buildQueryParams();
									$('#dg_merAppTract').datagrid('load');
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
	merAppTract_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editMerAppTractFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'MerAppTract',
		    width: 800,
		    height: 500,
		    href: 'editMerAppTractPage.action',
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
		   				$('#editMerAppTractFrom').form({   
						 url:'editMerAppTractAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									merAppTract_list.buildQueryParams();
									$('#dg_merAppTract').datagrid('load');
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
		     			$('#delMerAppTractFrom').form({   
						 url:'delMerAppTractAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									merAppTract_list.buildQueryParams();
									$('#dg_merAppTract').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delMerAppTractFrom').submit();
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
	merAppTract_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细MerAppTract',
		    width: 800,
		    height: 500,
		    href: 'detailMerAppTractPage.action',
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