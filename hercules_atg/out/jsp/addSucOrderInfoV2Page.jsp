<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addSucOrderInfoV2From" name="addSucOrderInfoV2From" method="post" action="addSucOrderInfoV2Action.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>trans_mer_id</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.trans_mer_id" name="sucOrderInfoV2Dto.trans_mer_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_mer_id不能为空',missingMessage:'trans_mer_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_ter_id</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.trans_ter_id" name="sucOrderInfoV2Dto.trans_ter_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_ter_id不能为空',missingMessage:'trans_ter_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>channel_type</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.channel_type" name="sucOrderInfoV2Dto.channel_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'channel_type不能为空',missingMessage:'channel_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_amt</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.trans_amt" name="sucOrderInfoV2Dto.trans_amt" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'trans_amt必须为数字',missingMessage:'trans_amt必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_cur</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.trans_cur" name="sucOrderInfoV2Dto.trans_cur" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_cur不能为空',missingMessage:'trans_cur不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_time</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.trans_time" name="sucOrderInfoV2Dto.trans_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_time不能为空',missingMessage:'trans_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_status</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.trans_status" name="sucOrderInfoV2Dto.trans_status" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_status不能为空',missingMessage:'trans_status不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_type</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.trans_type" name="sucOrderInfoV2Dto.trans_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_type不能为空',missingMessage:'trans_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>res_code</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.res_code" name="sucOrderInfoV2Dto.res_code" class="easyui-validatebox" data-options="required:true,invalidMessage:'res_code不能为空',missingMessage:'res_code不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>res_desc</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.res_desc" name="sucOrderInfoV2Dto.res_desc" class="easyui-validatebox" data-options="required:true,invalidMessage:'res_desc不能为空',missingMessage:'res_desc不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_qid</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.trans_qid" name="sucOrderInfoV2Dto.trans_qid" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_qid不能为空',missingMessage:'trans_qid不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_trace_number</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.trans_trace_number" name="sucOrderInfoV2Dto.trans_trace_number" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_trace_number不能为空',missingMessage:'trans_trace_number不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_trace_time</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.trans_trace_time" name="sucOrderInfoV2Dto.trans_trace_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_trace_time不能为空',missingMessage:'trans_trace_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>settle_date</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.settle_date" name="sucOrderInfoV2Dto.settle_date" class="easyui-validatebox" data-options="required:true,invalidMessage:'settle_date不能为空',missingMessage:'settle_date不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>settle_amt</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.settle_amt" name="sucOrderInfoV2Dto.settle_amt" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'settle_amt必须为数字',missingMessage:'settle_amt必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>settle_cur</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.settle_cur" name="sucOrderInfoV2Dto.settle_cur" class="easyui-validatebox" data-options="required:true,invalidMessage:'settle_cur不能为空',missingMessage:'settle_cur不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>settle_conver_rate</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.settle_conver_rate" name="sucOrderInfoV2Dto.settle_conver_rate" class="easyui-validatebox" data-options="required:true,invalidMessage:'settle_conver_rate不能为空',missingMessage:'settle_conver_rate不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mobile</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.mobile" name="sucOrderInfoV2Dto.mobile" class="easyui-validatebox" data-options="required:true,invalidMessage:'mobile不能为空',missingMessage:'mobile不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>id_type</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.id_type" name="sucOrderInfoV2Dto.id_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'id_type不能为空',missingMessage:'id_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>id_no</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.id_no" name="sucOrderInfoV2Dto.id_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'id_no不能为空',missingMessage:'id_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>user_name</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.user_name" name="sucOrderInfoV2Dto.user_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'user_name不能为空',missingMessage:'user_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>bind_num</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.bind_num" name="sucOrderInfoV2Dto.bind_num" class="easyui-validatebox" data-options="required:true,invalidMessage:'bind_num不能为空',missingMessage:'bind_num不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>pan</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.pan" name="sucOrderInfoV2Dto.pan" class="easyui-validatebox" data-options="required:true,invalidMessage:'pan不能为空',missingMessage:'pan不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>card_type</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.card_type" name="sucOrderInfoV2Dto.card_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'card_type不能为空',missingMessage:'card_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>issbank_id</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.issbank_id" name="sucOrderInfoV2Dto.issbank_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'issbank_id不能为空',missingMessage:'issbank_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>issbank_name</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.issbank_name" name="sucOrderInfoV2Dto.issbank_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'issbank_name不能为空',missingMessage:'issbank_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>ch_info</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.ch_info" name="sucOrderInfoV2Dto.ch_info" class="easyui-validatebox" data-options="required:true,invalidMessage:'ch_info不能为空',missingMessage:'ch_info不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>account1</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.account1" name="sucOrderInfoV2Dto.account1" class="easyui-validatebox" data-options="required:true,invalidMessage:'account1不能为空',missingMessage:'account1不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>account2</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.account2" name="sucOrderInfoV2Dto.account2" class="easyui-validatebox" data-options="required:true,invalidMessage:'account2不能为空',missingMessage:'account2不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>org_order_id</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.org_order_id" name="sucOrderInfoV2Dto.org_order_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'org_order_id必须为数字',missingMessage:'org_order_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>create_time</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.create_time" name="sucOrderInfoV2Dto.create_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>modify_time</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.modify_time" name="sucOrderInfoV2Dto.modify_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'modify_time不能为空',missingMessage:'modify_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.reserved" name="sucOrderInfoV2Dto.reserved" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved不能为空',missingMessage:'reserved不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>ext</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.ext" name="sucOrderInfoV2Dto.ext" class="easyui-validatebox" data-options="required:true,invalidMessage:'ext不能为空',missingMessage:'ext不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>csn</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.csn" name="sucOrderInfoV2Dto.csn" class="easyui-validatebox" data-options="required:true,invalidMessage:'csn不能为空',missingMessage:'csn不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_mer_name</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.trans_mer_name" name="sucOrderInfoV2Dto.trans_mer_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_mer_name不能为空',missingMessage:'trans_mer_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>spid</label></th>
							<td>
								<input type="text" id="sucOrderInfoV2Dto.spid" name="sucOrderInfoV2Dto.spid" class="easyui-validatebox" data-options="required:true,invalidMessage:'spid不能为空',missingMessage:'spid不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>