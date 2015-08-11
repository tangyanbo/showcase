<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addFaiPayInfo2newFrom" name="addFaiPayInfo2newFrom" method="post" action="addFaiPayInfo2newAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>trans_mer_id</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.trans_mer_id" name="faiPayInfo2newDto.trans_mer_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_mer_id不能为空',missingMessage:'trans_mer_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_ter_id</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.trans_ter_id" name="faiPayInfo2newDto.trans_ter_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_ter_id不能为空',missingMessage:'trans_ter_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>channel_type</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.channel_type" name="faiPayInfo2newDto.channel_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'channel_type不能为空',missingMessage:'channel_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_amt</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.trans_amt" name="faiPayInfo2newDto.trans_amt" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'trans_amt必须为数字',missingMessage:'trans_amt必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_cur</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.trans_cur" name="faiPayInfo2newDto.trans_cur" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_cur不能为空',missingMessage:'trans_cur不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_time</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.trans_time" name="faiPayInfo2newDto.trans_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_time不能为空',missingMessage:'trans_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_status</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.trans_status" name="faiPayInfo2newDto.trans_status" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_status不能为空',missingMessage:'trans_status不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_type</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.trans_type" name="faiPayInfo2newDto.trans_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_type不能为空',missingMessage:'trans_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>res_code</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.res_code" name="faiPayInfo2newDto.res_code" class="easyui-validatebox" data-options="required:true,invalidMessage:'res_code不能为空',missingMessage:'res_code不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>res_desc</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.res_desc" name="faiPayInfo2newDto.res_desc" class="easyui-validatebox" data-options="required:true,invalidMessage:'res_desc不能为空',missingMessage:'res_desc不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_trace_time</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.trans_trace_time" name="faiPayInfo2newDto.trans_trace_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_trace_time不能为空',missingMessage:'trans_trace_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>settle_date</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.settle_date" name="faiPayInfo2newDto.settle_date" class="easyui-validatebox" data-options="required:true,invalidMessage:'settle_date不能为空',missingMessage:'settle_date不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>settle_amt</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.settle_amt" name="faiPayInfo2newDto.settle_amt" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'settle_amt必须为数字',missingMessage:'settle_amt必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>settle_cur</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.settle_cur" name="faiPayInfo2newDto.settle_cur" class="easyui-validatebox" data-options="required:true,invalidMessage:'settle_cur不能为空',missingMessage:'settle_cur不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>settle_conver_rate</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.settle_conver_rate" name="faiPayInfo2newDto.settle_conver_rate" class="easyui-validatebox" data-options="required:true,invalidMessage:'settle_conver_rate不能为空',missingMessage:'settle_conver_rate不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mobile</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.mobile" name="faiPayInfo2newDto.mobile" class="easyui-validatebox" data-options="required:true,invalidMessage:'mobile不能为空',missingMessage:'mobile不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>id_type</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.id_type" name="faiPayInfo2newDto.id_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'id_type不能为空',missingMessage:'id_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>id_no</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.id_no" name="faiPayInfo2newDto.id_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'id_no不能为空',missingMessage:'id_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>user_name</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.user_name" name="faiPayInfo2newDto.user_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'user_name不能为空',missingMessage:'user_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>bind_num</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.bind_num" name="faiPayInfo2newDto.bind_num" class="easyui-validatebox" data-options="required:true,invalidMessage:'bind_num不能为空',missingMessage:'bind_num不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>pan</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.pan" name="faiPayInfo2newDto.pan" class="easyui-validatebox" data-options="required:true,invalidMessage:'pan不能为空',missingMessage:'pan不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>card_type</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.card_type" name="faiPayInfo2newDto.card_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'card_type不能为空',missingMessage:'card_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>issbank_id</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.issbank_id" name="faiPayInfo2newDto.issbank_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'issbank_id不能为空',missingMessage:'issbank_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>issbank_name</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.issbank_name" name="faiPayInfo2newDto.issbank_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'issbank_name不能为空',missingMessage:'issbank_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>ch_info</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.ch_info" name="faiPayInfo2newDto.ch_info" class="easyui-validatebox" data-options="required:true,invalidMessage:'ch_info不能为空',missingMessage:'ch_info不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>account1</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.account1" name="faiPayInfo2newDto.account1" class="easyui-validatebox" data-options="required:true,invalidMessage:'account1不能为空',missingMessage:'account1不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>account2</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.account2" name="faiPayInfo2newDto.account2" class="easyui-validatebox" data-options="required:true,invalidMessage:'account2不能为空',missingMessage:'account2不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>org_order_id</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.org_order_id" name="faiPayInfo2newDto.org_order_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'org_order_id必须为数字',missingMessage:'org_order_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>create_time</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.create_time" name="faiPayInfo2newDto.create_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>modify_time</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.modify_time" name="faiPayInfo2newDto.modify_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'modify_time不能为空',missingMessage:'modify_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.reserved" name="faiPayInfo2newDto.reserved" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved不能为空',missingMessage:'reserved不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>ext</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.ext" name="faiPayInfo2newDto.ext" class="easyui-validatebox" data-options="required:true,invalidMessage:'ext不能为空',missingMessage:'ext不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>csn</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.csn" name="faiPayInfo2newDto.csn" class="easyui-validatebox" data-options="required:true,invalidMessage:'csn不能为空',missingMessage:'csn不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_mer_name</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.trans_mer_name" name="faiPayInfo2newDto.trans_mer_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_mer_name不能为空',missingMessage:'trans_mer_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>spid</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.spid" name="faiPayInfo2newDto.spid" class="easyui-validatebox" data-options="required:true,invalidMessage:'spid不能为空',missingMessage:'spid不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>track2_data</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.track2_data" name="faiPayInfo2newDto.track2_data" class="easyui-validatebox" data-options="required:true,invalidMessage:'track2_data不能为空',missingMessage:'track2_data不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>track3_data</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.track3_data" name="faiPayInfo2newDto.track3_data" class="easyui-validatebox" data-options="required:true,invalidMessage:'track3_data不能为空',missingMessage:'track3_data不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>ip</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.ip" name="faiPayInfo2newDto.ip" class="easyui-validatebox" data-options="required:true,invalidMessage:'ip不能为空',missingMessage:'ip不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reference_no</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.reference_no" name="faiPayInfo2newDto.reference_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'reference_no不能为空',missingMessage:'reference_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>auth_no</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.auth_no" name="faiPayInfo2newDto.auth_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'auth_no不能为空',missingMessage:'auth_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>date_transaction</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.date_transaction" name="faiPayInfo2newDto.date_transaction" class="easyui-validatebox" data-options="required:true,invalidMessage:'date_transaction不能为空',missingMessage:'date_transaction不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>time_transaction</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.time_transaction" name="faiPayInfo2newDto.time_transaction" class="easyui-validatebox" data-options="required:true,invalidMessage:'time_transaction不能为空',missingMessage:'time_transaction不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>tracking_no</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.tracking_no" name="faiPayInfo2newDto.tracking_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'tracking_no不能为空',missingMessage:'tracking_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>account2_name</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.account2_name" name="faiPayInfo2newDto.account2_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'account2_name不能为空',missingMessage:'account2_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>batch_no</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.batch_no" name="faiPayInfo2newDto.batch_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'batch_no不能为空',missingMessage:'batch_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>ext1</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.ext1" name="faiPayInfo2newDto.ext1" class="easyui-validatebox" data-options="required:true,invalidMessage:'ext1不能为空',missingMessage:'ext1不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>ext2</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.ext2" name="faiPayInfo2newDto.ext2" class="easyui-validatebox" data-options="required:true,invalidMessage:'ext2不能为空',missingMessage:'ext2不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>ext3</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.ext3" name="faiPayInfo2newDto.ext3" class="easyui-validatebox" data-options="required:true,invalidMessage:'ext3不能为空',missingMessage:'ext3不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>create_date</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.create_date" name="faiPayInfo2newDto.create_date" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_date不能为空',missingMessage:'create_date不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>modify_date</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.modify_date" name="faiPayInfo2newDto.modify_date" class="easyui-validatebox" data-options="required:true,invalidMessage:'modify_date不能为空',missingMessage:'modify_date不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>entry_mode</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.entry_mode" name="faiPayInfo2newDto.entry_mode" class="easyui-validatebox" data-options="required:true,invalidMessage:'entry_mode不能为空',missingMessage:'entry_mode不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>card_no</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.card_no" name="faiPayInfo2newDto.card_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'card_no不能为空',missingMessage:'card_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_order_id</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.mer_order_id" name="faiPayInfo2newDto.mer_order_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_order_id不能为空',missingMessage:'mer_order_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_sys_id</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.mer_sys_id" name="faiPayInfo2newDto.mer_sys_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_sys_id不能为空',missingMessage:'mer_sys_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>sub_mer_id</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.sub_mer_id" name="faiPayInfo2newDto.sub_mer_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'sub_mer_id不能为空',missingMessage:'sub_mer_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>resp_code</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.resp_code" name="faiPayInfo2newDto.resp_code" class="easyui-validatebox" data-options="required:true,invalidMessage:'resp_code不能为空',missingMessage:'resp_code不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>resp_desc</label></th>
							<td>
								<input type="text" id="faiPayInfo2newDto.resp_desc" name="faiPayInfo2newDto.resp_desc" class="easyui-validatebox" data-options="required:true,invalidMessage:'resp_desc不能为空',missingMessage:'resp_desc不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>