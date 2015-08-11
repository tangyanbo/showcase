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
														<td>batch_id</td>
								<td>
									<input type="text" id="search_batch_id" name="search_batch_id" class="easyui-textbox" value="${search_batch_id}"/>
								</td>
								<td>batch_date</td>
								<td>
									<input type="text" id="search_batch_date" name="search_batch_date" class="easyui-textbox" value="${search_batch_date}"/>
								</td>
								<td>prder_amt</td>
								<td>
									<input type="text" id="search_prder_amt" name="search_prder_amt" class="easyui-textbox" value="${search_prder_amt}"/>
								</td>
								<td>create_date</td>
								<td>
									<input type="text" id="search_create_date" name="search_create_date" class="easyui-textbox" value="${search_create_date}"/>
								</td>
								<td>finish_time</td>
								<td>
									<input type="text" id="search_finish_time" name="search_finish_time" class="easyui-textbox" value="${search_finish_time}"/>
								</td>
								<td>trans_fee</td>
								<td>
									<input type="text" id="search_trans_fee" name="search_trans_fee" class="easyui-textbox" value="${search_trans_fee}"/>
								</td>
								<td>ordeer_count</td>
								<td>
									<input type="text" id="search_ordeer_count" name="search_ordeer_count" class="easyui-textbox" value="${search_ordeer_count}"/>
								</td>
								<td>status</td>
								<td>
									<input type="text" id="search_status" name="search_status" class="easyui-textbox" value="${search_status}"/>
								</td>
								<td>reservaed1</td>
								<td>
									<input type="text" id="search_reservaed1" name="search_reservaed1" class="easyui-textbox" value="${search_reservaed1}"/>
								</td>
								<td>reservaed2</td>
								<td>
									<input type="text" id="search_reservaed2" name="search_reservaed2" class="easyui-textbox" value="${search_reservaed2}"/>
								</td>
								<td>reservaed3</td>
								<td>
									<input type="text" id="search_reservaed3" name="search_reservaed3" class="easyui-textbox" value="${search_reservaed3}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_subMerCashoutBatch" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'BATCH_ID',width:120,sortable:'true',align:'left'">batch_id</th>
							<th data-options="field:'BATCH_DATE',width:120,sortable:'true',align:'left'">batch_date</th>
							<th data-options="field:'PRDER_AMT',width:120,sortable:'true',align:'left'">prder_amt</th>
							<th data-options="field:'CREATE_DATE',width:120,sortable:'true',align:'left'">create_date</th>
							<th data-options="field:'FINISH_TIME',width:120,sortable:'true',align:'left'">finish_time</th>
							<th data-options="field:'TRANS_FEE',width:120,sortable:'true',align:'left'">trans_fee</th>
							<th data-options="field:'ORDEER_COUNT',width:120,sortable:'true',align:'left'">ordeer_count</th>
							<th data-options="field:'STATUS',width:120,sortable:'true',align:'left'">status</th>
							<th data-options="field:'RESERVAED1',width:120,sortable:'true',align:'left'">reservaed1</th>
							<th data-options="field:'RESERVAED2',width:120,sortable:'true',align:'left'">reservaed2</th>
							<th data-options="field:'RESERVAED3',width:120,sortable:'true',align:'left'">reservaed3</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var subMerCashoutBatch_list ={};
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
	subMerCashoutBatch_list.buildQueryParams=function(){
	    $('#dg_subMerCashoutBatch').datagrid({
			queryParams: {
						 'search_batch_id':$("input[name='search_batch_id']").val(),
						 'search_batch_date':$("input[name='search_batch_date']").val(),
						 'search_prder_amt':$("input[name='search_prder_amt']").val(),
						 'search_create_date':$("input[name='search_create_date']").val(),
						 'search_finish_time':$("input[name='search_finish_time']").val(),
						 'search_trans_fee':$("input[name='search_trans_fee']").val(),
						 'search_ordeer_count':$("input[name='search_ordeer_count']").val(),
						 'search_status':$("input[name='search_status']").val(),
						 'search_reservaed1':$("input[name='search_reservaed1']").val(),
						 'search_reservaed2':$("input[name='search_reservaed2']").val(),
						 'search_reservaed3':$("input[name='search_reservaed3']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		subMerCashoutBatch_list.buildQueryParams();
		$('#dg_subMerCashoutBatch').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_batch_id']").val("");
			$("input[name='search_batch_date']").val("");
			$("input[name='search_prder_amt']").val("");
			$("input[name='search_create_date']").val("");
			$("input[name='search_finish_time']").val("");
			$("input[name='search_trans_fee']").val("");
			$("input[name='search_ordeer_count']").val("");
			$("input[name='search_status']").val("");
			$("input[name='search_reservaed1']").val("");
			$("input[name='search_reservaed2']").val("");
			$("input[name='search_reservaed3']").val("");
		subMerCashoutBatch_list.buildQueryParams();
		$('#dg_subMerCashoutBatch').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addSubMerCashoutBatchFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'SUB_MER_CASHOUT_BATCH',
		    width: 800,
		    height: 500,
		    href: 'addSubMerCashoutBatchPage.action',
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
		    		$('#addSubMerCashoutBatchFrom').form({   
						 url:'addSubMerCashoutBatchAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									subMerCashoutBatch_list.buildQueryParams();
									$('#dg_subMerCashoutBatch').datagrid('load');
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
	subMerCashoutBatch_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editSubMerCashoutBatchFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'SubMerCashoutBatch',
		    width: 800,
		    height: 500,
		    href: 'editSubMerCashoutBatchPage.action',
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
		   				$('#editSubMerCashoutBatchFrom').form({   
						 url:'editSubMerCashoutBatchAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									subMerCashoutBatch_list.buildQueryParams();
									$('#dg_subMerCashoutBatch').datagrid('load');
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
		     			$('#delSubMerCashoutBatchFrom').form({   
						 url:'delSubMerCashoutBatchAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									subMerCashoutBatch_list.buildQueryParams();
									$('#dg_subMerCashoutBatch').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delSubMerCashoutBatchFrom').submit();
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
	subMerCashoutBatch_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细SubMerCashoutBatch',
		    width: 800,
		    height: 500,
		    href: 'detailSubMerCashoutBatchPage.action',
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