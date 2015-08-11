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
								<td>goods_type</td>
								<td>
									<input type="text" id="search_goods_type" name="search_goods_type" class="easyui-textbox" value="${search_goods_type}"/>
								</td>
								<td>carrier_oprator</td>
								<td>
									<input type="text" id="search_carrier_oprator" name="search_carrier_oprator" class="easyui-textbox" value="${search_carrier_oprator}"/>
								</td>
								<td>goods_name</td>
								<td>
									<input type="text" id="search_goods_name" name="search_goods_name" class="easyui-textbox" value="${search_goods_name}"/>
								</td>
								<td>goods_desc</td>
								<td>
									<input type="text" id="search_goods_desc" name="search_goods_desc" class="easyui-textbox" value="${search_goods_desc}"/>
								</td>
								<td>quantity</td>
								<td>
									<input type="text" id="search_quantity" name="search_quantity" class="easyui-textbox" value="${search_quantity}"/>
								</td>
								<td>price</td>
								<td>
									<input type="text" id="search_price" name="search_price" class="easyui-textbox" value="${search_price}"/>
								</td>
								<td>discount_price</td>
								<td>
									<input type="text" id="search_discount_price" name="search_discount_price" class="easyui-textbox" value="${search_discount_price}"/>
								</td>
								<td>trans_fee</td>
								<td>
									<input type="text" id="search_trans_fee" name="search_trans_fee" class="easyui-textbox" value="${search_trans_fee}"/>
								</td>
								<td>status</td>
								<td>
									<input type="text" id="search_status" name="search_status" class="easyui-textbox" value="${search_status}"/>
								</td>
								<td>serial_num</td>
								<td>
									<input type="text" id="search_serial_num" name="search_serial_num" class="easyui-textbox" value="${search_serial_num}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_orderGoods" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'ORDER_ID',width:120,sortable:'true',align:'left'">order_id</th>
							<th data-options="field:'GOODS_TYPE',width:120,sortable:'true',align:'left'">goods_type</th>
							<th data-options="field:'CARRIER_OPRATOR',width:120,sortable:'true',align:'left'">carrier_oprator</th>
							<th data-options="field:'GOODS_NAME',width:120,sortable:'true',align:'left'">goods_name</th>
							<th data-options="field:'GOODS_DESC',width:120,sortable:'true',align:'left'">goods_desc</th>
							<th data-options="field:'QUANTITY',width:120,sortable:'true',align:'left'">quantity</th>
							<th data-options="field:'PRICE',width:120,sortable:'true',align:'left'">price</th>
							<th data-options="field:'DISCOUNT_PRICE',width:120,sortable:'true',align:'left'">discount_price</th>
							<th data-options="field:'TRANS_FEE',width:120,sortable:'true',align:'left'">trans_fee</th>
							<th data-options="field:'STATUS',width:120,sortable:'true',align:'left'">status</th>
							<th data-options="field:'SERIAL_NUM',width:120,sortable:'true',align:'left'">serial_num</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var orderGoods_list ={};
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
	orderGoods_list.buildQueryParams=function(){
	    $('#dg_orderGoods').datagrid({
			queryParams: {
						 'search_order_id':$("input[name='search_order_id']").val(),
						 'search_goods_type':$("input[name='search_goods_type']").val(),
						 'search_carrier_oprator':$("input[name='search_carrier_oprator']").val(),
						 'search_goods_name':$("input[name='search_goods_name']").val(),
						 'search_goods_desc':$("input[name='search_goods_desc']").val(),
						 'search_quantity':$("input[name='search_quantity']").val(),
						 'search_price':$("input[name='search_price']").val(),
						 'search_discount_price':$("input[name='search_discount_price']").val(),
						 'search_trans_fee':$("input[name='search_trans_fee']").val(),
						 'search_status':$("input[name='search_status']").val(),
						 'search_serial_num':$("input[name='search_serial_num']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		orderGoods_list.buildQueryParams();
		$('#dg_orderGoods').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_order_id']").val("");
			$("input[name='search_goods_type']").val("");
			$("input[name='search_carrier_oprator']").val("");
			$("input[name='search_goods_name']").val("");
			$("input[name='search_goods_desc']").val("");
			$("input[name='search_quantity']").val("");
			$("input[name='search_price']").val("");
			$("input[name='search_discount_price']").val("");
			$("input[name='search_trans_fee']").val("");
			$("input[name='search_status']").val("");
			$("input[name='search_serial_num']").val("");
		orderGoods_list.buildQueryParams();
		$('#dg_orderGoods').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addOrderGoodsFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'ORDER_GOODS',
		    width: 800,
		    height: 500,
		    href: 'addOrderGoodsPage.action',
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
		    		$('#addOrderGoodsFrom').form({   
						 url:'addOrderGoodsAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									orderGoods_list.buildQueryParams();
									$('#dg_orderGoods').datagrid('load');
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
	orderGoods_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editOrderGoodsFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'OrderGoods',
		    width: 800,
		    height: 500,
		    href: 'editOrderGoodsPage.action',
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
		   				$('#editOrderGoodsFrom').form({   
						 url:'editOrderGoodsAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									orderGoods_list.buildQueryParams();
									$('#dg_orderGoods').datagrid('load');
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
		     			$('#delOrderGoodsFrom').form({   
						 url:'delOrderGoodsAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									orderGoods_list.buildQueryParams();
									$('#dg_orderGoods').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delOrderGoodsFrom').submit();
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
	orderGoods_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细OrderGoods',
		    width: 800,
		    height: 500,
		    href: 'detailOrderGoodsPage.action',
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