<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editPayInfoFrom" name="editPayInfoFrom" method="post" action="editPayInfoAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="payInfoDto.order_id" name="payInfoDto.order_id" value="${payInfoDto.order_id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>trans_mer_id</label></th>
									<td>
										<input type="text" id="payInfoDto.trans_mer_id" name="payInfoDto.trans_mer_id" value="${payInfoDto.trans_mer_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_mer_id不能为空',missingMessage:'trans_mer_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_ter_id</label></th>
									<td>
										<input type="text" id="payInfoDto.trans_ter_id" name="payInfoDto.trans_ter_id" value="${payInfoDto.trans_ter_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_ter_id不能为空',missingMessage:'trans_ter_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>channel_type</label></th>
									<td>
										<input type="text" id="payInfoDto.channel_type" name="payInfoDto.channel_type" value="${payInfoDto.channel_type}" class="easyui-validatebox" data-options="required:true,invalidMessage:'channel_type不能为空',missingMessage:'channel_type不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_amt</label></th>
									<td>
										<input type="text" id="payInfoDto.trans_amt" name="payInfoDto.trans_amt" value="${payInfoDto.trans_amt}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'trans_amt必须为数字',missingMessage:'trans_amt必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_cur</label></th>
									<td>
										<input type="text" id="payInfoDto.trans_cur" name="payInfoDto.trans_cur" value="${payInfoDto.trans_cur}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_cur不能为空',missingMessage:'trans_cur不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_time</label></th>
									<td>
										<input type="text" id="payInfoDto.trans_time" name="payInfoDto.trans_time" value="${payInfoDto.trans_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_time不能为空',missingMessage:'trans_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_status</label></th>
									<td>
										<input type="text" id="payInfoDto.trans_status" name="payInfoDto.trans_status" value="${payInfoDto.trans_status}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_status不能为空',missingMessage:'trans_status不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_type</label></th>
									<td>
										<input type="text" id="payInfoDto.trans_type" name="payInfoDto.trans_type" value="${payInfoDto.trans_type}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_type不能为空',missingMessage:'trans_type不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>res_code</label></th>
									<td>
										<input type="text" id="payInfoDto.res_code" name="payInfoDto.res_code" value="${payInfoDto.res_code}" class="easyui-validatebox" data-options="required:true,invalidMessage:'res_code不能为空',missingMessage:'res_code不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>res_desc</label></th>
									<td>
										<input type="text" id="payInfoDto.res_desc" name="payInfoDto.res_desc" value="${payInfoDto.res_desc}" class="easyui-validatebox" data-options="required:true,invalidMessage:'res_desc不能为空',missingMessage:'res_desc不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>settle_date</label></th>
									<td>
										<input type="text" id="payInfoDto.settle_date" name="payInfoDto.settle_date" value="${payInfoDto.settle_date}" class="easyui-validatebox" data-options="required:true,invalidMessage:'settle_date不能为空',missingMessage:'settle_date不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>settle_cur</label></th>
									<td>
										<input type="text" id="payInfoDto.settle_cur" name="payInfoDto.settle_cur" value="${payInfoDto.settle_cur}" class="easyui-validatebox" data-options="required:true,invalidMessage:'settle_cur不能为空',missingMessage:'settle_cur不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>id_no</label></th>
									<td>
										<input type="text" id="payInfoDto.id_no" name="payInfoDto.id_no" value="${payInfoDto.id_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'id_no不能为空',missingMessage:'id_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>user_name</label></th>
									<td>
										<input type="text" id="payInfoDto.user_name" name="payInfoDto.user_name" value="${payInfoDto.user_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'user_name不能为空',missingMessage:'user_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>pan</label></th>
									<td>
										<input type="text" id="payInfoDto.pan" name="payInfoDto.pan" value="${payInfoDto.pan}" class="easyui-validatebox" data-options="required:true,invalidMessage:'pan不能为空',missingMessage:'pan不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>card_type</label></th>
									<td>
										<input type="text" id="payInfoDto.card_type" name="payInfoDto.card_type" value="${payInfoDto.card_type}" class="easyui-validatebox" data-options="required:true,invalidMessage:'card_type不能为空',missingMessage:'card_type不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>account2</label></th>
									<td>
										<input type="text" id="payInfoDto.account2" name="payInfoDto.account2" value="${payInfoDto.account2}" class="easyui-validatebox" data-options="required:true,invalidMessage:'account2不能为空',missingMessage:'account2不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>org_order_id</label></th>
									<td>
										<input type="text" id="payInfoDto.org_order_id" name="payInfoDto.org_order_id" value="${payInfoDto.org_order_id}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'org_order_id必须为数字',missingMessage:'org_order_id必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>create_time</label></th>
									<td>
										<input type="text" id="payInfoDto.create_time" name="payInfoDto.create_time" value="${payInfoDto.create_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>modify_time</label></th>
									<td>
										<input type="text" id="payInfoDto.modify_time" name="payInfoDto.modify_time" value="${payInfoDto.modify_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'modify_time不能为空',missingMessage:'modify_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved</label></th>
									<td>
										<input type="text" id="payInfoDto.reserved" name="payInfoDto.reserved" value="${payInfoDto.reserved}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved不能为空',missingMessage:'reserved不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>ext</label></th>
									<td>
										<input type="text" id="payInfoDto.ext" name="payInfoDto.ext" value="${payInfoDto.ext}" class="easyui-validatebox" data-options="required:true,invalidMessage:'ext不能为空',missingMessage:'ext不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>csn</label></th>
									<td>
										<input type="text" id="payInfoDto.csn" name="payInfoDto.csn" value="${payInfoDto.csn}" class="easyui-validatebox" data-options="required:true,invalidMessage:'csn不能为空',missingMessage:'csn不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_mer_name</label></th>
									<td>
										<input type="text" id="payInfoDto.trans_mer_name" name="payInfoDto.trans_mer_name" value="${payInfoDto.trans_mer_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_mer_name不能为空',missingMessage:'trans_mer_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>spid</label></th>
									<td>
										<input type="text" id="payInfoDto.spid" name="payInfoDto.spid" value="${payInfoDto.spid}" class="easyui-validatebox" data-options="required:true,invalidMessage:'spid不能为空',missingMessage:'spid不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>ip</label></th>
									<td>
										<input type="text" id="payInfoDto.ip" name="payInfoDto.ip" value="${payInfoDto.ip}" class="easyui-validatebox" data-options="required:true,invalidMessage:'ip不能为空',missingMessage:'ip不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reference_no</label></th>
									<td>
										<input type="text" id="payInfoDto.reference_no" name="payInfoDto.reference_no" value="${payInfoDto.reference_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reference_no不能为空',missingMessage:'reference_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>auth_no</label></th>
									<td>
										<input type="text" id="payInfoDto.auth_no" name="payInfoDto.auth_no" value="${payInfoDto.auth_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'auth_no不能为空',missingMessage:'auth_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>tracking_no</label></th>
									<td>
										<input type="text" id="payInfoDto.tracking_no" name="payInfoDto.tracking_no" value="${payInfoDto.tracking_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'tracking_no不能为空',missingMessage:'tracking_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>account2_name</label></th>
									<td>
										<input type="text" id="payInfoDto.account2_name" name="payInfoDto.account2_name" value="${payInfoDto.account2_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'account2_name不能为空',missingMessage:'account2_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>batch_no</label></th>
									<td>
										<input type="text" id="payInfoDto.batch_no" name="payInfoDto.batch_no" value="${payInfoDto.batch_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'batch_no不能为空',missingMessage:'batch_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>ext1</label></th>
									<td>
										<input type="text" id="payInfoDto.ext1" name="payInfoDto.ext1" value="${payInfoDto.ext1}" class="easyui-validatebox" data-options="required:true,invalidMessage:'ext1不能为空',missingMessage:'ext1不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>ext2</label></th>
									<td>
										<input type="text" id="payInfoDto.ext2" name="payInfoDto.ext2" value="${payInfoDto.ext2}" class="easyui-validatebox" data-options="required:true,invalidMessage:'ext2不能为空',missingMessage:'ext2不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>ext3</label></th>
									<td>
										<input type="text" id="payInfoDto.ext3" name="payInfoDto.ext3" value="${payInfoDto.ext3}" class="easyui-validatebox" data-options="required:true,invalidMessage:'ext3不能为空',missingMessage:'ext3不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>create_date</label></th>
									<td>
										<input type="text" id="payInfoDto.create_date" name="payInfoDto.create_date" value="${payInfoDto.create_date}" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_date不能为空',missingMessage:'create_date不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>entry_mode</label></th>
									<td>
										<input type="text" id="payInfoDto.entry_mode" name="payInfoDto.entry_mode" value="${payInfoDto.entry_mode}" class="easyui-validatebox" data-options="required:true,invalidMessage:'entry_mode不能为空',missingMessage:'entry_mode不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delPayInfoFrom" name="delPayInfoFrom" method="post" action="delPayInfoAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${payInfoDto.order_id}" />
			</form>
		</div>
	</div>
</div>