<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editSubMerInfoFrom" name="editSubMerInfoFrom" method="post" action="editSubMerInfoAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="subMerInfoDto.sub_mer_id" name="subMerInfoDto.sub_mer_id" value="${subMerInfoDto.sub_mer_id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>sub_mer_name</label></th>
									<td>
										<input type="text" id="subMerInfoDto.sub_mer_name" name="subMerInfoDto.sub_mer_name" value="${subMerInfoDto.sub_mer_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'sub_mer_name不能为空',missingMessage:'sub_mer_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>short_name</label></th>
									<td>
										<input type="text" id="subMerInfoDto.short_name" name="subMerInfoDto.short_name" value="${subMerInfoDto.short_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'short_name不能为空',missingMessage:'short_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reg_no</label></th>
									<td>
										<input type="text" id="subMerInfoDto.reg_no" name="subMerInfoDto.reg_no" value="${subMerInfoDto.reg_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reg_no不能为空',missingMessage:'reg_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>tax_no</label></th>
									<td>
										<input type="text" id="subMerInfoDto.tax_no" name="subMerInfoDto.tax_no" value="${subMerInfoDto.tax_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'tax_no不能为空',missingMessage:'tax_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>organization_code</label></th>
									<td>
										<input type="text" id="subMerInfoDto.organization_code" name="subMerInfoDto.organization_code" value="${subMerInfoDto.organization_code}" class="easyui-validatebox" data-options="required:true,invalidMessage:'organization_code不能为空',missingMessage:'organization_code不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reg_addr</label></th>
									<td>
										<input type="text" id="subMerInfoDto.reg_addr" name="subMerInfoDto.reg_addr" value="${subMerInfoDto.reg_addr}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reg_addr不能为空',missingMessage:'reg_addr不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>legal_person</label></th>
									<td>
										<input type="text" id="subMerInfoDto.legal_person" name="subMerInfoDto.legal_person" value="${subMerInfoDto.legal_person}" class="easyui-validatebox" data-options="required:true,invalidMessage:'legal_person不能为空',missingMessage:'legal_person不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>legal_idcard</label></th>
									<td>
										<input type="text" id="subMerInfoDto.legal_idcard" name="subMerInfoDto.legal_idcard" value="${subMerInfoDto.legal_idcard}" class="easyui-validatebox" data-options="required:true,invalidMessage:'legal_idcard不能为空',missingMessage:'legal_idcard不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>mer_kind</label></th>
									<td>
										<input type="text" id="subMerInfoDto.mer_kind" name="subMerInfoDto.mer_kind" value="${subMerInfoDto.mer_kind}" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_kind不能为空',missingMessage:'mer_kind不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>contactor</label></th>
									<td>
										<input type="text" id="subMerInfoDto.contactor" name="subMerInfoDto.contactor" value="${subMerInfoDto.contactor}" class="easyui-validatebox" data-options="required:true,invalidMessage:'contactor不能为空',missingMessage:'contactor不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>contactor_phone</label></th>
									<td>
										<input type="text" id="subMerInfoDto.contactor_phone" name="subMerInfoDto.contactor_phone" value="${subMerInfoDto.contactor_phone}" class="easyui-validatebox" data-options="required:true,invalidMessage:'contactor_phone不能为空',missingMessage:'contactor_phone不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>contactor_addr</label></th>
									<td>
										<input type="text" id="subMerInfoDto.contactor_addr" name="subMerInfoDto.contactor_addr" value="${subMerInfoDto.contactor_addr}" class="easyui-validatebox" data-options="required:true,invalidMessage:'contactor_addr不能为空',missingMessage:'contactor_addr不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>contactor_email</label></th>
									<td>
										<input type="text" id="subMerInfoDto.contactor_email" name="subMerInfoDto.contactor_email" value="${subMerInfoDto.contactor_email}" class="easyui-validatebox" data-options="required:true,invalidMessage:'contactor_email不能为空',missingMessage:'contactor_email不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>sett_account_name</label></th>
									<td>
										<input type="text" id="subMerInfoDto.sett_account_name" name="subMerInfoDto.sett_account_name" value="${subMerInfoDto.sett_account_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'sett_account_name不能为空',missingMessage:'sett_account_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>sett_account_no</label></th>
									<td>
										<input type="text" id="subMerInfoDto.sett_account_no" name="subMerInfoDto.sett_account_no" value="${subMerInfoDto.sett_account_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'sett_account_no不能为空',missingMessage:'sett_account_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>sett_agency</label></th>
									<td>
										<input type="text" id="subMerInfoDto.sett_agency" name="subMerInfoDto.sett_agency" value="${subMerInfoDto.sett_agency}" class="easyui-validatebox" data-options="required:true,invalidMessage:'sett_agency不能为空',missingMessage:'sett_agency不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>mer_sys_id</label></th>
									<td>
										<input type="text" id="subMerInfoDto.mer_sys_id" name="subMerInfoDto.mer_sys_id" value="${subMerInfoDto.mer_sys_id}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_sys_id必须为数字',missingMessage:'mer_sys_id必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>agent_id_l1</label></th>
									<td>
										<input type="text" id="subMerInfoDto.agent_id_l1" name="subMerInfoDto.agent_id_l1" value="${subMerInfoDto.agent_id_l1}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'agent_id_l1必须为数字',missingMessage:'agent_id_l1必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>agent_id_l2</label></th>
									<td>
										<input type="text" id="subMerInfoDto.agent_id_l2" name="subMerInfoDto.agent_id_l2" value="${subMerInfoDto.agent_id_l2}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'agent_id_l2必须为数字',missingMessage:'agent_id_l2必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>mcc</label></th>
									<td>
										<input type="text" id="subMerInfoDto.mcc" name="subMerInfoDto.mcc" value="${subMerInfoDto.mcc}" class="easyui-validatebox" data-options="required:true,invalidMessage:'mcc不能为空',missingMessage:'mcc不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>realmcc</label></th>
									<td>
										<input type="text" id="subMerInfoDto.realmcc" name="subMerInfoDto.realmcc" value="${subMerInfoDto.realmcc}" class="easyui-validatebox" data-options="required:true,invalidMessage:'realmcc不能为空',missingMessage:'realmcc不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>region</label></th>
									<td>
										<input type="text" id="subMerInfoDto.region" name="subMerInfoDto.region" value="${subMerInfoDto.region}" class="easyui-validatebox" data-options="required:true,invalidMessage:'region不能为空',missingMessage:'region不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>bill_cycle</label></th>
									<td>
										<input type="text" id="subMerInfoDto.bill_cycle" name="subMerInfoDto.bill_cycle" value="${subMerInfoDto.bill_cycle}" class="easyui-validatebox" data-options="required:true,invalidMessage:'bill_cycle不能为空',missingMessage:'bill_cycle不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>status</label></th>
									<td>
										<input type="text" id="subMerInfoDto.status" name="subMerInfoDto.status" value="${subMerInfoDto.status}" class="easyui-validatebox" data-options="required:true,invalidMessage:'status不能为空',missingMessage:'status不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>create_time</label></th>
									<td>
										<input type="text" id="subMerInfoDto.create_time" name="subMerInfoDto.create_time" value="${subMerInfoDto.create_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>remark</label></th>
									<td>
										<input type="text" id="subMerInfoDto.remark" name="subMerInfoDto.remark" value="${subMerInfoDto.remark}" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved</label></th>
									<td>
										<input type="text" id="subMerInfoDto.reserved" name="subMerInfoDto.reserved" value="${subMerInfoDto.reserved}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved不能为空',missingMessage:'reserved不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>logo</label></th>
									<td>
										<input type="text" id="subMerInfoDto.logo" name="subMerInfoDto.logo" value="${subMerInfoDto.logo}" class="easyui-validatebox" data-options="required:true,invalidMessage:'logo不能为空',missingMessage:'logo不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>color</label></th>
									<td>
										<input type="text" id="subMerInfoDto.color" name="subMerInfoDto.color" value="${subMerInfoDto.color}" class="easyui-validatebox" data-options="required:true,invalidMessage:'color不能为空',missingMessage:'color不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>sett_acc_type</label></th>
									<td>
										<input type="text" id="subMerInfoDto.sett_acc_type" name="subMerInfoDto.sett_acc_type" value="${subMerInfoDto.sett_acc_type}" class="easyui-validatebox" data-options="required:true,invalidMessage:'sett_acc_type不能为空',missingMessage:'sett_acc_type不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>sub_mer_tract</label></th>
									<td>
										<input type="text" id="subMerInfoDto.sub_mer_tract" name="subMerInfoDto.sub_mer_tract" value="${subMerInfoDto.sub_mer_tract}" class="easyui-validatebox" data-options="required:true,invalidMessage:'sub_mer_tract不能为空',missingMessage:'sub_mer_tract不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>settle_status</label></th>
									<td>
										<input type="text" id="subMerInfoDto.settle_status" name="subMerInfoDto.settle_status" value="${subMerInfoDto.settle_status}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'settle_status必须为数字',missingMessage:'settle_status必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>balance</label></th>
									<td>
										<input type="text" id="subMerInfoDto.balance" name="subMerInfoDto.balance" value="${subMerInfoDto.balance}" class="easyui-validatebox" data-options="required:true,invalidMessage:'balance不能为空',missingMessage:'balance不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>withdrawals</label></th>
									<td>
										<input type="text" id="subMerInfoDto.withdrawals" name="subMerInfoDto.withdrawals" value="${subMerInfoDto.withdrawals}" class="easyui-validatebox" data-options="required:true,invalidMessage:'withdrawals不能为空',missingMessage:'withdrawals不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>is_t0</label></th>
									<td>
										<input type="text" id="subMerInfoDto.is_t0" name="subMerInfoDto.is_t0" value="${subMerInfoDto.is_t0}" class="easyui-validatebox" data-options="required:true,invalidMessage:'is_t0不能为空',missingMessage:'is_t0不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delSubMerInfoFrom" name="delSubMerInfoFrom" method="post" action="delSubMerInfoAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${subMerInfoDto.sub_mer_id}" />
			</form>
		</div>
	</div>
</div>