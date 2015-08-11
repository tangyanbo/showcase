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
														<td>tract_id</td>
								<td>
									<input type="text" id="search_tract_id" name="search_tract_id" class="easyui-textbox" value="${search_tract_id}"/>
								</td>
								<td>tract_name</td>
								<td>
									<input type="text" id="search_tract_name" name="search_tract_name" class="easyui-textbox" value="${search_tract_name}"/>
								</td>
								<td>trans_mer_id</td>
								<td>
									<input type="text" id="search_trans_mer_id" name="search_trans_mer_id" class="easyui-textbox" value="${search_trans_mer_id}"/>
								</td>
								<td>tract_agency</td>
								<td>
									<input type="text" id="search_tract_agency" name="search_tract_agency" class="easyui-textbox" value="${search_tract_agency}"/>
								</td>
								<td>rates_type</td>
								<td>
									<input type="text" id="search_rates_type" name="search_rates_type" class="easyui-textbox" value="${search_rates_type}"/>
								</td>
								<td>acq_agency_id</td>
								<td>
									<input type="text" id="search_acq_agency_id" name="search_acq_agency_id" class="easyui-textbox" value="${search_acq_agency_id}"/>
								</td>
								<td>acq_agency_name</td>
								<td>
									<input type="text" id="search_acq_agency_name" name="search_acq_agency_name" class="easyui-textbox" value="${search_acq_agency_name}"/>
								</td>
								<td>pay_tract</td>
								<td>
									<input type="text" id="search_pay_tract" name="search_pay_tract" class="easyui-textbox" value="${search_pay_tract}"/>
								</td>
								<td>tract_rate</td>
								<td>
									<input type="text" id="search_tract_rate" name="search_tract_rate" class="easyui-textbox" value="${search_tract_rate}"/>
								</td>
								<td>tract_highest_fee</td>
								<td>
									<input type="text" id="search_tract_highest_fee" name="search_tract_highest_fee" class="easyui-textbox" value="${search_tract_highest_fee}"/>
								</td>
								<td>credit_rate_cost</td>
								<td>
									<input type="text" id="search_credit_rate_cost" name="search_credit_rate_cost" class="easyui-textbox" value="${search_credit_rate_cost}"/>
								</td>
								<td>debit_rate_cost</td>
								<td>
									<input type="text" id="search_debit_rate_cost" name="search_debit_rate_cost" class="easyui-textbox" value="${search_debit_rate_cost}"/>
								</td>
								<td>credit_highest_cost</td>
								<td>
									<input type="text" id="search_credit_highest_cost" name="search_credit_highest_cost" class="easyui-textbox" value="${search_credit_highest_cost}"/>
								</td>
								<td>debit_highest_cost</td>
								<td>
									<input type="text" id="search_debit_highest_cost" name="search_debit_highest_cost" class="easyui-textbox" value="${search_debit_highest_cost}"/>
								</td>
								<td>lowest_cost</td>
								<td>
									<input type="text" id="search_lowest_cost" name="search_lowest_cost" class="easyui-textbox" value="${search_lowest_cost}"/>
								</td>
								<td>bypay_profit</td>
								<td>
									<input type="text" id="search_bypay_profit" name="search_bypay_profit" class="easyui-textbox" value="${search_bypay_profit}"/>
								</td>
								<td>status</td>
								<td>
									<input type="text" id="search_status" name="search_status" class="easyui-textbox" value="${search_status}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>per_card_quota</td>
								<td>
									<input type="text" id="search_per_card_quota" name="search_per_card_quota" class="easyui-textbox" value="${search_per_card_quota}"/>
								</td>
								<td>card_quota</td>
								<td>
									<input type="text" id="search_card_quota" name="search_card_quota" class="easyui-textbox" value="${search_card_quota}"/>
								</td>
								<td>card_count</td>
								<td>
									<input type="text" id="search_card_count" name="search_card_count" class="easyui-textbox" value="${search_card_count}"/>
								</td>
								<td>remark</td>
								<td>
									<input type="text" id="search_remark" name="search_remark" class="easyui-textbox" value="${search_remark}"/>
								</td>
								<td>reserved</td>
								<td>
									<input type="text" id="search_reserved" name="search_reserved" class="easyui-textbox" value="${search_reserved}"/>
								</td>
								<td>trans_time_begin</td>
								<td>
									<input type="text" id="search_trans_time_begin" name="search_trans_time_begin" class="easyui-textbox" value="${search_trans_time_begin}"/>
								</td>
								<td>trans_time_end</td>
								<td>
									<input type="text" id="search_trans_time_end" name="search_trans_time_end" class="easyui-textbox" value="${search_trans_time_end}"/>
								</td>
								<td>mcc</td>
								<td>
									<input type="text" id="search_mcc" name="search_mcc" class="easyui-textbox" value="${search_mcc}"/>
								</td>
								<td>night_flag</td>
								<td>
									<input type="text" id="search_night_flag" name="search_night_flag" class="easyui-textbox" value="${search_night_flag}"/>
								</td>
								<td>integral</td>
								<td>
									<input type="text" id="search_integral" name="search_integral" class="easyui-textbox" value="${search_integral}"/>
								</td>
								<td>tract_quota</td>
								<td>
									<input type="text" id="search_tract_quota" name="search_tract_quota" class="easyui-textbox" value="${search_tract_quota}"/>
								</td>
								<td>tract_flag</td>
								<td>
									<input type="text" id="search_tract_flag" name="search_tract_flag" class="easyui-textbox" value="${search_tract_flag}"/>
								</td>
								<td>terminal_id</td>
								<td>
									<input type="text" id="search_terminal_id" name="search_terminal_id" class="easyui-textbox" value="${search_terminal_id}"/>
								</td>
								<td>spid</td>
								<td>
									<input type="text" id="search_spid" name="search_spid" class="easyui-textbox" value="${search_spid}"/>
								</td>
								<td>card_flag</td>
								<td>
									<input type="text" id="search_card_flag" name="search_card_flag" class="easyui-textbox" value="${search_card_flag}"/>
								</td>
								<td>tract_num</td>
								<td>
									<input type="text" id="search_tract_num" name="search_tract_num" class="easyui-textbox" value="${search_tract_num}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_tractInfo" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'TRACT_ID',width:120,sortable:'true',align:'left'">tract_id</th>
							<th data-options="field:'TRACT_NAME',width:120,sortable:'true',align:'left'">tract_name</th>
							<th data-options="field:'TRANS_MER_ID',width:120,sortable:'true',align:'left'">trans_mer_id</th>
							<th data-options="field:'TRACT_AGENCY',width:120,sortable:'true',align:'left'">tract_agency</th>
							<th data-options="field:'RATES_TYPE',width:120,sortable:'true',align:'left'">rates_type</th>
							<th data-options="field:'ACQ_AGENCY_ID',width:120,sortable:'true',align:'left'">acq_agency_id</th>
							<th data-options="field:'ACQ_AGENCY_NAME',width:120,sortable:'true',align:'left'">acq_agency_name</th>
							<th data-options="field:'PAY_TRACT',width:120,sortable:'true',align:'left'">pay_tract</th>
							<th data-options="field:'TRACT_RATE',width:120,sortable:'true',align:'left'">tract_rate</th>
							<th data-options="field:'TRACT_HIGHEST_FEE',width:120,sortable:'true',align:'left'">tract_highest_fee</th>
							<th data-options="field:'CREDIT_RATE_COST',width:120,sortable:'true',align:'left'">credit_rate_cost</th>
							<th data-options="field:'DEBIT_RATE_COST',width:120,sortable:'true',align:'left'">debit_rate_cost</th>
							<th data-options="field:'CREDIT_HIGHEST_COST',width:120,sortable:'true',align:'left'">credit_highest_cost</th>
							<th data-options="field:'DEBIT_HIGHEST_COST',width:120,sortable:'true',align:'left'">debit_highest_cost</th>
							<th data-options="field:'LOWEST_COST',width:120,sortable:'true',align:'left'">lowest_cost</th>
							<th data-options="field:'BYPAY_PROFIT',width:120,sortable:'true',align:'left'">bypay_profit</th>
							<th data-options="field:'STATUS',width:120,sortable:'true',align:'left'">status</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'PER_CARD_QUOTA',width:120,sortable:'true',align:'left'">per_card_quota</th>
							<th data-options="field:'CARD_QUOTA',width:120,sortable:'true',align:'left'">card_quota</th>
							<th data-options="field:'CARD_COUNT',width:120,sortable:'true',align:'left'">card_count</th>
							<th data-options="field:'REMARK',width:120,sortable:'true',align:'left'">remark</th>
							<th data-options="field:'RESERVED',width:120,sortable:'true',align:'left'">reserved</th>
							<th data-options="field:'TRANS_TIME_BEGIN',width:120,sortable:'true',align:'left'">trans_time_begin</th>
							<th data-options="field:'TRANS_TIME_END',width:120,sortable:'true',align:'left'">trans_time_end</th>
							<th data-options="field:'MCC',width:120,sortable:'true',align:'left'">mcc</th>
							<th data-options="field:'NIGHT_FLAG',width:120,sortable:'true',align:'left'">night_flag</th>
							<th data-options="field:'INTEGRAL',width:120,sortable:'true',align:'left'">integral</th>
							<th data-options="field:'TRACT_QUOTA',width:120,sortable:'true',align:'left'">tract_quota</th>
							<th data-options="field:'TRACT_FLAG',width:120,sortable:'true',align:'left'">tract_flag</th>
							<th data-options="field:'TERMINAL_ID',width:120,sortable:'true',align:'left'">terminal_id</th>
							<th data-options="field:'SPID',width:120,sortable:'true',align:'left'">spid</th>
							<th data-options="field:'CARD_FLAG',width:120,sortable:'true',align:'left'">card_flag</th>
							<th data-options="field:'TRACT_NUM',width:120,sortable:'true',align:'left'">tract_num</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var tractInfo_list ={};
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
	tractInfo_list.buildQueryParams=function(){
	    $('#dg_tractInfo').datagrid({
			queryParams: {
						 'search_tract_id':$("input[name='search_tract_id']").val(),
						 'search_tract_name':$("input[name='search_tract_name']").val(),
						 'search_trans_mer_id':$("input[name='search_trans_mer_id']").val(),
						 'search_tract_agency':$("input[name='search_tract_agency']").val(),
						 'search_rates_type':$("input[name='search_rates_type']").val(),
						 'search_acq_agency_id':$("input[name='search_acq_agency_id']").val(),
						 'search_acq_agency_name':$("input[name='search_acq_agency_name']").val(),
						 'search_pay_tract':$("input[name='search_pay_tract']").val(),
						 'search_tract_rate':$("input[name='search_tract_rate']").val(),
						 'search_tract_highest_fee':$("input[name='search_tract_highest_fee']").val(),
						 'search_credit_rate_cost':$("input[name='search_credit_rate_cost']").val(),
						 'search_debit_rate_cost':$("input[name='search_debit_rate_cost']").val(),
						 'search_credit_highest_cost':$("input[name='search_credit_highest_cost']").val(),
						 'search_debit_highest_cost':$("input[name='search_debit_highest_cost']").val(),
						 'search_lowest_cost':$("input[name='search_lowest_cost']").val(),
						 'search_bypay_profit':$("input[name='search_bypay_profit']").val(),
						 'search_status':$("input[name='search_status']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_per_card_quota':$("input[name='search_per_card_quota']").val(),
						 'search_card_quota':$("input[name='search_card_quota']").val(),
						 'search_card_count':$("input[name='search_card_count']").val(),
						 'search_remark':$("input[name='search_remark']").val(),
						 'search_reserved':$("input[name='search_reserved']").val(),
						 'search_trans_time_begin':$("input[name='search_trans_time_begin']").val(),
						 'search_trans_time_end':$("input[name='search_trans_time_end']").val(),
						 'search_mcc':$("input[name='search_mcc']").val(),
						 'search_night_flag':$("input[name='search_night_flag']").val(),
						 'search_integral':$("input[name='search_integral']").val(),
						 'search_tract_quota':$("input[name='search_tract_quota']").val(),
						 'search_tract_flag':$("input[name='search_tract_flag']").val(),
						 'search_terminal_id':$("input[name='search_terminal_id']").val(),
						 'search_spid':$("input[name='search_spid']").val(),
						 'search_card_flag':$("input[name='search_card_flag']").val(),
						 'search_tract_num':$("input[name='search_tract_num']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		tractInfo_list.buildQueryParams();
		$('#dg_tractInfo').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_tract_id']").val("");
			$("input[name='search_tract_name']").val("");
			$("input[name='search_trans_mer_id']").val("");
			$("input[name='search_tract_agency']").val("");
			$("input[name='search_rates_type']").val("");
			$("input[name='search_acq_agency_id']").val("");
			$("input[name='search_acq_agency_name']").val("");
			$("input[name='search_pay_tract']").val("");
			$("input[name='search_tract_rate']").val("");
			$("input[name='search_tract_highest_fee']").val("");
			$("input[name='search_credit_rate_cost']").val("");
			$("input[name='search_debit_rate_cost']").val("");
			$("input[name='search_credit_highest_cost']").val("");
			$("input[name='search_debit_highest_cost']").val("");
			$("input[name='search_lowest_cost']").val("");
			$("input[name='search_bypay_profit']").val("");
			$("input[name='search_status']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_per_card_quota']").val("");
			$("input[name='search_card_quota']").val("");
			$("input[name='search_card_count']").val("");
			$("input[name='search_remark']").val("");
			$("input[name='search_reserved']").val("");
			$("input[name='search_trans_time_begin']").val("");
			$("input[name='search_trans_time_end']").val("");
			$("input[name='search_mcc']").val("");
			$("input[name='search_night_flag']").val("");
			$("input[name='search_integral']").val("");
			$("input[name='search_tract_quota']").val("");
			$("input[name='search_tract_flag']").val("");
			$("input[name='search_terminal_id']").val("");
			$("input[name='search_spid']").val("");
			$("input[name='search_card_flag']").val("");
			$("input[name='search_tract_num']").val("");
		tractInfo_list.buildQueryParams();
		$('#dg_tractInfo').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addTractInfoFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'TRACT_INFO',
		    width: 800,
		    height: 500,
		    href: 'addTractInfoPage.action',
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
		    		$('#addTractInfoFrom').form({   
						 url:'addTractInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									tractInfo_list.buildQueryParams();
									$('#dg_tractInfo').datagrid('load');
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
	tractInfo_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editTractInfoFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'TractInfo',
		    width: 800,
		    height: 500,
		    href: 'editTractInfoPage.action',
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
		   				$('#editTractInfoFrom').form({   
						 url:'editTractInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									tractInfo_list.buildQueryParams();
									$('#dg_tractInfo').datagrid('load');
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
		     			$('#delTractInfoFrom').form({   
						 url:'delTractInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									tractInfo_list.buildQueryParams();
									$('#dg_tractInfo').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delTractInfoFrom').submit();
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
	tractInfo_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细TractInfo',
		    width: 800,
		    height: 500,
		    href: 'detailTractInfoPage.action',
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