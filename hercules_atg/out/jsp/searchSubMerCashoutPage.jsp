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
								<td>sub_mer_id</td>
								<td>
									<input type="text" id="search_sub_mer_id" name="search_sub_mer_id" class="easyui-textbox" value="${search_sub_mer_id}"/>
								</td>
								<td>mer_sys_id</td>
								<td>
									<input type="text" id="search_mer_sys_id" name="search_mer_sys_id" class="easyui-textbox" value="${search_mer_sys_id}"/>
								</td>
								<td>order_amt</td>
								<td>
									<input type="text" id="search_order_amt" name="search_order_amt" class="easyui-textbox" value="${search_order_amt}"/>
								</td>
								<td>daifa_amt</td>
								<td>
									<input type="text" id="search_daifa_amt" name="search_daifa_amt" class="easyui-textbox" value="${search_daifa_amt}"/>
								</td>
								<td>order_status</td>
								<td>
									<input type="text" id="search_order_status" name="search_order_status" class="easyui-textbox" value="${search_order_status}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>finish_time</td>
								<td>
									<input type="text" id="search_finish_time" name="search_finish_time" class="easyui-textbox" value="${search_finish_time}"/>
								</td>
								<td>trans_id</td>
								<td>
									<input type="text" id="search_trans_id" name="search_trans_id" class="easyui-textbox" value="${search_trans_id}"/>
								</td>
								<td>trans_qid</td>
								<td>
									<input type="text" id="search_trans_qid" name="search_trans_qid" class="easyui-textbox" value="${search_trans_qid}"/>
								</td>
								<td>trans_fee</td>
								<td>
									<input type="text" id="search_trans_fee" name="search_trans_fee" class="easyui-textbox" value="${search_trans_fee}"/>
								</td>
								<td>batch_id</td>
								<td>
									<input type="text" id="search_batch_id" name="search_batch_id" class="easyui-textbox" value="${search_batch_id}"/>
								</td>
								<td>t0_mer_rate</td>
								<td>
									<input type="text" id="search_t0_mer_rate" name="search_t0_mer_rate" class="easyui-textbox" value="${search_t0_mer_rate}"/>
								</td>
								<td>t0_mer_profit</td>
								<td>
									<input type="text" id="search_t0_mer_profit" name="search_t0_mer_profit" class="easyui-textbox" value="${search_t0_mer_profit}"/>
								</td>
								<td>t0_mer_gain</td>
								<td>
									<input type="text" id="search_t0_mer_gain" name="search_t0_mer_gain" class="easyui-textbox" value="${search_t0_mer_gain}"/>
								</td>
								<td>t0_hx_profit</td>
								<td>
									<input type="text" id="search_t0_hx_profit" name="search_t0_hx_profit" class="easyui-textbox" value="${search_t0_hx_profit}"/>
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
				<table  id="dg_subMerCashout" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'ID',width:120,sortable:'true',align:'left'">id</th>
							<th data-options="field:'SUB_MER_ID',width:120,sortable:'true',align:'left'">sub_mer_id</th>
							<th data-options="field:'MER_SYS_ID',width:120,sortable:'true',align:'left'">mer_sys_id</th>
							<th data-options="field:'ORDER_AMT',width:120,sortable:'true',align:'left'">order_amt</th>
							<th data-options="field:'DAIFA_AMT',width:120,sortable:'true',align:'left'">daifa_amt</th>
							<th data-options="field:'ORDER_STATUS',width:120,sortable:'true',align:'left'">order_status</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'FINISH_TIME',width:120,sortable:'true',align:'left'">finish_time</th>
							<th data-options="field:'TRANS_ID',width:120,sortable:'true',align:'left'">trans_id</th>
							<th data-options="field:'TRANS_QID',width:120,sortable:'true',align:'left'">trans_qid</th>
							<th data-options="field:'TRANS_FEE',width:120,sortable:'true',align:'left'">trans_fee</th>
							<th data-options="field:'BATCH_ID',width:120,sortable:'true',align:'left'">batch_id</th>
							<th data-options="field:'T0_MER_RATE',width:120,sortable:'true',align:'left'">t0_mer_rate</th>
							<th data-options="field:'T0_MER_PROFIT',width:120,sortable:'true',align:'left'">t0_mer_profit</th>
							<th data-options="field:'T0_MER_GAIN',width:120,sortable:'true',align:'left'">t0_mer_gain</th>
							<th data-options="field:'T0_HX_PROFIT',width:120,sortable:'true',align:'left'">t0_hx_profit</th>
							<th data-options="field:'RESERVED1',width:120,sortable:'true',align:'left'">reserved1</th>
							<th data-options="field:'RESERVED2',width:120,sortable:'true',align:'left'">reserved2</th>
							<th data-options="field:'RESERVED3',width:120,sortable:'true',align:'left'">reserved3</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var subMerCashout_list ={};
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
	subMerCashout_list.buildQueryParams=function(){
	    $('#dg_subMerCashout').datagrid({
			queryParams: {
						 'search_id':$("input[name='search_id']").val(),
						 'search_sub_mer_id':$("input[name='search_sub_mer_id']").val(),
						 'search_mer_sys_id':$("input[name='search_mer_sys_id']").val(),
						 'search_order_amt':$("input[name='search_order_amt']").val(),
						 'search_daifa_amt':$("input[name='search_daifa_amt']").val(),
						 'search_order_status':$("input[name='search_order_status']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_finish_time':$("input[name='search_finish_time']").val(),
						 'search_trans_id':$("input[name='search_trans_id']").val(),
						 'search_trans_qid':$("input[name='search_trans_qid']").val(),
						 'search_trans_fee':$("input[name='search_trans_fee']").val(),
						 'search_batch_id':$("input[name='search_batch_id']").val(),
						 'search_t0_mer_rate':$("input[name='search_t0_mer_rate']").val(),
						 'search_t0_mer_profit':$("input[name='search_t0_mer_profit']").val(),
						 'search_t0_mer_gain':$("input[name='search_t0_mer_gain']").val(),
						 'search_t0_hx_profit':$("input[name='search_t0_hx_profit']").val(),
						 'search_reserved1':$("input[name='search_reserved1']").val(),
						 'search_reserved2':$("input[name='search_reserved2']").val(),
						 'search_reserved3':$("input[name='search_reserved3']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		subMerCashout_list.buildQueryParams();
		$('#dg_subMerCashout').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_id']").val("");
			$("input[name='search_sub_mer_id']").val("");
			$("input[name='search_mer_sys_id']").val("");
			$("input[name='search_order_amt']").val("");
			$("input[name='search_daifa_amt']").val("");
			$("input[name='search_order_status']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_finish_time']").val("");
			$("input[name='search_trans_id']").val("");
			$("input[name='search_trans_qid']").val("");
			$("input[name='search_trans_fee']").val("");
			$("input[name='search_batch_id']").val("");
			$("input[name='search_t0_mer_rate']").val("");
			$("input[name='search_t0_mer_profit']").val("");
			$("input[name='search_t0_mer_gain']").val("");
			$("input[name='search_t0_hx_profit']").val("");
			$("input[name='search_reserved1']").val("");
			$("input[name='search_reserved2']").val("");
			$("input[name='search_reserved3']").val("");
		subMerCashout_list.buildQueryParams();
		$('#dg_subMerCashout').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addSubMerCashoutFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'SUB_MER_CASHOUT',
		    width: 800,
		    height: 500,
		    href: 'addSubMerCashoutPage.action',
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
		    		$('#addSubMerCashoutFrom').form({   
						 url:'addSubMerCashoutAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									subMerCashout_list.buildQueryParams();
									$('#dg_subMerCashout').datagrid('load');
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
	subMerCashout_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editSubMerCashoutFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'SubMerCashout',
		    width: 800,
		    height: 500,
		    href: 'editSubMerCashoutPage.action',
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
		   				$('#editSubMerCashoutFrom').form({   
						 url:'editSubMerCashoutAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									subMerCashout_list.buildQueryParams();
									$('#dg_subMerCashout').datagrid('load');
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
		     			$('#delSubMerCashoutFrom').form({   
						 url:'delSubMerCashoutAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									subMerCashout_list.buildQueryParams();
									$('#dg_subMerCashout').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delSubMerCashoutFrom').submit();
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
	subMerCashout_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细SubMerCashout',
		    width: 800,
		    height: 500,
		    href: 'detailSubMerCashoutPage.action',
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