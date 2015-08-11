<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editSucPayInfoNewFrom" name="editSucPayInfoNewFrom" method="post" action="editSucPayInfoNewAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="sucPayInfoNewDto.order_id" name="sucPayInfoNewDto.order_id" value="${sucPayInfoNewDto.order_id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>trans_mer_id</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.trans_mer_id" name="sucPayInfoNewDto.trans_mer_id" value="${sucPayInfoNewDto.trans_mer_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_mer_id不能为空',missingMessage:'trans_mer_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_ter_id</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.trans_ter_id" name="sucPayInfoNewDto.trans_ter_id" value="${sucPayInfoNewDto.trans_ter_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_ter_id不能为空',missingMessage:'trans_ter_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>channel_type</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.channel_type" name="sucPayInfoNewDto.channel_type" value="${sucPayInfoNewDto.channel_type}" class="easyui-validatebox" data-options="required:true,invalidMessage:'channel_type不能为空',missingMessage:'channel_type不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_amt</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.trans_amt" name="sucPayInfoNewDto.trans_amt" value="${sucPayInfoNewDto.trans_amt}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'trans_amt必须为数字',missingMessage:'trans_amt必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_cur</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.trans_cur" name="sucPayInfoNewDto.trans_cur" value="${sucPayInfoNewDto.trans_cur}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_cur不能为空',missingMessage:'trans_cur不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_time</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.trans_time" name="sucPayInfoNewDto.trans_time" value="${sucPayInfoNewDto.trans_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_time不能为空',missingMessage:'trans_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_status</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.trans_status" name="sucPayInfoNewDto.trans_status" value="${sucPayInfoNewDto.trans_status}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_status不能为空',missingMessage:'trans_status不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_type</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.trans_type" name="sucPayInfoNewDto.trans_type" value="${sucPayInfoNewDto.trans_type}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_type不能为空',missingMessage:'trans_type不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>res_code</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.res_code" name="sucPayInfoNewDto.res_code" value="${sucPayInfoNewDto.res_code}" class="easyui-validatebox" data-options="required:true,invalidMessage:'res_code不能为空',missingMessage:'res_code不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>res_desc</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.res_desc" name="sucPayInfoNewDto.res_desc" value="${sucPayInfoNewDto.res_desc}" class="easyui-validatebox" data-options="required:true,invalidMessage:'res_desc不能为空',missingMessage:'res_desc不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_trace_time</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.trans_trace_time" name="sucPayInfoNewDto.trans_trace_time" value="${sucPayInfoNewDto.trans_trace_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_trace_time不能为空',missingMessage:'trans_trace_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>settle_date</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.settle_date" name="sucPayInfoNewDto.settle_date" value="${sucPayInfoNewDto.settle_date}" class="easyui-validatebox" data-options="required:true,invalidMessage:'settle_date不能为空',missingMessage:'settle_date不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>settle_amt</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.settle_amt" name="sucPayInfoNewDto.settle_amt" value="${sucPayInfoNewDto.settle_amt}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'settle_amt必须为数字',missingMessage:'settle_amt必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>settle_cur</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.settle_cur" name="sucPayInfoNewDto.settle_cur" value="${sucPayInfoNewDto.settle_cur}" class="easyui-validatebox" data-options="required:true,invalidMessage:'settle_cur不能为空',missingMessage:'settle_cur不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>settle_conver_rate</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.settle_conver_rate" name="sucPayInfoNewDto.settle_conver_rate" value="${sucPayInfoNewDto.settle_conver_rate}" class="easyui-validatebox" data-options="required:true,invalidMessage:'settle_conver_rate不能为空',missingMessage:'settle_conver_rate不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>mobile</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.mobile" name="sucPayInfoNewDto.mobile" value="${sucPayInfoNewDto.mobile}" class="easyui-validatebox" data-options="required:true,invalidMessage:'mobile不能为空',missingMessage:'mobile不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>id_type</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.id_type" name="sucPayInfoNewDto.id_type" value="${sucPayInfoNewDto.id_type}" class="easyui-validatebox" data-options="required:true,invalidMessage:'id_type不能为空',missingMessage:'id_type不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>id_no</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.id_no" name="sucPayInfoNewDto.id_no" value="${sucPayInfoNewDto.id_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'id_no不能为空',missingMessage:'id_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>user_name</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.user_name" name="sucPayInfoNewDto.user_name" value="${sucPayInfoNewDto.user_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'user_name不能为空',missingMessage:'user_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>bind_num</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.bind_num" name="sucPayInfoNewDto.bind_num" value="${sucPayInfoNewDto.bind_num}" class="easyui-validatebox" data-options="required:true,invalidMessage:'bind_num不能为空',missingMessage:'bind_num不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>pan</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.pan" name="sucPayInfoNewDto.pan" value="${sucPayInfoNewDto.pan}" class="easyui-validatebox" data-options="required:true,invalidMessage:'pan不能为空',missingMessage:'pan不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>card_type</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.card_type" name="sucPayInfoNewDto.card_type" value="${sucPayInfoNewDto.card_type}" class="easyui-validatebox" data-options="required:true,invalidMessage:'card_type不能为空',missingMessage:'card_type不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>issbank_id</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.issbank_id" name="sucPayInfoNewDto.issbank_id" value="${sucPayInfoNewDto.issbank_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'issbank_id不能为空',missingMessage:'issbank_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>issbank_name</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.issbank_name" name="sucPayInfoNewDto.issbank_name" value="${sucPayInfoNewDto.issbank_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'issbank_name不能为空',missingMessage:'issbank_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>ch_info</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.ch_info" name="sucPayInfoNewDto.ch_info" value="${sucPayInfoNewDto.ch_info}" class="easyui-validatebox" data-options="required:true,invalidMessage:'ch_info不能为空',missingMessage:'ch_info不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>account1</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.account1" name="sucPayInfoNewDto.account1" value="${sucPayInfoNewDto.account1}" class="easyui-validatebox" data-options="required:true,invalidMessage:'account1不能为空',missingMessage:'account1不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>account2</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.account2" name="sucPayInfoNewDto.account2" value="${sucPayInfoNewDto.account2}" class="easyui-validatebox" data-options="required:true,invalidMessage:'account2不能为空',missingMessage:'account2不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>org_order_id</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.org_order_id" name="sucPayInfoNewDto.org_order_id" value="${sucPayInfoNewDto.org_order_id}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'org_order_id必须为数字',missingMessage:'org_order_id必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>create_time</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.create_time" name="sucPayInfoNewDto.create_time" value="${sucPayInfoNewDto.create_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>modify_time</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.modify_time" name="sucPayInfoNewDto.modify_time" value="${sucPayInfoNewDto.modify_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'modify_time不能为空',missingMessage:'modify_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.reserved" name="sucPayInfoNewDto.reserved" value="${sucPayInfoNewDto.reserved}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved不能为空',missingMessage:'reserved不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>ext</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.ext" name="sucPayInfoNewDto.ext" value="${sucPayInfoNewDto.ext}" class="easyui-validatebox" data-options="required:true,invalidMessage:'ext不能为空',missingMessage:'ext不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>csn</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.csn" name="sucPayInfoNewDto.csn" value="${sucPayInfoNewDto.csn}" class="easyui-validatebox" data-options="required:true,invalidMessage:'csn不能为空',missingMessage:'csn不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_mer_name</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.trans_mer_name" name="sucPayInfoNewDto.trans_mer_name" value="${sucPayInfoNewDto.trans_mer_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_mer_name不能为空',missingMessage:'trans_mer_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>spid</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.spid" name="sucPayInfoNewDto.spid" value="${sucPayInfoNewDto.spid}" class="easyui-validatebox" data-options="required:true,invalidMessage:'spid不能为空',missingMessage:'spid不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>track2_data</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.track2_data" name="sucPayInfoNewDto.track2_data" value="${sucPayInfoNewDto.track2_data}" class="easyui-validatebox" data-options="required:true,invalidMessage:'track2_data不能为空',missingMessage:'track2_data不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>track3_data</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.track3_data" name="sucPayInfoNewDto.track3_data" value="${sucPayInfoNewDto.track3_data}" class="easyui-validatebox" data-options="required:true,invalidMessage:'track3_data不能为空',missingMessage:'track3_data不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>ip</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.ip" name="sucPayInfoNewDto.ip" value="${sucPayInfoNewDto.ip}" class="easyui-validatebox" data-options="required:true,invalidMessage:'ip不能为空',missingMessage:'ip不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reference_no</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.reference_no" name="sucPayInfoNewDto.reference_no" value="${sucPayInfoNewDto.reference_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reference_no不能为空',missingMessage:'reference_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>auth_no</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.auth_no" name="sucPayInfoNewDto.auth_no" value="${sucPayInfoNewDto.auth_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'auth_no不能为空',missingMessage:'auth_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>date_transaction</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.date_transaction" name="sucPayInfoNewDto.date_transaction" value="${sucPayInfoNewDto.date_transaction}" class="easyui-validatebox" data-options="required:true,invalidMessage:'date_transaction不能为空',missingMessage:'date_transaction不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>time_transaction</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.time_transaction" name="sucPayInfoNewDto.time_transaction" value="${sucPayInfoNewDto.time_transaction}" class="easyui-validatebox" data-options="required:true,invalidMessage:'time_transaction不能为空',missingMessage:'time_transaction不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>tracking_no</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.tracking_no" name="sucPayInfoNewDto.tracking_no" value="${sucPayInfoNewDto.tracking_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'tracking_no不能为空',missingMessage:'tracking_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>account2_name</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.account2_name" name="sucPayInfoNewDto.account2_name" value="${sucPayInfoNewDto.account2_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'account2_name不能为空',missingMessage:'account2_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>batch_no</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.batch_no" name="sucPayInfoNewDto.batch_no" value="${sucPayInfoNewDto.batch_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'batch_no不能为空',missingMessage:'batch_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>ext1</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.ext1" name="sucPayInfoNewDto.ext1" value="${sucPayInfoNewDto.ext1}" class="easyui-validatebox" data-options="required:true,invalidMessage:'ext1不能为空',missingMessage:'ext1不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>ext2</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.ext2" name="sucPayInfoNewDto.ext2" value="${sucPayInfoNewDto.ext2}" class="easyui-validatebox" data-options="required:true,invalidMessage:'ext2不能为空',missingMessage:'ext2不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>ext3</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.ext3" name="sucPayInfoNewDto.ext3" value="${sucPayInfoNewDto.ext3}" class="easyui-validatebox" data-options="required:true,invalidMessage:'ext3不能为空',missingMessage:'ext3不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>create_date</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.create_date" name="sucPayInfoNewDto.create_date" value="${sucPayInfoNewDto.create_date}" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_date不能为空',missingMessage:'create_date不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>modify_date</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.modify_date" name="sucPayInfoNewDto.modify_date" value="${sucPayInfoNewDto.modify_date}" class="easyui-validatebox" data-options="required:true,invalidMessage:'modify_date不能为空',missingMessage:'modify_date不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>entry_mode</label></th>
									<td>
										<input type="text" id="sucPayInfoNewDto.entry_mode" name="sucPayInfoNewDto.entry_mode" value="${sucPayInfoNewDto.entry_mode}" class="easyui-validatebox" data-options="required:true,invalidMessage:'entry_mode不能为空',missingMessage:'entry_mode不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delSucPayInfoNewFrom" name="delSucPayInfoNewFrom" method="post" action="delSucPayInfoNewAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${sucPayInfoNewDto.order_id}" />
			</form>
		</div>
	</div>
</div>