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
								<td>batch_id</td>
								<td>
									<input type="text" id="search_batch_id" name="search_batch_id" class="easyui-textbox" value="${search_batch_id}"/>
								</td>
								<td>bus_mer_id</td>
								<td>
									<input type="text" id="search_bus_mer_id" name="search_bus_mer_id" class="easyui-textbox" value="${search_bus_mer_id}"/>
								</td>
								<td>mer_type</td>
								<td>
									<input type="text" id="search_mer_type" name="search_mer_type" class="easyui-textbox" value="${search_mer_type}"/>
								</td>
								<td>trans_mer_id</td>
								<td>
									<input type="text" id="search_trans_mer_id" name="search_trans_mer_id" class="easyui-textbox" value="${search_trans_mer_id}"/>
								</td>
								<td>gw_type</td>
								<td>
									<input type="text" id="search_gw_type" name="search_gw_type" class="easyui-textbox" value="${search_gw_type}"/>
								</td>
								<td>bus_type</td>
								<td>
									<input type="text" id="search_bus_type" name="search_bus_type" class="easyui-textbox" value="${search_bus_type}"/>
								</td>
								<td>trans_type</td>
								<td>
									<input type="text" id="search_trans_type" name="search_trans_type" class="easyui-textbox" value="${search_trans_type}"/>
								</td>
								<td>mer_order_id</td>
								<td>
									<input type="text" id="search_mer_order_id" name="search_mer_order_id" class="easyui-textbox" value="${search_mer_order_id}"/>
								</td>
								<td>mer_order_time</td>
								<td>
									<input type="text" id="search_mer_order_time" name="search_mer_order_time" class="easyui-textbox" value="${search_mer_order_time}"/>
								</td>
								<td>mer_amt</td>
								<td>
									<input type="text" id="search_mer_amt" name="search_mer_amt" class="easyui-textbox" value="${search_mer_amt}"/>
								</td>
								<td>cur</td>
								<td>
									<input type="text" id="search_cur" name="search_cur" class="easyui-textbox" value="${search_cur}"/>
								</td>
								<td>order_desc</td>
								<td>
									<input type="text" id="search_order_desc" name="search_order_desc" class="easyui-textbox" value="${search_order_desc}"/>
								</td>
								<td>order_over_time</td>
								<td>
									<input type="text" id="search_order_over_time" name="search_order_over_time" class="easyui-textbox" value="${search_order_over_time}"/>
								</td>
								<td>order_status</td>
								<td>
									<input type="text" id="search_order_status" name="search_order_status" class="easyui-textbox" value="${search_order_status}"/>
								</td>
								<td>card_no</td>
								<td>
									<input type="text" id="search_card_no" name="search_card_no" class="easyui-textbox" value="${search_card_no}"/>
								</td>
								<td>issbank_id</td>
								<td>
									<input type="text" id="search_issbank_id" name="search_issbank_id" class="easyui-textbox" value="${search_issbank_id}"/>
								</td>
								<td>issbank_name</td>
								<td>
									<input type="text" id="search_issbank_name" name="search_issbank_name" class="easyui-textbox" value="${search_issbank_name}"/>
								</td>
								<td>card_type</td>
								<td>
									<input type="text" id="search_card_type" name="search_card_type" class="easyui-textbox" value="${search_card_type}"/>
								</td>
								<td>org_order_id</td>
								<td>
									<input type="text" id="search_org_order_id" name="search_org_order_id" class="easyui-textbox" value="${search_org_order_id}"/>
								</td>
								<td>refund_status</td>
								<td>
									<input type="text" id="search_refund_status" name="search_refund_status" class="easyui-textbox" value="${search_refund_status}"/>
								</td>
								<td>refund_amt</td>
								<td>
									<input type="text" id="search_refund_amt" name="search_refund_amt" class="easyui-textbox" value="${search_refund_amt}"/>
								</td>
								<td>front_url</td>
								<td>
									<input type="text" id="search_front_url" name="search_front_url" class="easyui-textbox" value="${search_front_url}"/>
								</td>
								<td>back_url</td>
								<td>
									<input type="text" id="search_back_url" name="search_back_url" class="easyui-textbox" value="${search_back_url}"/>
								</td>
								<td>trans_time</td>
								<td>
									<input type="text" id="search_trans_time" name="search_trans_time" class="easyui-textbox" value="${search_trans_time}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>finish_time</td>
								<td>
									<input type="text" id="search_finish_time" name="search_finish_time" class="easyui-textbox" value="${search_finish_time}"/>
								</td>
								<td>user_id</td>
								<td>
									<input type="text" id="search_user_id" name="search_user_id" class="easyui-textbox" value="${search_user_id}"/>
								</td>
								<td>user_name</td>
								<td>
									<input type="text" id="search_user_name" name="search_user_name" class="easyui-textbox" value="${search_user_name}"/>
								</td>
								<td>id_type</td>
								<td>
									<input type="text" id="search_id_type" name="search_id_type" class="easyui-textbox" value="${search_id_type}"/>
								</td>
								<td>id_no</td>
								<td>
									<input type="text" id="search_id_no" name="search_id_no" class="easyui-textbox" value="${search_id_no}"/>
								</td>
								<td>user_mobile</td>
								<td>
									<input type="text" id="search_user_mobile" name="search_user_mobile" class="easyui-textbox" value="${search_user_mobile}"/>
								</td>
								<td>user_ip</td>
								<td>
									<input type="text" id="search_user_ip" name="search_user_ip" class="easyui-textbox" value="${search_user_ip}"/>
								</td>
								<td>gw_invoke_cmd</td>
								<td>
									<input type="text" id="search_gw_invoke_cmd" name="search_gw_invoke_cmd" class="easyui-textbox" value="${search_gw_invoke_cmd}"/>
								</td>
								<td>account1</td>
								<td>
									<input type="text" id="search_account1" name="search_account1" class="easyui-textbox" value="${search_account1}"/>
								</td>
								<td>account2</td>
								<td>
									<input type="text" id="search_account2" name="search_account2" class="easyui-textbox" value="${search_account2}"/>
								</td>
								<td>settle_date</td>
								<td>
									<input type="text" id="search_settle_date" name="search_settle_date" class="easyui-textbox" value="${search_settle_date}"/>
								</td>
								<td>settle_amt</td>
								<td>
									<input type="text" id="search_settle_amt" name="search_settle_amt" class="easyui-textbox" value="${search_settle_amt}"/>
								</td>
								<td>settle_cur</td>
								<td>
									<input type="text" id="search_settle_cur" name="search_settle_cur" class="easyui-textbox" value="${search_settle_cur}"/>
								</td>
								<td>settle_conver_rate</td>
								<td>
									<input type="text" id="search_settle_conver_rate" name="search_settle_conver_rate" class="easyui-textbox" value="${search_settle_conver_rate}"/>
								</td>
								<td>trans_fee</td>
								<td>
									<input type="text" id="search_trans_fee" name="search_trans_fee" class="easyui-textbox" value="${search_trans_fee}"/>
								</td>
								<td>tract_cost</td>
								<td>
									<input type="text" id="search_tract_cost" name="search_tract_cost" class="easyui-textbox" value="${search_tract_cost}"/>
								</td>
								<td>acqbank_profit</td>
								<td>
									<input type="text" id="search_acqbank_profit" name="search_acqbank_profit" class="easyui-textbox" value="${search_acqbank_profit}"/>
								</td>
								<td>agent_profit</td>
								<td>
									<input type="text" id="search_agent_profit" name="search_agent_profit" class="easyui-textbox" value="${search_agent_profit}"/>
								</td>
								<td>bypay_profit</td>
								<td>
									<input type="text" id="search_bypay_profit" name="search_bypay_profit" class="easyui-textbox" value="${search_bypay_profit}"/>
								</td>
								<td>error_code</td>
								<td>
									<input type="text" id="search_error_code" name="search_error_code" class="easyui-textbox" value="${search_error_code}"/>
								</td>
								<td>reserved</td>
								<td>
									<input type="text" id="search_reserved" name="search_reserved" class="easyui-textbox" value="${search_reserved}"/>
								</td>
								<td>ext</td>
								<td>
									<input type="text" id="search_ext" name="search_ext" class="easyui-textbox" value="${search_ext}"/>
								</td>
								<td>tract_fee</td>
								<td>
									<input type="text" id="search_tract_fee" name="search_tract_fee" class="easyui-textbox" value="${search_tract_fee}"/>
								</td>
								<td>gross_profit</td>
								<td>
									<input type="text" id="search_gross_profit" name="search_gross_profit" class="easyui-textbox" value="${search_gross_profit}"/>
								</td>
								<td>mer_settle_amt</td>
								<td>
									<input type="text" id="search_mer_settle_amt" name="search_mer_settle_amt" class="easyui-textbox" value="${search_mer_settle_amt}"/>
								</td>
								<td>trans_cost</td>
								<td>
									<input type="text" id="search_trans_cost" name="search_trans_cost" class="easyui-textbox" value="${search_trans_cost}"/>
								</td>
								<td>proxy_id</td>
								<td>
									<input type="text" id="search_proxy_id" name="search_proxy_id" class="easyui-textbox" value="${search_proxy_id}"/>
								</td>
								<td>pay_tract</td>
								<td>
									<input type="text" id="search_pay_tract" name="search_pay_tract" class="easyui-textbox" value="${search_pay_tract}"/>
								</td>
								<td>mer_short_name</td>
								<td>
									<input type="text" id="search_mer_short_name" name="search_mer_short_name" class="easyui-textbox" value="${search_mer_short_name}"/>
								</td>
								<td>bypay_fee</td>
								<td>
									<input type="text" id="search_bypay_fee" name="search_bypay_fee" class="easyui-textbox" value="${search_bypay_fee}"/>
								</td>
								<td>mer_sys_id</td>
								<td>
									<input type="text" id="search_mer_sys_id" name="search_mer_sys_id" class="easyui-textbox" value="${search_mer_sys_id}"/>
								</td>
								<td>terminal_serial_number</td>
								<td>
									<input type="text" id="search_terminal_serial_number" name="search_terminal_serial_number" class="easyui-textbox" value="${search_terminal_serial_number}"/>
								</td>
								<td>error_desc</td>
								<td>
									<input type="text" id="search_error_desc" name="search_error_desc" class="easyui-textbox" value="${search_error_desc}"/>
								</td>
								<td>sub_mer_id</td>
								<td>
									<input type="text" id="search_sub_mer_id" name="search_sub_mer_id" class="easyui-textbox" value="${search_sub_mer_id}"/>
								</td>
								<td>agent_l2_profit</td>
								<td>
									<input type="text" id="search_agent_l2_profit" name="search_agent_l2_profit" class="easyui-textbox" value="${search_agent_l2_profit}"/>
								</td>
								<td>rates_type</td>
								<td>
									<input type="text" id="search_rates_type" name="search_rates_type" class="easyui-textbox" value="${search_rates_type}"/>
								</td>
								<td>sett_status</td>
								<td>
									<input type="text" id="search_sett_status" name="search_sett_status" class="easyui-textbox" value="${search_sett_status}"/>
								</td>
								<td>clear_status</td>
								<td>
									<input type="text" id="search_clear_status" name="search_clear_status" class="easyui-textbox" value="${search_clear_status}"/>
								</td>
								<td>clear_date</td>
								<td>
									<input type="text" id="search_clear_date" name="search_clear_date" class="easyui-textbox" value="${search_clear_date}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_v2OrderInfo" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'ORDER_ID',width:120,sortable:'true',align:'left'">order_id</th>
							<th data-options="field:'BATCH_ID',width:120,sortable:'true',align:'left'">batch_id</th>
							<th data-options="field:'BUS_MER_ID',width:120,sortable:'true',align:'left'">bus_mer_id</th>
							<th data-options="field:'MER_TYPE',width:120,sortable:'true',align:'left'">mer_type</th>
							<th data-options="field:'TRANS_MER_ID',width:120,sortable:'true',align:'left'">trans_mer_id</th>
							<th data-options="field:'GW_TYPE',width:120,sortable:'true',align:'left'">gw_type</th>
							<th data-options="field:'BUS_TYPE',width:120,sortable:'true',align:'left'">bus_type</th>
							<th data-options="field:'TRANS_TYPE',width:120,sortable:'true',align:'left'">trans_type</th>
							<th data-options="field:'MER_ORDER_ID',width:120,sortable:'true',align:'left'">mer_order_id</th>
							<th data-options="field:'MER_ORDER_TIME',width:120,sortable:'true',align:'left'">mer_order_time</th>
							<th data-options="field:'MER_AMT',width:120,sortable:'true',align:'left'">mer_amt</th>
							<th data-options="field:'CUR',width:120,sortable:'true',align:'left'">cur</th>
							<th data-options="field:'ORDER_DESC',width:120,sortable:'true',align:'left'">order_desc</th>
							<th data-options="field:'ORDER_OVER_TIME',width:120,sortable:'true',align:'left'">order_over_time</th>
							<th data-options="field:'ORDER_STATUS',width:120,sortable:'true',align:'left'">order_status</th>
							<th data-options="field:'CARD_NO',width:120,sortable:'true',align:'left'">card_no</th>
							<th data-options="field:'ISSBANK_ID',width:120,sortable:'true',align:'left'">issbank_id</th>
							<th data-options="field:'ISSBANK_NAME',width:120,sortable:'true',align:'left'">issbank_name</th>
							<th data-options="field:'CARD_TYPE',width:120,sortable:'true',align:'left'">card_type</th>
							<th data-options="field:'ORG_ORDER_ID',width:120,sortable:'true',align:'left'">org_order_id</th>
							<th data-options="field:'REFUND_STATUS',width:120,sortable:'true',align:'left'">refund_status</th>
							<th data-options="field:'REFUND_AMT',width:120,sortable:'true',align:'left'">refund_amt</th>
							<th data-options="field:'FRONT_URL',width:120,sortable:'true',align:'left'">front_url</th>
							<th data-options="field:'BACK_URL',width:120,sortable:'true',align:'left'">back_url</th>
							<th data-options="field:'TRANS_TIME',width:120,sortable:'true',align:'left'">trans_time</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'FINISH_TIME',width:120,sortable:'true',align:'left'">finish_time</th>
							<th data-options="field:'USER_ID',width:120,sortable:'true',align:'left'">user_id</th>
							<th data-options="field:'USER_NAME',width:120,sortable:'true',align:'left'">user_name</th>
							<th data-options="field:'ID_TYPE',width:120,sortable:'true',align:'left'">id_type</th>
							<th data-options="field:'ID_NO',width:120,sortable:'true',align:'left'">id_no</th>
							<th data-options="field:'USER_MOBILE',width:120,sortable:'true',align:'left'">user_mobile</th>
							<th data-options="field:'USER_IP',width:120,sortable:'true',align:'left'">user_ip</th>
							<th data-options="field:'GW_INVOKE_CMD',width:120,sortable:'true',align:'left'">gw_invoke_cmd</th>
							<th data-options="field:'ACCOUNT1',width:120,sortable:'true',align:'left'">account1</th>
							<th data-options="field:'ACCOUNT2',width:120,sortable:'true',align:'left'">account2</th>
							<th data-options="field:'SETTLE_DATE',width:120,sortable:'true',align:'left'">settle_date</th>
							<th data-options="field:'SETTLE_AMT',width:120,sortable:'true',align:'left'">settle_amt</th>
							<th data-options="field:'SETTLE_CUR',width:120,sortable:'true',align:'left'">settle_cur</th>
							<th data-options="field:'SETTLE_CONVER_RATE',width:120,sortable:'true',align:'left'">settle_conver_rate</th>
							<th data-options="field:'TRANS_FEE',width:120,sortable:'true',align:'left'">trans_fee</th>
							<th data-options="field:'TRACT_COST',width:120,sortable:'true',align:'left'">tract_cost</th>
							<th data-options="field:'ACQBANK_PROFIT',width:120,sortable:'true',align:'left'">acqbank_profit</th>
							<th data-options="field:'AGENT_PROFIT',width:120,sortable:'true',align:'left'">agent_profit</th>
							<th data-options="field:'BYPAY_PROFIT',width:120,sortable:'true',align:'left'">bypay_profit</th>
							<th data-options="field:'ERROR_CODE',width:120,sortable:'true',align:'left'">error_code</th>
							<th data-options="field:'RESERVED',width:120,sortable:'true',align:'left'">reserved</th>
							<th data-options="field:'EXT',width:120,sortable:'true',align:'left'">ext</th>
							<th data-options="field:'TRACT_FEE',width:120,sortable:'true',align:'left'">tract_fee</th>
							<th data-options="field:'GROSS_PROFIT',width:120,sortable:'true',align:'left'">gross_profit</th>
							<th data-options="field:'MER_SETTLE_AMT',width:120,sortable:'true',align:'left'">mer_settle_amt</th>
							<th data-options="field:'TRANS_COST',width:120,sortable:'true',align:'left'">trans_cost</th>
							<th data-options="field:'PROXY_ID',width:120,sortable:'true',align:'left'">proxy_id</th>
							<th data-options="field:'PAY_TRACT',width:120,sortable:'true',align:'left'">pay_tract</th>
							<th data-options="field:'MER_SHORT_NAME',width:120,sortable:'true',align:'left'">mer_short_name</th>
							<th data-options="field:'BYPAY_FEE',width:120,sortable:'true',align:'left'">bypay_fee</th>
							<th data-options="field:'MER_SYS_ID',width:120,sortable:'true',align:'left'">mer_sys_id</th>
							<th data-options="field:'TERMINAL_SERIAL_NUMBER',width:120,sortable:'true',align:'left'">terminal_serial_number</th>
							<th data-options="field:'ERROR_DESC',width:120,sortable:'true',align:'left'">error_desc</th>
							<th data-options="field:'SUB_MER_ID',width:120,sortable:'true',align:'left'">sub_mer_id</th>
							<th data-options="field:'AGENT_L2_PROFIT',width:120,sortable:'true',align:'left'">agent_l2_profit</th>
							<th data-options="field:'RATES_TYPE',width:120,sortable:'true',align:'left'">rates_type</th>
							<th data-options="field:'SETT_STATUS',width:120,sortable:'true',align:'left'">sett_status</th>
							<th data-options="field:'CLEAR_STATUS',width:120,sortable:'true',align:'left'">clear_status</th>
							<th data-options="field:'CLEAR_DATE',width:120,sortable:'true',align:'left'">clear_date</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var v2OrderInfo_list ={};
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
	v2OrderInfo_list.buildQueryParams=function(){
	    $('#dg_v2OrderInfo').datagrid({
			queryParams: {
						 'search_order_id':$("input[name='search_order_id']").val(),
						 'search_batch_id':$("input[name='search_batch_id']").val(),
						 'search_bus_mer_id':$("input[name='search_bus_mer_id']").val(),
						 'search_mer_type':$("input[name='search_mer_type']").val(),
						 'search_trans_mer_id':$("input[name='search_trans_mer_id']").val(),
						 'search_gw_type':$("input[name='search_gw_type']").val(),
						 'search_bus_type':$("input[name='search_bus_type']").val(),
						 'search_trans_type':$("input[name='search_trans_type']").val(),
						 'search_mer_order_id':$("input[name='search_mer_order_id']").val(),
						 'search_mer_order_time':$("input[name='search_mer_order_time']").val(),
						 'search_mer_amt':$("input[name='search_mer_amt']").val(),
						 'search_cur':$("input[name='search_cur']").val(),
						 'search_order_desc':$("input[name='search_order_desc']").val(),
						 'search_order_over_time':$("input[name='search_order_over_time']").val(),
						 'search_order_status':$("input[name='search_order_status']").val(),
						 'search_card_no':$("input[name='search_card_no']").val(),
						 'search_issbank_id':$("input[name='search_issbank_id']").val(),
						 'search_issbank_name':$("input[name='search_issbank_name']").val(),
						 'search_card_type':$("input[name='search_card_type']").val(),
						 'search_org_order_id':$("input[name='search_org_order_id']").val(),
						 'search_refund_status':$("input[name='search_refund_status']").val(),
						 'search_refund_amt':$("input[name='search_refund_amt']").val(),
						 'search_front_url':$("input[name='search_front_url']").val(),
						 'search_back_url':$("input[name='search_back_url']").val(),
						 'search_trans_time':$("input[name='search_trans_time']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_finish_time':$("input[name='search_finish_time']").val(),
						 'search_user_id':$("input[name='search_user_id']").val(),
						 'search_user_name':$("input[name='search_user_name']").val(),
						 'search_id_type':$("input[name='search_id_type']").val(),
						 'search_id_no':$("input[name='search_id_no']").val(),
						 'search_user_mobile':$("input[name='search_user_mobile']").val(),
						 'search_user_ip':$("input[name='search_user_ip']").val(),
						 'search_gw_invoke_cmd':$("input[name='search_gw_invoke_cmd']").val(),
						 'search_account1':$("input[name='search_account1']").val(),
						 'search_account2':$("input[name='search_account2']").val(),
						 'search_settle_date':$("input[name='search_settle_date']").val(),
						 'search_settle_amt':$("input[name='search_settle_amt']").val(),
						 'search_settle_cur':$("input[name='search_settle_cur']").val(),
						 'search_settle_conver_rate':$("input[name='search_settle_conver_rate']").val(),
						 'search_trans_fee':$("input[name='search_trans_fee']").val(),
						 'search_tract_cost':$("input[name='search_tract_cost']").val(),
						 'search_acqbank_profit':$("input[name='search_acqbank_profit']").val(),
						 'search_agent_profit':$("input[name='search_agent_profit']").val(),
						 'search_bypay_profit':$("input[name='search_bypay_profit']").val(),
						 'search_error_code':$("input[name='search_error_code']").val(),
						 'search_reserved':$("input[name='search_reserved']").val(),
						 'search_ext':$("input[name='search_ext']").val(),
						 'search_tract_fee':$("input[name='search_tract_fee']").val(),
						 'search_gross_profit':$("input[name='search_gross_profit']").val(),
						 'search_mer_settle_amt':$("input[name='search_mer_settle_amt']").val(),
						 'search_trans_cost':$("input[name='search_trans_cost']").val(),
						 'search_proxy_id':$("input[name='search_proxy_id']").val(),
						 'search_pay_tract':$("input[name='search_pay_tract']").val(),
						 'search_mer_short_name':$("input[name='search_mer_short_name']").val(),
						 'search_bypay_fee':$("input[name='search_bypay_fee']").val(),
						 'search_mer_sys_id':$("input[name='search_mer_sys_id']").val(),
						 'search_terminal_serial_number':$("input[name='search_terminal_serial_number']").val(),
						 'search_error_desc':$("input[name='search_error_desc']").val(),
						 'search_sub_mer_id':$("input[name='search_sub_mer_id']").val(),
						 'search_agent_l2_profit':$("input[name='search_agent_l2_profit']").val(),
						 'search_rates_type':$("input[name='search_rates_type']").val(),
						 'search_sett_status':$("input[name='search_sett_status']").val(),
						 'search_clear_status':$("input[name='search_clear_status']").val(),
						 'search_clear_date':$("input[name='search_clear_date']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		v2OrderInfo_list.buildQueryParams();
		$('#dg_v2OrderInfo').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_order_id']").val("");
			$("input[name='search_batch_id']").val("");
			$("input[name='search_bus_mer_id']").val("");
			$("input[name='search_mer_type']").val("");
			$("input[name='search_trans_mer_id']").val("");
			$("input[name='search_gw_type']").val("");
			$("input[name='search_bus_type']").val("");
			$("input[name='search_trans_type']").val("");
			$("input[name='search_mer_order_id']").val("");
			$("input[name='search_mer_order_time']").val("");
			$("input[name='search_mer_amt']").val("");
			$("input[name='search_cur']").val("");
			$("input[name='search_order_desc']").val("");
			$("input[name='search_order_over_time']").val("");
			$("input[name='search_order_status']").val("");
			$("input[name='search_card_no']").val("");
			$("input[name='search_issbank_id']").val("");
			$("input[name='search_issbank_name']").val("");
			$("input[name='search_card_type']").val("");
			$("input[name='search_org_order_id']").val("");
			$("input[name='search_refund_status']").val("");
			$("input[name='search_refund_amt']").val("");
			$("input[name='search_front_url']").val("");
			$("input[name='search_back_url']").val("");
			$("input[name='search_trans_time']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_finish_time']").val("");
			$("input[name='search_user_id']").val("");
			$("input[name='search_user_name']").val("");
			$("input[name='search_id_type']").val("");
			$("input[name='search_id_no']").val("");
			$("input[name='search_user_mobile']").val("");
			$("input[name='search_user_ip']").val("");
			$("input[name='search_gw_invoke_cmd']").val("");
			$("input[name='search_account1']").val("");
			$("input[name='search_account2']").val("");
			$("input[name='search_settle_date']").val("");
			$("input[name='search_settle_amt']").val("");
			$("input[name='search_settle_cur']").val("");
			$("input[name='search_settle_conver_rate']").val("");
			$("input[name='search_trans_fee']").val("");
			$("input[name='search_tract_cost']").val("");
			$("input[name='search_acqbank_profit']").val("");
			$("input[name='search_agent_profit']").val("");
			$("input[name='search_bypay_profit']").val("");
			$("input[name='search_error_code']").val("");
			$("input[name='search_reserved']").val("");
			$("input[name='search_ext']").val("");
			$("input[name='search_tract_fee']").val("");
			$("input[name='search_gross_profit']").val("");
			$("input[name='search_mer_settle_amt']").val("");
			$("input[name='search_trans_cost']").val("");
			$("input[name='search_proxy_id']").val("");
			$("input[name='search_pay_tract']").val("");
			$("input[name='search_mer_short_name']").val("");
			$("input[name='search_bypay_fee']").val("");
			$("input[name='search_mer_sys_id']").val("");
			$("input[name='search_terminal_serial_number']").val("");
			$("input[name='search_error_desc']").val("");
			$("input[name='search_sub_mer_id']").val("");
			$("input[name='search_agent_l2_profit']").val("");
			$("input[name='search_rates_type']").val("");
			$("input[name='search_sett_status']").val("");
			$("input[name='search_clear_status']").val("");
			$("input[name='search_clear_date']").val("");
		v2OrderInfo_list.buildQueryParams();
		$('#dg_v2OrderInfo').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addV2OrderInfoFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'V2_ORDER_INFO',
		    width: 800,
		    height: 500,
		    href: 'addV2OrderInfoPage.action',
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
		    		$('#addV2OrderInfoFrom').form({   
						 url:'addV2OrderInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									v2OrderInfo_list.buildQueryParams();
									$('#dg_v2OrderInfo').datagrid('load');
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
	v2OrderInfo_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editV2OrderInfoFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'V2OrderInfo',
		    width: 800,
		    height: 500,
		    href: 'editV2OrderInfoPage.action',
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
		   				$('#editV2OrderInfoFrom').form({   
						 url:'editV2OrderInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									v2OrderInfo_list.buildQueryParams();
									$('#dg_v2OrderInfo').datagrid('load');
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
		     			$('#delV2OrderInfoFrom').form({   
						 url:'delV2OrderInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									v2OrderInfo_list.buildQueryParams();
									$('#dg_v2OrderInfo').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delV2OrderInfoFrom').submit();
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
	v2OrderInfo_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细V2OrderInfo',
		    width: 800,
		    height: 500,
		    href: 'detailV2OrderInfoPage.action',
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