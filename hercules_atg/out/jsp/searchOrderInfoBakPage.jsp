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
								<td>terminal_id</td>
								<td>
									<input type="text" id="search_terminal_id" name="search_terminal_id" class="easyui-textbox" value="${search_terminal_id}"/>
								</td>
								<td>sub_mer_id</td>
								<td>
									<input type="text" id="search_sub_mer_id" name="search_sub_mer_id" class="easyui-textbox" value="${search_sub_mer_id}"/>
								</td>
								<td>mer_sys_id</td>
								<td>
									<input type="text" id="search_mer_sys_id" name="search_mer_sys_id" class="easyui-textbox" value="${search_mer_sys_id}"/>
								</td>
								<td>agent_id_l2</td>
								<td>
									<input type="text" id="search_agent_id_l2" name="search_agent_id_l2" class="easyui-textbox" value="${search_agent_id_l2}"/>
								</td>
								<td>agent_id_l1</td>
								<td>
									<input type="text" id="search_agent_id_l1" name="search_agent_id_l1" class="easyui-textbox" value="${search_agent_id_l1}"/>
								</td>
								<td>trans_mer_id</td>
								<td>
									<input type="text" id="search_trans_mer_id" name="search_trans_mer_id" class="easyui-textbox" value="${search_trans_mer_id}"/>
								</td>
								<td>trans_type</td>
								<td>
									<input type="text" id="search_trans_type" name="search_trans_type" class="easyui-textbox" value="${search_trans_type}"/>
								</td>
								<td>terminal_type</td>
								<td>
									<input type="text" id="search_terminal_type" name="search_terminal_type" class="easyui-textbox" value="${search_terminal_type}"/>
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
								<td>order_fee</td>
								<td>
									<input type="text" id="search_order_fee" name="search_order_fee" class="easyui-textbox" value="${search_order_fee}"/>
								</td>
								<td>currency</td>
								<td>
									<input type="text" id="search_currency" name="search_currency" class="easyui-textbox" value="${search_currency}"/>
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
								<td>refund_status</td>
								<td>
									<input type="text" id="search_refund_status" name="search_refund_status" class="easyui-textbox" value="${search_refund_status}"/>
								</td>
								<td>org_order_id</td>
								<td>
									<input type="text" id="search_org_order_id" name="search_org_order_id" class="easyui-textbox" value="${search_org_order_id}"/>
								</td>
								<td>org_order_amt</td>
								<td>
									<input type="text" id="search_org_order_amt" name="search_org_order_amt" class="easyui-textbox" value="${search_org_order_amt}"/>
								</td>
								<td>card_no</td>
								<td>
									<input type="text" id="search_card_no" name="search_card_no" class="easyui-textbox" value="${search_card_no}"/>
								</td>
								<td>card_type</td>
								<td>
									<input type="text" id="search_card_type" name="search_card_type" class="easyui-textbox" value="${search_card_type}"/>
								</td>
								<td>issue_bank_id</td>
								<td>
									<input type="text" id="search_issue_bank_id" name="search_issue_bank_id" class="easyui-textbox" value="${search_issue_bank_id}"/>
								</td>
								<td>issue_bank_name</td>
								<td>
									<input type="text" id="search_issue_bank_name" name="search_issue_bank_name" class="easyui-textbox" value="${search_issue_bank_name}"/>
								</td>
								<td>user_mobile</td>
								<td>
									<input type="text" id="search_user_mobile" name="search_user_mobile" class="easyui-textbox" value="${search_user_mobile}"/>
								</td>
								<td>back_url</td>
								<td>
									<input type="text" id="search_back_url" name="search_back_url" class="easyui-textbox" value="${search_back_url}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>trans_time</td>
								<td>
									<input type="text" id="search_trans_time" name="search_trans_time" class="easyui-textbox" value="${search_trans_time}"/>
								</td>
								<td>finish_time</td>
								<td>
									<input type="text" id="search_finish_time" name="search_finish_time" class="easyui-textbox" value="${search_finish_time}"/>
								</td>
								<td>user_ip</td>
								<td>
									<input type="text" id="search_user_ip" name="search_user_ip" class="easyui-textbox" value="${search_user_ip}"/>
								</td>
								<td>batch_no</td>
								<td>
									<input type="text" id="search_batch_no" name="search_batch_no" class="easyui-textbox" value="${search_batch_no}"/>
								</td>
								<td>reffer_no</td>
								<td>
									<input type="text" id="search_reffer_no" name="search_reffer_no" class="easyui-textbox" value="${search_reffer_no}"/>
								</td>
								<td>auth_no</td>
								<td>
									<input type="text" id="search_auth_no" name="search_auth_no" class="easyui-textbox" value="${search_auth_no}"/>
								</td>
								<td>voucher_no</td>
								<td>
									<input type="text" id="search_voucher_no" name="search_voucher_no" class="easyui-textbox" value="${search_voucher_no}"/>
								</td>
								<td>settle_amt</td>
								<td>
									<input type="text" id="search_settle_amt" name="search_settle_amt" class="easyui-textbox" value="${search_settle_amt}"/>
								</td>
								<td>settle_date</td>
								<td>
									<input type="text" id="search_settle_date" name="search_settle_date" class="easyui-textbox" value="${search_settle_date}"/>
								</td>
								<td>settle_cur</td>
								<td>
									<input type="text" id="search_settle_cur" name="search_settle_cur" class="easyui-textbox" value="${search_settle_cur}"/>
								</td>
								<td>settle_conver_rate</td>
								<td>
									<input type="text" id="search_settle_conver_rate" name="search_settle_conver_rate" class="easyui-textbox" value="${search_settle_conver_rate}"/>
								</td>
								<td>trace_no</td>
								<td>
									<input type="text" id="search_trace_no" name="search_trace_no" class="easyui-textbox" value="${search_trace_no}"/>
								</td>
								<td>qid</td>
								<td>
									<input type="text" id="search_qid" name="search_qid" class="easyui-textbox" value="${search_qid}"/>
								</td>
								<td>resp_code</td>
								<td>
									<input type="text" id="search_resp_code" name="search_resp_code" class="easyui-textbox" value="${search_resp_code}"/>
								</td>
								<td>resp_desc</td>
								<td>
									<input type="text" id="search_resp_desc" name="search_resp_desc" class="easyui-textbox" value="${search_resp_desc}"/>
								</td>
								<td>remark</td>
								<td>
									<input type="text" id="search_remark" name="search_remark" class="easyui-textbox" value="${search_remark}"/>
								</td>
								<td>reserved</td>
								<td>
									<input type="text" id="search_reserved" name="search_reserved" class="easyui-textbox" value="${search_reserved}"/>
								</td>
								<td>ext</td>
								<td>
									<input type="text" id="search_ext" name="search_ext" class="easyui-textbox" value="${search_ext}"/>
								</td>
								<td>account_name</td>
								<td>
									<input type="text" id="search_account_name" name="search_account_name" class="easyui-textbox" value="${search_account_name}"/>
								</td>
								<td>account2_no</td>
								<td>
									<input type="text" id="search_account2_no" name="search_account2_no" class="easyui-textbox" value="${search_account2_no}"/>
								</td>
								<td>account2_name</td>
								<td>
									<input type="text" id="search_account2_name" name="search_account2_name" class="easyui-textbox" value="${search_account2_name}"/>
								</td>
								<td>account2_bank</td>
								<td>
									<input type="text" id="search_account2_bank" name="search_account2_bank" class="easyui-textbox" value="${search_account2_bank}"/>
								</td>
								<td>trans_fee</td>
								<td>
									<input type="text" id="search_trans_fee" name="search_trans_fee" class="easyui-textbox" value="${search_trans_fee}"/>
								</td>
								<td>bus_type</td>
								<td>
									<input type="text" id="search_bus_type" name="search_bus_type" class="easyui-textbox" value="${search_bus_type}"/>
								</td>
								<td>create_date</td>
								<td>
									<input type="text" id="search_create_date" name="search_create_date" class="easyui-textbox" value="${search_create_date}"/>
								</td>
								<td>full_card_no</td>
								<td>
									<input type="text" id="search_full_card_no" name="search_full_card_no" class="easyui-textbox" value="${search_full_card_no}"/>
								</td>
								<td>order_rate_type</td>
								<td>
									<input type="text" id="search_order_rate_type" name="search_order_rate_type" class="easyui-textbox" value="${search_order_rate_type}"/>
								</td>
								<td>trans_mer_name</td>
								<td>
									<input type="text" id="search_trans_mer_name" name="search_trans_mer_name" class="easyui-textbox" value="${search_trans_mer_name}"/>
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
								<td>settle_status</td>
								<td>
									<input type="text" id="search_settle_status" name="search_settle_status" class="easyui-textbox" value="${search_settle_status}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_orderInfoBak" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'ORDER_ID',width:120,sortable:'true',align:'left'">order_id</th>
							<th data-options="field:'BATCH_ID',width:120,sortable:'true',align:'left'">batch_id</th>
							<th data-options="field:'TERMINAL_ID',width:120,sortable:'true',align:'left'">terminal_id</th>
							<th data-options="field:'SUB_MER_ID',width:120,sortable:'true',align:'left'">sub_mer_id</th>
							<th data-options="field:'MER_SYS_ID',width:120,sortable:'true',align:'left'">mer_sys_id</th>
							<th data-options="field:'AGENT_ID_L2',width:120,sortable:'true',align:'left'">agent_id_l2</th>
							<th data-options="field:'AGENT_ID_L1',width:120,sortable:'true',align:'left'">agent_id_l1</th>
							<th data-options="field:'TRANS_MER_ID',width:120,sortable:'true',align:'left'">trans_mer_id</th>
							<th data-options="field:'TRANS_TYPE',width:120,sortable:'true',align:'left'">trans_type</th>
							<th data-options="field:'TERMINAL_TYPE',width:120,sortable:'true',align:'left'">terminal_type</th>
							<th data-options="field:'MER_ORDER_ID',width:120,sortable:'true',align:'left'">mer_order_id</th>
							<th data-options="field:'MER_ORDER_TIME',width:120,sortable:'true',align:'left'">mer_order_time</th>
							<th data-options="field:'MER_AMT',width:120,sortable:'true',align:'left'">mer_amt</th>
							<th data-options="field:'ORDER_FEE',width:120,sortable:'true',align:'left'">order_fee</th>
							<th data-options="field:'CURRENCY',width:120,sortable:'true',align:'left'">currency</th>
							<th data-options="field:'ORDER_DESC',width:120,sortable:'true',align:'left'">order_desc</th>
							<th data-options="field:'ORDER_OVER_TIME',width:120,sortable:'true',align:'left'">order_over_time</th>
							<th data-options="field:'ORDER_STATUS',width:120,sortable:'true',align:'left'">order_status</th>
							<th data-options="field:'REFUND_STATUS',width:120,sortable:'true',align:'left'">refund_status</th>
							<th data-options="field:'ORG_ORDER_ID',width:120,sortable:'true',align:'left'">org_order_id</th>
							<th data-options="field:'ORG_ORDER_AMT',width:120,sortable:'true',align:'left'">org_order_amt</th>
							<th data-options="field:'CARD_NO',width:120,sortable:'true',align:'left'">card_no</th>
							<th data-options="field:'CARD_TYPE',width:120,sortable:'true',align:'left'">card_type</th>
							<th data-options="field:'ISSUE_BANK_ID',width:120,sortable:'true',align:'left'">issue_bank_id</th>
							<th data-options="field:'ISSUE_BANK_NAME',width:120,sortable:'true',align:'left'">issue_bank_name</th>
							<th data-options="field:'USER_MOBILE',width:120,sortable:'true',align:'left'">user_mobile</th>
							<th data-options="field:'BACK_URL',width:120,sortable:'true',align:'left'">back_url</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'TRANS_TIME',width:120,sortable:'true',align:'left'">trans_time</th>
							<th data-options="field:'FINISH_TIME',width:120,sortable:'true',align:'left'">finish_time</th>
							<th data-options="field:'USER_IP',width:120,sortable:'true',align:'left'">user_ip</th>
							<th data-options="field:'BATCH_NO',width:120,sortable:'true',align:'left'">batch_no</th>
							<th data-options="field:'REFFER_NO',width:120,sortable:'true',align:'left'">reffer_no</th>
							<th data-options="field:'AUTH_NO',width:120,sortable:'true',align:'left'">auth_no</th>
							<th data-options="field:'VOUCHER_NO',width:120,sortable:'true',align:'left'">voucher_no</th>
							<th data-options="field:'SETTLE_AMT',width:120,sortable:'true',align:'left'">settle_amt</th>
							<th data-options="field:'SETTLE_DATE',width:120,sortable:'true',align:'left'">settle_date</th>
							<th data-options="field:'SETTLE_CUR',width:120,sortable:'true',align:'left'">settle_cur</th>
							<th data-options="field:'SETTLE_CONVER_RATE',width:120,sortable:'true',align:'left'">settle_conver_rate</th>
							<th data-options="field:'TRACE_NO',width:120,sortable:'true',align:'left'">trace_no</th>
							<th data-options="field:'QID',width:120,sortable:'true',align:'left'">qid</th>
							<th data-options="field:'RESP_CODE',width:120,sortable:'true',align:'left'">resp_code</th>
							<th data-options="field:'RESP_DESC',width:120,sortable:'true',align:'left'">resp_desc</th>
							<th data-options="field:'REMARK',width:120,sortable:'true',align:'left'">remark</th>
							<th data-options="field:'RESERVED',width:120,sortable:'true',align:'left'">reserved</th>
							<th data-options="field:'EXT',width:120,sortable:'true',align:'left'">ext</th>
							<th data-options="field:'ACCOUNT_NAME',width:120,sortable:'true',align:'left'">account_name</th>
							<th data-options="field:'ACCOUNT2_NO',width:120,sortable:'true',align:'left'">account2_no</th>
							<th data-options="field:'ACCOUNT2_NAME',width:120,sortable:'true',align:'left'">account2_name</th>
							<th data-options="field:'ACCOUNT2_BANK',width:120,sortable:'true',align:'left'">account2_bank</th>
							<th data-options="field:'TRANS_FEE',width:120,sortable:'true',align:'left'">trans_fee</th>
							<th data-options="field:'BUS_TYPE',width:120,sortable:'true',align:'left'">bus_type</th>
							<th data-options="field:'CREATE_DATE',width:120,sortable:'true',align:'left'">create_date</th>
							<th data-options="field:'FULL_CARD_NO',width:120,sortable:'true',align:'left'">full_card_no</th>
							<th data-options="field:'ORDER_RATE_TYPE',width:120,sortable:'true',align:'left'">order_rate_type</th>
							<th data-options="field:'TRANS_MER_NAME',width:120,sortable:'true',align:'left'">trans_mer_name</th>
							<th data-options="field:'RESERVED1',width:120,sortable:'true',align:'left'">reserved1</th>
							<th data-options="field:'RESERVED2',width:120,sortable:'true',align:'left'">reserved2</th>
							<th data-options="field:'RESERVED3',width:120,sortable:'true',align:'left'">reserved3</th>
							<th data-options="field:'SETTLE_STATUS',width:120,sortable:'true',align:'left'">settle_status</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var orderInfoBak_list ={};
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
	orderInfoBak_list.buildQueryParams=function(){
	    $('#dg_orderInfoBak').datagrid({
			queryParams: {
						 'search_order_id':$("input[name='search_order_id']").val(),
						 'search_batch_id':$("input[name='search_batch_id']").val(),
						 'search_terminal_id':$("input[name='search_terminal_id']").val(),
						 'search_sub_mer_id':$("input[name='search_sub_mer_id']").val(),
						 'search_mer_sys_id':$("input[name='search_mer_sys_id']").val(),
						 'search_agent_id_l2':$("input[name='search_agent_id_l2']").val(),
						 'search_agent_id_l1':$("input[name='search_agent_id_l1']").val(),
						 'search_trans_mer_id':$("input[name='search_trans_mer_id']").val(),
						 'search_trans_type':$("input[name='search_trans_type']").val(),
						 'search_terminal_type':$("input[name='search_terminal_type']").val(),
						 'search_mer_order_id':$("input[name='search_mer_order_id']").val(),
						 'search_mer_order_time':$("input[name='search_mer_order_time']").val(),
						 'search_mer_amt':$("input[name='search_mer_amt']").val(),
						 'search_order_fee':$("input[name='search_order_fee']").val(),
						 'search_currency':$("input[name='search_currency']").val(),
						 'search_order_desc':$("input[name='search_order_desc']").val(),
						 'search_order_over_time':$("input[name='search_order_over_time']").val(),
						 'search_order_status':$("input[name='search_order_status']").val(),
						 'search_refund_status':$("input[name='search_refund_status']").val(),
						 'search_org_order_id':$("input[name='search_org_order_id']").val(),
						 'search_org_order_amt':$("input[name='search_org_order_amt']").val(),
						 'search_card_no':$("input[name='search_card_no']").val(),
						 'search_card_type':$("input[name='search_card_type']").val(),
						 'search_issue_bank_id':$("input[name='search_issue_bank_id']").val(),
						 'search_issue_bank_name':$("input[name='search_issue_bank_name']").val(),
						 'search_user_mobile':$("input[name='search_user_mobile']").val(),
						 'search_back_url':$("input[name='search_back_url']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_trans_time':$("input[name='search_trans_time']").val(),
						 'search_finish_time':$("input[name='search_finish_time']").val(),
						 'search_user_ip':$("input[name='search_user_ip']").val(),
						 'search_batch_no':$("input[name='search_batch_no']").val(),
						 'search_reffer_no':$("input[name='search_reffer_no']").val(),
						 'search_auth_no':$("input[name='search_auth_no']").val(),
						 'search_voucher_no':$("input[name='search_voucher_no']").val(),
						 'search_settle_amt':$("input[name='search_settle_amt']").val(),
						 'search_settle_date':$("input[name='search_settle_date']").val(),
						 'search_settle_cur':$("input[name='search_settle_cur']").val(),
						 'search_settle_conver_rate':$("input[name='search_settle_conver_rate']").val(),
						 'search_trace_no':$("input[name='search_trace_no']").val(),
						 'search_qid':$("input[name='search_qid']").val(),
						 'search_resp_code':$("input[name='search_resp_code']").val(),
						 'search_resp_desc':$("input[name='search_resp_desc']").val(),
						 'search_remark':$("input[name='search_remark']").val(),
						 'search_reserved':$("input[name='search_reserved']").val(),
						 'search_ext':$("input[name='search_ext']").val(),
						 'search_account_name':$("input[name='search_account_name']").val(),
						 'search_account2_no':$("input[name='search_account2_no']").val(),
						 'search_account2_name':$("input[name='search_account2_name']").val(),
						 'search_account2_bank':$("input[name='search_account2_bank']").val(),
						 'search_trans_fee':$("input[name='search_trans_fee']").val(),
						 'search_bus_type':$("input[name='search_bus_type']").val(),
						 'search_create_date':$("input[name='search_create_date']").val(),
						 'search_full_card_no':$("input[name='search_full_card_no']").val(),
						 'search_order_rate_type':$("input[name='search_order_rate_type']").val(),
						 'search_trans_mer_name':$("input[name='search_trans_mer_name']").val(),
						 'search_reserved1':$("input[name='search_reserved1']").val(),
						 'search_reserved2':$("input[name='search_reserved2']").val(),
						 'search_reserved3':$("input[name='search_reserved3']").val(),
						 'search_settle_status':$("input[name='search_settle_status']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		orderInfoBak_list.buildQueryParams();
		$('#dg_orderInfoBak').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_order_id']").val("");
			$("input[name='search_batch_id']").val("");
			$("input[name='search_terminal_id']").val("");
			$("input[name='search_sub_mer_id']").val("");
			$("input[name='search_mer_sys_id']").val("");
			$("input[name='search_agent_id_l2']").val("");
			$("input[name='search_agent_id_l1']").val("");
			$("input[name='search_trans_mer_id']").val("");
			$("input[name='search_trans_type']").val("");
			$("input[name='search_terminal_type']").val("");
			$("input[name='search_mer_order_id']").val("");
			$("input[name='search_mer_order_time']").val("");
			$("input[name='search_mer_amt']").val("");
			$("input[name='search_order_fee']").val("");
			$("input[name='search_currency']").val("");
			$("input[name='search_order_desc']").val("");
			$("input[name='search_order_over_time']").val("");
			$("input[name='search_order_status']").val("");
			$("input[name='search_refund_status']").val("");
			$("input[name='search_org_order_id']").val("");
			$("input[name='search_org_order_amt']").val("");
			$("input[name='search_card_no']").val("");
			$("input[name='search_card_type']").val("");
			$("input[name='search_issue_bank_id']").val("");
			$("input[name='search_issue_bank_name']").val("");
			$("input[name='search_user_mobile']").val("");
			$("input[name='search_back_url']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_trans_time']").val("");
			$("input[name='search_finish_time']").val("");
			$("input[name='search_user_ip']").val("");
			$("input[name='search_batch_no']").val("");
			$("input[name='search_reffer_no']").val("");
			$("input[name='search_auth_no']").val("");
			$("input[name='search_voucher_no']").val("");
			$("input[name='search_settle_amt']").val("");
			$("input[name='search_settle_date']").val("");
			$("input[name='search_settle_cur']").val("");
			$("input[name='search_settle_conver_rate']").val("");
			$("input[name='search_trace_no']").val("");
			$("input[name='search_qid']").val("");
			$("input[name='search_resp_code']").val("");
			$("input[name='search_resp_desc']").val("");
			$("input[name='search_remark']").val("");
			$("input[name='search_reserved']").val("");
			$("input[name='search_ext']").val("");
			$("input[name='search_account_name']").val("");
			$("input[name='search_account2_no']").val("");
			$("input[name='search_account2_name']").val("");
			$("input[name='search_account2_bank']").val("");
			$("input[name='search_trans_fee']").val("");
			$("input[name='search_bus_type']").val("");
			$("input[name='search_create_date']").val("");
			$("input[name='search_full_card_no']").val("");
			$("input[name='search_order_rate_type']").val("");
			$("input[name='search_trans_mer_name']").val("");
			$("input[name='search_reserved1']").val("");
			$("input[name='search_reserved2']").val("");
			$("input[name='search_reserved3']").val("");
			$("input[name='search_settle_status']").val("");
		orderInfoBak_list.buildQueryParams();
		$('#dg_orderInfoBak').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addOrderInfoBakFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'ORDER_INFO_BAK',
		    width: 800,
		    height: 500,
		    href: 'addOrderInfoBakPage.action',
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
		    		$('#addOrderInfoBakFrom').form({   
						 url:'addOrderInfoBakAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									orderInfoBak_list.buildQueryParams();
									$('#dg_orderInfoBak').datagrid('load');
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
	orderInfoBak_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editOrderInfoBakFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'OrderInfoBak',
		    width: 800,
		    height: 500,
		    href: 'editOrderInfoBakPage.action',
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
		   				$('#editOrderInfoBakFrom').form({   
						 url:'editOrderInfoBakAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									orderInfoBak_list.buildQueryParams();
									$('#dg_orderInfoBak').datagrid('load');
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
		     			$('#delOrderInfoBakFrom').form({   
						 url:'delOrderInfoBakAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									orderInfoBak_list.buildQueryParams();
									$('#dg_orderInfoBak').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delOrderInfoBakFrom').submit();
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
	orderInfoBak_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细OrderInfoBak',
		    width: 800,
		    height: 500,
		    href: 'detailOrderInfoBakPage.action',
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