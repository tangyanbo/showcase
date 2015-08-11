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
								<td>trans_date</td>
								<td>
									<input type="text" id="search_trans_date" name="search_trans_date" class="easyui-textbox" value="${search_trans_date}"/>
								</td>
								<td>trans_amt</td>
								<td>
									<input type="text" id="search_trans_amt" name="search_trans_amt" class="easyui-textbox" value="${search_trans_amt}"/>
								</td>
								<td>order_id</td>
								<td>
									<input type="text" id="search_order_id" name="search_order_id" class="easyui-textbox" value="${search_order_id}"/>
								</td>
								<td>card_id</td>
								<td>
									<input type="text" id="search_card_id" name="search_card_id" class="easyui-textbox" value="${search_card_id}"/>
								</td>
								<td>sub_mer_id</td>
								<td>
									<input type="text" id="search_sub_mer_id" name="search_sub_mer_id" class="easyui-textbox" value="${search_sub_mer_id}"/>
								</td>
								<td>mer_sys_id</td>
								<td>
									<input type="text" id="search_mer_sys_id" name="search_mer_sys_id" class="easyui-textbox" value="${search_mer_sys_id}"/>
								</td>
								<td>mer_ord_id</td>
								<td>
									<input type="text" id="search_mer_ord_id" name="search_mer_ord_id" class="easyui-textbox" value="${search_mer_ord_id}"/>
								</td>
								<td>trans_mer_id</td>
								<td>
									<input type="text" id="search_trans_mer_id" name="search_trans_mer_id" class="easyui-textbox" value="${search_trans_mer_id}"/>
								</td>
								<td>date</td>
								<td>
									<input type="text" id="search_date" name="search_date" class="easyui-textbox" value="${search_date}"/>
								</td>
								<td>sys_ref_num</td>
								<td>
									<input type="text" id="search_sys_ref_num" name="search_sys_ref_num" class="easyui-textbox" value="${search_sys_ref_num}"/>
								</td>
								<td>sys_tra_num</td>
								<td>
									<input type="text" id="search_sys_tra_num" name="search_sys_tra_num" class="easyui-textbox" value="${search_sys_tra_num}"/>
								</td>
								<td>return_code</td>
								<td>
									<input type="text" id="search_return_code" name="search_return_code" class="easyui-textbox" value="${search_return_code}"/>
								</td>
								<td>trans_type</td>
								<td>
									<input type="text" id="search_trans_type" name="search_trans_type" class="easyui-textbox" value="${search_trans_type}"/>
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
								<td>reserved4</td>
								<td>
									<input type="text" id="search_reserved4" name="search_reserved4" class="easyui-textbox" value="${search_reserved4}"/>
								</td>
								<td>reserved5</td>
								<td>
									<input type="text" id="search_reserved5" name="search_reserved5" class="easyui-textbox" value="${search_reserved5}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_unilateralOrderInfo" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'ID',width:120,sortable:'true',align:'left'">id</th>
							<th data-options="field:'TRANS_DATE',width:120,sortable:'true',align:'left'">trans_date</th>
							<th data-options="field:'TRANS_AMT',width:120,sortable:'true',align:'left'">trans_amt</th>
							<th data-options="field:'ORDER_ID',width:120,sortable:'true',align:'left'">order_id</th>
							<th data-options="field:'CARD_ID',width:120,sortable:'true',align:'left'">card_id</th>
							<th data-options="field:'SUB_MER_ID',width:120,sortable:'true',align:'left'">sub_mer_id</th>
							<th data-options="field:'MER_SYS_ID',width:120,sortable:'true',align:'left'">mer_sys_id</th>
							<th data-options="field:'MER_ORD_ID',width:120,sortable:'true',align:'left'">mer_ord_id</th>
							<th data-options="field:'TRANS_MER_ID',width:120,sortable:'true',align:'left'">trans_mer_id</th>
							<th data-options="field:'DATE',width:120,sortable:'true',align:'left'">date</th>
							<th data-options="field:'SYS_REF_NUM',width:120,sortable:'true',align:'left'">sys_ref_num</th>
							<th data-options="field:'SYS_TRA_NUM',width:120,sortable:'true',align:'left'">sys_tra_num</th>
							<th data-options="field:'RETURN_CODE',width:120,sortable:'true',align:'left'">return_code</th>
							<th data-options="field:'TRANS_TYPE',width:120,sortable:'true',align:'left'">trans_type</th>
							<th data-options="field:'RESERVED1',width:120,sortable:'true',align:'left'">reserved1</th>
							<th data-options="field:'RESERVED2',width:120,sortable:'true',align:'left'">reserved2</th>
							<th data-options="field:'RESERVED3',width:120,sortable:'true',align:'left'">reserved3</th>
							<th data-options="field:'RESERVED4',width:120,sortable:'true',align:'left'">reserved4</th>
							<th data-options="field:'RESERVED5',width:120,sortable:'true',align:'left'">reserved5</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var unilateralOrderInfo_list ={};
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
	unilateralOrderInfo_list.buildQueryParams=function(){
	    $('#dg_unilateralOrderInfo').datagrid({
			queryParams: {
						 'search_id':$("input[name='search_id']").val(),
						 'search_trans_date':$("input[name='search_trans_date']").val(),
						 'search_trans_amt':$("input[name='search_trans_amt']").val(),
						 'search_order_id':$("input[name='search_order_id']").val(),
						 'search_card_id':$("input[name='search_card_id']").val(),
						 'search_sub_mer_id':$("input[name='search_sub_mer_id']").val(),
						 'search_mer_sys_id':$("input[name='search_mer_sys_id']").val(),
						 'search_mer_ord_id':$("input[name='search_mer_ord_id']").val(),
						 'search_trans_mer_id':$("input[name='search_trans_mer_id']").val(),
						 'search_date':$("input[name='search_date']").val(),
						 'search_sys_ref_num':$("input[name='search_sys_ref_num']").val(),
						 'search_sys_tra_num':$("input[name='search_sys_tra_num']").val(),
						 'search_return_code':$("input[name='search_return_code']").val(),
						 'search_trans_type':$("input[name='search_trans_type']").val(),
						 'search_reserved1':$("input[name='search_reserved1']").val(),
						 'search_reserved2':$("input[name='search_reserved2']").val(),
						 'search_reserved3':$("input[name='search_reserved3']").val(),
						 'search_reserved4':$("input[name='search_reserved4']").val(),
						 'search_reserved5':$("input[name='search_reserved5']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		unilateralOrderInfo_list.buildQueryParams();
		$('#dg_unilateralOrderInfo').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_id']").val("");
			$("input[name='search_trans_date']").val("");
			$("input[name='search_trans_amt']").val("");
			$("input[name='search_order_id']").val("");
			$("input[name='search_card_id']").val("");
			$("input[name='search_sub_mer_id']").val("");
			$("input[name='search_mer_sys_id']").val("");
			$("input[name='search_mer_ord_id']").val("");
			$("input[name='search_trans_mer_id']").val("");
			$("input[name='search_date']").val("");
			$("input[name='search_sys_ref_num']").val("");
			$("input[name='search_sys_tra_num']").val("");
			$("input[name='search_return_code']").val("");
			$("input[name='search_trans_type']").val("");
			$("input[name='search_reserved1']").val("");
			$("input[name='search_reserved2']").val("");
			$("input[name='search_reserved3']").val("");
			$("input[name='search_reserved4']").val("");
			$("input[name='search_reserved5']").val("");
		unilateralOrderInfo_list.buildQueryParams();
		$('#dg_unilateralOrderInfo').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addUnilateralOrderInfoFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'UNILATERAL_ORDER_INFO',
		    width: 800,
		    height: 500,
		    href: 'addUnilateralOrderInfoPage.action',
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
		    		$('#addUnilateralOrderInfoFrom').form({   
						 url:'addUnilateralOrderInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									unilateralOrderInfo_list.buildQueryParams();
									$('#dg_unilateralOrderInfo').datagrid('load');
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
	unilateralOrderInfo_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editUnilateralOrderInfoFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'UnilateralOrderInfo',
		    width: 800,
		    height: 500,
		    href: 'editUnilateralOrderInfoPage.action',
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
		   				$('#editUnilateralOrderInfoFrom').form({   
						 url:'editUnilateralOrderInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									unilateralOrderInfo_list.buildQueryParams();
									$('#dg_unilateralOrderInfo').datagrid('load');
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
		     			$('#delUnilateralOrderInfoFrom').form({   
						 url:'delUnilateralOrderInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									unilateralOrderInfo_list.buildQueryParams();
									$('#dg_unilateralOrderInfo').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delUnilateralOrderInfoFrom').submit();
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
	unilateralOrderInfo_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细UnilateralOrderInfo',
		    width: 800,
		    height: 500,
		    href: 'detailUnilateralOrderInfoPage.action',
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