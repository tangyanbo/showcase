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
														<td>serial_no</td>
								<td>
									<input type="text" id="search_serial_no" name="search_serial_no" class="easyui-textbox" value="${search_serial_no}"/>
								</td>
								<td>order_id</td>
								<td>
									<input type="text" id="search_order_id" name="search_order_id" class="easyui-textbox" value="${search_order_id}"/>
								</td>
								<td>sub_mer_id</td>
								<td>
									<input type="text" id="search_sub_mer_id" name="search_sub_mer_id" class="easyui-textbox" value="${search_sub_mer_id}"/>
								</td>
								<td>mer_amt</td>
								<td>
									<input type="text" id="search_mer_amt" name="search_mer_amt" class="easyui-textbox" value="${search_mer_amt}"/>
								</td>
								<td>trans_fee</td>
								<td>
									<input type="text" id="search_trans_fee" name="search_trans_fee" class="easyui-textbox" value="${search_trans_fee}"/>
								</td>
								<td>clear_amt</td>
								<td>
									<input type="text" id="search_clear_amt" name="search_clear_amt" class="easyui-textbox" value="${search_clear_amt}"/>
								</td>
								<td>clear_type</td>
								<td>
									<input type="text" id="search_clear_type" name="search_clear_type" class="easyui-textbox" value="${search_clear_type}"/>
								</td>
								<td>clear_tract</td>
								<td>
									<input type="text" id="search_clear_tract" name="search_clear_tract" class="easyui-textbox" value="${search_clear_tract}"/>
								</td>
								<td>clear_time</td>
								<td>
									<input type="text" id="search_clear_time" name="search_clear_time" class="easyui-textbox" value="${search_clear_time}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>trans_type</td>
								<td>
									<input type="text" id="search_trans_type" name="search_trans_type" class="easyui-textbox" value="${search_trans_type}"/>
								</td>
								<td>settle_date</td>
								<td>
									<input type="text" id="search_settle_date" name="search_settle_date" class="easyui-textbox" value="${search_settle_date}"/>
								</td>
								<td>reserved</td>
								<td>
									<input type="text" id="search_reserved" name="search_reserved" class="easyui-textbox" value="${search_reserved}"/>
								</td>
								<td>create_date</td>
								<td>
									<input type="text" id="search_create_date" name="search_create_date" class="easyui-textbox" value="${search_create_date}"/>
								</td>
								<td>clear_batch_no</td>
								<td>
									<input type="text" id="search_clear_batch_no" name="search_clear_batch_no" class="easyui-textbox" value="${search_clear_batch_no}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_orderStatictis" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'SERIAL_NO',width:120,sortable:'true',align:'left'">serial_no</th>
							<th data-options="field:'ORDER_ID',width:120,sortable:'true',align:'left'">order_id</th>
							<th data-options="field:'SUB_MER_ID',width:120,sortable:'true',align:'left'">sub_mer_id</th>
							<th data-options="field:'MER_AMT',width:120,sortable:'true',align:'left'">mer_amt</th>
							<th data-options="field:'TRANS_FEE',width:120,sortable:'true',align:'left'">trans_fee</th>
							<th data-options="field:'CLEAR_AMT',width:120,sortable:'true',align:'left'">clear_amt</th>
							<th data-options="field:'CLEAR_TYPE',width:120,sortable:'true',align:'left'">clear_type</th>
							<th data-options="field:'CLEAR_TRACT',width:120,sortable:'true',align:'left'">clear_tract</th>
							<th data-options="field:'CLEAR_TIME',width:120,sortable:'true',align:'left'">clear_time</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'TRANS_TYPE',width:120,sortable:'true',align:'left'">trans_type</th>
							<th data-options="field:'SETTLE_DATE',width:120,sortable:'true',align:'left'">settle_date</th>
							<th data-options="field:'RESERVED',width:120,sortable:'true',align:'left'">reserved</th>
							<th data-options="field:'CREATE_DATE',width:120,sortable:'true',align:'left'">create_date</th>
							<th data-options="field:'CLEAR_BATCH_NO',width:120,sortable:'true',align:'left'">clear_batch_no</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var orderStatictis_list ={};
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
	orderStatictis_list.buildQueryParams=function(){
	    $('#dg_orderStatictis').datagrid({
			queryParams: {
						 'search_serial_no':$("input[name='search_serial_no']").val(),
						 'search_order_id':$("input[name='search_order_id']").val(),
						 'search_sub_mer_id':$("input[name='search_sub_mer_id']").val(),
						 'search_mer_amt':$("input[name='search_mer_amt']").val(),
						 'search_trans_fee':$("input[name='search_trans_fee']").val(),
						 'search_clear_amt':$("input[name='search_clear_amt']").val(),
						 'search_clear_type':$("input[name='search_clear_type']").val(),
						 'search_clear_tract':$("input[name='search_clear_tract']").val(),
						 'search_clear_time':$("input[name='search_clear_time']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_trans_type':$("input[name='search_trans_type']").val(),
						 'search_settle_date':$("input[name='search_settle_date']").val(),
						 'search_reserved':$("input[name='search_reserved']").val(),
						 'search_create_date':$("input[name='search_create_date']").val(),
						 'search_clear_batch_no':$("input[name='search_clear_batch_no']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		orderStatictis_list.buildQueryParams();
		$('#dg_orderStatictis').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_serial_no']").val("");
			$("input[name='search_order_id']").val("");
			$("input[name='search_sub_mer_id']").val("");
			$("input[name='search_mer_amt']").val("");
			$("input[name='search_trans_fee']").val("");
			$("input[name='search_clear_amt']").val("");
			$("input[name='search_clear_type']").val("");
			$("input[name='search_clear_tract']").val("");
			$("input[name='search_clear_time']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_trans_type']").val("");
			$("input[name='search_settle_date']").val("");
			$("input[name='search_reserved']").val("");
			$("input[name='search_create_date']").val("");
			$("input[name='search_clear_batch_no']").val("");
		orderStatictis_list.buildQueryParams();
		$('#dg_orderStatictis').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addOrderStatictisFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'ORDER_STATICTIS',
		    width: 800,
		    height: 500,
		    href: 'addOrderStatictisPage.action',
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
		    		$('#addOrderStatictisFrom').form({   
						 url:'addOrderStatictisAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									orderStatictis_list.buildQueryParams();
									$('#dg_orderStatictis').datagrid('load');
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
	orderStatictis_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editOrderStatictisFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'OrderStatictis',
		    width: 800,
		    height: 500,
		    href: 'editOrderStatictisPage.action',
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
		   				$('#editOrderStatictisFrom').form({   
						 url:'editOrderStatictisAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									orderStatictis_list.buildQueryParams();
									$('#dg_orderStatictis').datagrid('load');
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
		     			$('#delOrderStatictisFrom').form({   
						 url:'delOrderStatictisAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									orderStatictis_list.buildQueryParams();
									$('#dg_orderStatictis').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delOrderStatictisFrom').submit();
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
	orderStatictis_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细OrderStatictis',
		    width: 800,
		    height: 500,
		    href: 'detailOrderStatictisPage.action',
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