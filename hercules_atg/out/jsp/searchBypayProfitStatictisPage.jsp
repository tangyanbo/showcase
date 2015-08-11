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
								<td>settle_date</td>
								<td>
									<input type="text" id="search_settle_date" name="search_settle_date" class="easyui-textbox" value="${search_settle_date}"/>
								</td>
								<td>sum_amt</td>
								<td>
									<input type="text" id="search_sum_amt" name="search_sum_amt" class="easyui-textbox" value="${search_sum_amt}"/>
								</td>
								<td>sum_fee_amt</td>
								<td>
									<input type="text" id="search_sum_fee_amt" name="search_sum_fee_amt" class="easyui-textbox" value="${search_sum_fee_amt}"/>
								</td>
								<td>sum_count</td>
								<td>
									<input type="text" id="search_sum_count" name="search_sum_count" class="easyui-textbox" value="${search_sum_count}"/>
								</td>
								<td>sum_camt</td>
								<td>
									<input type="text" id="search_sum_camt" name="search_sum_camt" class="easyui-textbox" value="${search_sum_camt}"/>
								</td>
								<td>sum_fee_camt</td>
								<td>
									<input type="text" id="search_sum_fee_camt" name="search_sum_fee_camt" class="easyui-textbox" value="${search_sum_fee_camt}"/>
								</td>
								<td>sum_ccount</td>
								<td>
									<input type="text" id="search_sum_ccount" name="search_sum_ccount" class="easyui-textbox" value="${search_sum_ccount}"/>
								</td>
								<td>sum_ramt</td>
								<td>
									<input type="text" id="search_sum_ramt" name="search_sum_ramt" class="easyui-textbox" value="${search_sum_ramt}"/>
								</td>
								<td>sum_fee_ramt</td>
								<td>
									<input type="text" id="search_sum_fee_ramt" name="search_sum_fee_ramt" class="easyui-textbox" value="${search_sum_fee_ramt}"/>
								</td>
								<td>sum_rcount</td>
								<td>
									<input type="text" id="search_sum_rcount" name="search_sum_rcount" class="easyui-textbox" value="${search_sum_rcount}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>sum_tract_fee</td>
								<td>
									<input type="text" id="search_sum_tract_fee" name="search_sum_tract_fee" class="easyui-textbox" value="${search_sum_tract_fee}"/>
								</td>
								<td>tract_bypay_profit</td>
								<td>
									<input type="text" id="search_tract_bypay_profit" name="search_tract_bypay_profit" class="easyui-textbox" value="${search_tract_bypay_profit}"/>
								</td>
								<td>bypay_profit</td>
								<td>
									<input type="text" id="search_bypay_profit" name="search_bypay_profit" class="easyui-textbox" value="${search_bypay_profit}"/>
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
				<table  id="dg_bypayProfitStatictis" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'ID',width:120,sortable:'true',align:'left'">id</th>
							<th data-options="field:'SETTLE_DATE',width:120,sortable:'true',align:'left'">settle_date</th>
							<th data-options="field:'SUM_AMT',width:120,sortable:'true',align:'left'">sum_amt</th>
							<th data-options="field:'SUM_FEE_AMT',width:120,sortable:'true',align:'left'">sum_fee_amt</th>
							<th data-options="field:'SUM_COUNT',width:120,sortable:'true',align:'left'">sum_count</th>
							<th data-options="field:'SUM_CAMT',width:120,sortable:'true',align:'left'">sum_camt</th>
							<th data-options="field:'SUM_FEE_CAMT',width:120,sortable:'true',align:'left'">sum_fee_camt</th>
							<th data-options="field:'SUM_CCOUNT',width:120,sortable:'true',align:'left'">sum_ccount</th>
							<th data-options="field:'SUM_RAMT',width:120,sortable:'true',align:'left'">sum_ramt</th>
							<th data-options="field:'SUM_FEE_RAMT',width:120,sortable:'true',align:'left'">sum_fee_ramt</th>
							<th data-options="field:'SUM_RCOUNT',width:120,sortable:'true',align:'left'">sum_rcount</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'SUM_TRACT_FEE',width:120,sortable:'true',align:'left'">sum_tract_fee</th>
							<th data-options="field:'TRACT_BYPAY_PROFIT',width:120,sortable:'true',align:'left'">tract_bypay_profit</th>
							<th data-options="field:'BYPAY_PROFIT',width:120,sortable:'true',align:'left'">bypay_profit</th>
							<th data-options="field:'RESERVED1',width:120,sortable:'true',align:'left'">reserved1</th>
							<th data-options="field:'RESERVED2',width:120,sortable:'true',align:'left'">reserved2</th>
							<th data-options="field:'RESERVED3',width:120,sortable:'true',align:'left'">reserved3</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var bypayProfitStatictis_list ={};
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
	bypayProfitStatictis_list.buildQueryParams=function(){
	    $('#dg_bypayProfitStatictis').datagrid({
			queryParams: {
						 'search_id':$("input[name='search_id']").val(),
						 'search_settle_date':$("input[name='search_settle_date']").val(),
						 'search_sum_amt':$("input[name='search_sum_amt']").val(),
						 'search_sum_fee_amt':$("input[name='search_sum_fee_amt']").val(),
						 'search_sum_count':$("input[name='search_sum_count']").val(),
						 'search_sum_camt':$("input[name='search_sum_camt']").val(),
						 'search_sum_fee_camt':$("input[name='search_sum_fee_camt']").val(),
						 'search_sum_ccount':$("input[name='search_sum_ccount']").val(),
						 'search_sum_ramt':$("input[name='search_sum_ramt']").val(),
						 'search_sum_fee_ramt':$("input[name='search_sum_fee_ramt']").val(),
						 'search_sum_rcount':$("input[name='search_sum_rcount']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_sum_tract_fee':$("input[name='search_sum_tract_fee']").val(),
						 'search_tract_bypay_profit':$("input[name='search_tract_bypay_profit']").val(),
						 'search_bypay_profit':$("input[name='search_bypay_profit']").val(),
						 'search_reserved1':$("input[name='search_reserved1']").val(),
						 'search_reserved2':$("input[name='search_reserved2']").val(),
						 'search_reserved3':$("input[name='search_reserved3']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		bypayProfitStatictis_list.buildQueryParams();
		$('#dg_bypayProfitStatictis').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_id']").val("");
			$("input[name='search_settle_date']").val("");
			$("input[name='search_sum_amt']").val("");
			$("input[name='search_sum_fee_amt']").val("");
			$("input[name='search_sum_count']").val("");
			$("input[name='search_sum_camt']").val("");
			$("input[name='search_sum_fee_camt']").val("");
			$("input[name='search_sum_ccount']").val("");
			$("input[name='search_sum_ramt']").val("");
			$("input[name='search_sum_fee_ramt']").val("");
			$("input[name='search_sum_rcount']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_sum_tract_fee']").val("");
			$("input[name='search_tract_bypay_profit']").val("");
			$("input[name='search_bypay_profit']").val("");
			$("input[name='search_reserved1']").val("");
			$("input[name='search_reserved2']").val("");
			$("input[name='search_reserved3']").val("");
		bypayProfitStatictis_list.buildQueryParams();
		$('#dg_bypayProfitStatictis').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addBypayProfitStatictisFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'BYPAY_PROFIT_STATICTIS',
		    width: 800,
		    height: 500,
		    href: 'addBypayProfitStatictisPage.action',
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
		    		$('#addBypayProfitStatictisFrom').form({   
						 url:'addBypayProfitStatictisAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									bypayProfitStatictis_list.buildQueryParams();
									$('#dg_bypayProfitStatictis').datagrid('load');
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
	bypayProfitStatictis_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editBypayProfitStatictisFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'BypayProfitStatictis',
		    width: 800,
		    height: 500,
		    href: 'editBypayProfitStatictisPage.action',
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
		   				$('#editBypayProfitStatictisFrom').form({   
						 url:'editBypayProfitStatictisAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									bypayProfitStatictis_list.buildQueryParams();
									$('#dg_bypayProfitStatictis').datagrid('load');
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
		     			$('#delBypayProfitStatictisFrom').form({   
						 url:'delBypayProfitStatictisAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									bypayProfitStatictis_list.buildQueryParams();
									$('#dg_bypayProfitStatictis').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delBypayProfitStatictisFrom').submit();
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
	bypayProfitStatictis_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细BypayProfitStatictis',
		    width: 800,
		    height: 500,
		    href: 'detailBypayProfitStatictisPage.action',
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