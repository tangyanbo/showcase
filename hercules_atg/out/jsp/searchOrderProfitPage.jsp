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
								<td>order_id</td>
								<td>
									<input type="text" id="search_order_id" name="search_order_id" class="easyui-textbox" value="${search_order_id}"/>
								</td>
								<td>mer_sys_id</td>
								<td>
									<input type="text" id="search_mer_sys_id" name="search_mer_sys_id" class="easyui-textbox" value="${search_mer_sys_id}"/>
								</td>
								<td>mer_amt</td>
								<td>
									<input type="text" id="search_mer_amt" name="search_mer_amt" class="easyui-textbox" value="${search_mer_amt}"/>
								</td>
								<td>mer_profit</td>
								<td>
									<input type="text" id="search_mer_profit" name="search_mer_profit" class="easyui-textbox" value="${search_mer_profit}"/>
								</td>
								<td>mer_rate</td>
								<td>
									<input type="text" id="search_mer_rate" name="search_mer_rate" class="easyui-textbox" value="${search_mer_rate}"/>
								</td>
								<td>mer_hight_fee</td>
								<td>
									<input type="text" id="search_mer_hight_fee" name="search_mer_hight_fee" class="easyui-textbox" value="${search_mer_hight_fee}"/>
								</td>
								<td>agent_l1_id</td>
								<td>
									<input type="text" id="search_agent_l1_id" name="search_agent_l1_id" class="easyui-textbox" value="${search_agent_l1_id}"/>
								</td>
								<td>agent1_profit</td>
								<td>
									<input type="text" id="search_agent1_profit" name="search_agent1_profit" class="easyui-textbox" value="${search_agent1_profit}"/>
								</td>
								<td>agent1_rate</td>
								<td>
									<input type="text" id="search_agent1_rate" name="search_agent1_rate" class="easyui-textbox" value="${search_agent1_rate}"/>
								</td>
								<td>agent1_hight_fee</td>
								<td>
									<input type="text" id="search_agent1_hight_fee" name="search_agent1_hight_fee" class="easyui-textbox" value="${search_agent1_hight_fee}"/>
								</td>
								<td>agent_l2_id</td>
								<td>
									<input type="text" id="search_agent_l2_id" name="search_agent_l2_id" class="easyui-textbox" value="${search_agent_l2_id}"/>
								</td>
								<td>agent2_profit</td>
								<td>
									<input type="text" id="search_agent2_profit" name="search_agent2_profit" class="easyui-textbox" value="${search_agent2_profit}"/>
								</td>
								<td>agent2_rate</td>
								<td>
									<input type="text" id="search_agent2_rate" name="search_agent2_rate" class="easyui-textbox" value="${search_agent2_rate}"/>
								</td>
								<td>agent2_hight_fee</td>
								<td>
									<input type="text" id="search_agent2_hight_fee" name="search_agent2_hight_fee" class="easyui-textbox" value="${search_agent2_hight_fee}"/>
								</td>
								<td>plat_id</td>
								<td>
									<input type="text" id="search_plat_id" name="search_plat_id" class="easyui-textbox" value="${search_plat_id}"/>
								</td>
								<td>plat_profit</td>
								<td>
									<input type="text" id="search_plat_profit" name="search_plat_profit" class="easyui-textbox" value="${search_plat_profit}"/>
								</td>
								<td>bypay_profit</td>
								<td>
									<input type="text" id="search_bypay_profit" name="search_bypay_profit" class="easyui-textbox" value="${search_bypay_profit}"/>
								</td>
								<td>tract_fee</td>
								<td>
									<input type="text" id="search_tract_fee" name="search_tract_fee" class="easyui-textbox" value="${search_tract_fee}"/>
								</td>
								<td>tract_bypay_profit</td>
								<td>
									<input type="text" id="search_tract_bypay_profit" name="search_tract_bypay_profit" class="easyui-textbox" value="${search_tract_bypay_profit}"/>
								</td>
								<td>tract_acqbank_profit</td>
								<td>
									<input type="text" id="search_tract_acqbank_profit" name="search_tract_acqbank_profit" class="easyui-textbox" value="${search_tract_acqbank_profit}"/>
								</td>
								<td>tract_cost</td>
								<td>
									<input type="text" id="search_tract_cost" name="search_tract_cost" class="easyui-textbox" value="${search_tract_cost}"/>
								</td>
								<td>reserved</td>
								<td>
									<input type="text" id="search_reserved" name="search_reserved" class="easyui-textbox" value="${search_reserved}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>sub_mer_rate</td>
								<td>
									<input type="text" id="search_sub_mer_rate" name="search_sub_mer_rate" class="easyui-textbox" value="${search_sub_mer_rate}"/>
								</td>
								<td>sub_mer_hight_fee</td>
								<td>
									<input type="text" id="search_sub_mer_hight_fee" name="search_sub_mer_hight_fee" class="easyui-textbox" value="${search_sub_mer_hight_fee}"/>
								</td>
								<td>create_date</td>
								<td>
									<input type="text" id="search_create_date" name="search_create_date" class="easyui-textbox" value="${search_create_date}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_orderProfit" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'ID',width:120,sortable:'true',align:'left'">id</th>
							<th data-options="field:'ORDER_ID',width:120,sortable:'true',align:'left'">order_id</th>
							<th data-options="field:'MER_SYS_ID',width:120,sortable:'true',align:'left'">mer_sys_id</th>
							<th data-options="field:'MER_AMT',width:120,sortable:'true',align:'left'">mer_amt</th>
							<th data-options="field:'MER_PROFIT',width:120,sortable:'true',align:'left'">mer_profit</th>
							<th data-options="field:'MER_RATE',width:120,sortable:'true',align:'left'">mer_rate</th>
							<th data-options="field:'MER_HIGHT_FEE',width:120,sortable:'true',align:'left'">mer_hight_fee</th>
							<th data-options="field:'AGENT_L1_ID',width:120,sortable:'true',align:'left'">agent_l1_id</th>
							<th data-options="field:'AGENT1_PROFIT',width:120,sortable:'true',align:'left'">agent1_profit</th>
							<th data-options="field:'AGENT1_RATE',width:120,sortable:'true',align:'left'">agent1_rate</th>
							<th data-options="field:'AGENT1_HIGHT_FEE',width:120,sortable:'true',align:'left'">agent1_hight_fee</th>
							<th data-options="field:'AGENT_L2_ID',width:120,sortable:'true',align:'left'">agent_l2_id</th>
							<th data-options="field:'AGENT2_PROFIT',width:120,sortable:'true',align:'left'">agent2_profit</th>
							<th data-options="field:'AGENT2_RATE',width:120,sortable:'true',align:'left'">agent2_rate</th>
							<th data-options="field:'AGENT2_HIGHT_FEE',width:120,sortable:'true',align:'left'">agent2_hight_fee</th>
							<th data-options="field:'PLAT_ID',width:120,sortable:'true',align:'left'">plat_id</th>
							<th data-options="field:'PLAT_PROFIT',width:120,sortable:'true',align:'left'">plat_profit</th>
							<th data-options="field:'BYPAY_PROFIT',width:120,sortable:'true',align:'left'">bypay_profit</th>
							<th data-options="field:'TRACT_FEE',width:120,sortable:'true',align:'left'">tract_fee</th>
							<th data-options="field:'TRACT_BYPAY_PROFIT',width:120,sortable:'true',align:'left'">tract_bypay_profit</th>
							<th data-options="field:'TRACT_ACQBANK_PROFIT',width:120,sortable:'true',align:'left'">tract_acqbank_profit</th>
							<th data-options="field:'TRACT_COST',width:120,sortable:'true',align:'left'">tract_cost</th>
							<th data-options="field:'RESERVED',width:120,sortable:'true',align:'left'">reserved</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'SUB_MER_RATE',width:120,sortable:'true',align:'left'">sub_mer_rate</th>
							<th data-options="field:'SUB_MER_HIGHT_FEE',width:120,sortable:'true',align:'left'">sub_mer_hight_fee</th>
							<th data-options="field:'CREATE_DATE',width:120,sortable:'true',align:'left'">create_date</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var orderProfit_list ={};
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
	orderProfit_list.buildQueryParams=function(){
	    $('#dg_orderProfit').datagrid({
			queryParams: {
						 'search_id':$("input[name='search_id']").val(),
						 'search_order_id':$("input[name='search_order_id']").val(),
						 'search_mer_sys_id':$("input[name='search_mer_sys_id']").val(),
						 'search_mer_amt':$("input[name='search_mer_amt']").val(),
						 'search_mer_profit':$("input[name='search_mer_profit']").val(),
						 'search_mer_rate':$("input[name='search_mer_rate']").val(),
						 'search_mer_hight_fee':$("input[name='search_mer_hight_fee']").val(),
						 'search_agent_l1_id':$("input[name='search_agent_l1_id']").val(),
						 'search_agent1_profit':$("input[name='search_agent1_profit']").val(),
						 'search_agent1_rate':$("input[name='search_agent1_rate']").val(),
						 'search_agent1_hight_fee':$("input[name='search_agent1_hight_fee']").val(),
						 'search_agent_l2_id':$("input[name='search_agent_l2_id']").val(),
						 'search_agent2_profit':$("input[name='search_agent2_profit']").val(),
						 'search_agent2_rate':$("input[name='search_agent2_rate']").val(),
						 'search_agent2_hight_fee':$("input[name='search_agent2_hight_fee']").val(),
						 'search_plat_id':$("input[name='search_plat_id']").val(),
						 'search_plat_profit':$("input[name='search_plat_profit']").val(),
						 'search_bypay_profit':$("input[name='search_bypay_profit']").val(),
						 'search_tract_fee':$("input[name='search_tract_fee']").val(),
						 'search_tract_bypay_profit':$("input[name='search_tract_bypay_profit']").val(),
						 'search_tract_acqbank_profit':$("input[name='search_tract_acqbank_profit']").val(),
						 'search_tract_cost':$("input[name='search_tract_cost']").val(),
						 'search_reserved':$("input[name='search_reserved']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_sub_mer_rate':$("input[name='search_sub_mer_rate']").val(),
						 'search_sub_mer_hight_fee':$("input[name='search_sub_mer_hight_fee']").val(),
						 'search_create_date':$("input[name='search_create_date']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		orderProfit_list.buildQueryParams();
		$('#dg_orderProfit').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_id']").val("");
			$("input[name='search_order_id']").val("");
			$("input[name='search_mer_sys_id']").val("");
			$("input[name='search_mer_amt']").val("");
			$("input[name='search_mer_profit']").val("");
			$("input[name='search_mer_rate']").val("");
			$("input[name='search_mer_hight_fee']").val("");
			$("input[name='search_agent_l1_id']").val("");
			$("input[name='search_agent1_profit']").val("");
			$("input[name='search_agent1_rate']").val("");
			$("input[name='search_agent1_hight_fee']").val("");
			$("input[name='search_agent_l2_id']").val("");
			$("input[name='search_agent2_profit']").val("");
			$("input[name='search_agent2_rate']").val("");
			$("input[name='search_agent2_hight_fee']").val("");
			$("input[name='search_plat_id']").val("");
			$("input[name='search_plat_profit']").val("");
			$("input[name='search_bypay_profit']").val("");
			$("input[name='search_tract_fee']").val("");
			$("input[name='search_tract_bypay_profit']").val("");
			$("input[name='search_tract_acqbank_profit']").val("");
			$("input[name='search_tract_cost']").val("");
			$("input[name='search_reserved']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_sub_mer_rate']").val("");
			$("input[name='search_sub_mer_hight_fee']").val("");
			$("input[name='search_create_date']").val("");
		orderProfit_list.buildQueryParams();
		$('#dg_orderProfit').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addOrderProfitFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'ORDER_PROFIT',
		    width: 800,
		    height: 500,
		    href: 'addOrderProfitPage.action',
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
		    		$('#addOrderProfitFrom').form({   
						 url:'addOrderProfitAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									orderProfit_list.buildQueryParams();
									$('#dg_orderProfit').datagrid('load');
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
	orderProfit_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editOrderProfitFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'OrderProfit',
		    width: 800,
		    height: 500,
		    href: 'editOrderProfitPage.action',
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
		   				$('#editOrderProfitFrom').form({   
						 url:'editOrderProfitAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									orderProfit_list.buildQueryParams();
									$('#dg_orderProfit').datagrid('load');
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
		     			$('#delOrderProfitFrom').form({   
						 url:'delOrderProfitAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									orderProfit_list.buildQueryParams();
									$('#dg_orderProfit').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delOrderProfitFrom').submit();
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
	orderProfit_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细OrderProfit',
		    width: 800,
		    height: 500,
		    href: 'detailOrderProfitPage.action',
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