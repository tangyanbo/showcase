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
														<td>order_id</td>
								<td>
									<input type="text" id="search_order_id" name="search_order_id" class="easyui-textbox" value="${search_order_id}"/>
								</td>
								<td>sub_mer_id</td>
								<td>
									<input type="text" id="search_sub_mer_id" name="search_sub_mer_id" class="easyui-textbox" value="${search_sub_mer_id}"/>
								</td>
								<td>order_risk_type</td>
								<td>
									<input type="text" id="search_order_risk_type" name="search_order_risk_type" class="easyui-textbox" value="${search_order_risk_type}"/>
								</td>
								<td>order_risk_proctype</td>
								<td>
									<input type="text" id="search_order_risk_proctype" name="search_order_risk_proctype" class="easyui-textbox" value="${search_order_risk_proctype}"/>
								</td>
								<td>order_risk_proctime</td>
								<td>
									<input type="text" id="search_order_risk_proctime" name="search_order_risk_proctime" class="easyui-textbox" value="${search_order_risk_proctime}"/>
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
								<td>ext</td>
								<td>
									<input type="text" id="search_ext" name="search_ext" class="easyui-textbox" value="${search_ext}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_orderRisk" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'ORDER_ID',width:120,sortable:'true',align:'left'">order_id</th>
							<th data-options="field:'SUB_MER_ID',width:120,sortable:'true',align:'left'">sub_mer_id</th>
							<th data-options="field:'ORDER_RISK_TYPE',width:120,sortable:'true',align:'left'">order_risk_type</th>
							<th data-options="field:'ORDER_RISK_PROCTYPE',width:120,sortable:'true',align:'left'">order_risk_proctype</th>
							<th data-options="field:'ORDER_RISK_PROCTIME',width:120,sortable:'true',align:'left'">order_risk_proctime</th>
							<th data-options="field:'RESERVED1',width:120,sortable:'true',align:'left'">reserved1</th>
							<th data-options="field:'RESERVED2',width:120,sortable:'true',align:'left'">reserved2</th>
							<th data-options="field:'RESERVED3',width:120,sortable:'true',align:'left'">reserved3</th>
							<th data-options="field:'EXT',width:120,sortable:'true',align:'left'">ext</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var orderRisk_list ={};
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
	orderRisk_list.buildQueryParams=function(){
	    $('#dg_orderRisk').datagrid({
			queryParams: {
						 'search_order_id':$("input[name='search_order_id']").val(),
						 'search_sub_mer_id':$("input[name='search_sub_mer_id']").val(),
						 'search_order_risk_type':$("input[name='search_order_risk_type']").val(),
						 'search_order_risk_proctype':$("input[name='search_order_risk_proctype']").val(),
						 'search_order_risk_proctime':$("input[name='search_order_risk_proctime']").val(),
						 'search_reserved1':$("input[name='search_reserved1']").val(),
						 'search_reserved2':$("input[name='search_reserved2']").val(),
						 'search_reserved3':$("input[name='search_reserved3']").val(),
						 'search_ext':$("input[name='search_ext']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		orderRisk_list.buildQueryParams();
		$('#dg_orderRisk').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_order_id']").val("");
			$("input[name='search_sub_mer_id']").val("");
			$("input[name='search_order_risk_type']").val("");
			$("input[name='search_order_risk_proctype']").val("");
			$("input[name='search_order_risk_proctime']").val("");
			$("input[name='search_reserved1']").val("");
			$("input[name='search_reserved2']").val("");
			$("input[name='search_reserved3']").val("");
			$("input[name='search_ext']").val("");
		orderRisk_list.buildQueryParams();
		$('#dg_orderRisk').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addOrderRiskFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'ORDER_RISK',
		    width: 800,
		    height: 500,
		    href: 'addOrderRiskPage.action',
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
		    		$('#addOrderRiskFrom').form({   
						 url:'addOrderRiskAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									orderRisk_list.buildQueryParams();
									$('#dg_orderRisk').datagrid('load');
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
	orderRisk_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editOrderRiskFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'OrderRisk',
		    width: 800,
		    height: 500,
		    href: 'editOrderRiskPage.action',
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
		   				$('#editOrderRiskFrom').form({   
						 url:'editOrderRiskAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									orderRisk_list.buildQueryParams();
									$('#dg_orderRisk').datagrid('load');
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
		     			$('#delOrderRiskFrom').form({   
						 url:'delOrderRiskAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									orderRisk_list.buildQueryParams();
									$('#dg_orderRisk').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delOrderRiskFrom').submit();
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
	orderRisk_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细OrderRisk',
		    width: 800,
		    height: 500,
		    href: 'detailOrderRiskPage.action',
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