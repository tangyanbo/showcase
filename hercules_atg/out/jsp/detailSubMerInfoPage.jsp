<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editSubMerInfoFrom" name="editSubMerInfoFrom" method="post" action="editSubMerInfoAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>sub_mer_name</label></th>
								<td>
									<input type="text" id="subMerInfoDto.sub_mer_name" name="subMerInfoDto.sub_mer_name"  value="${subMerInfoDto.sub_mer_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>short_name</label></th>
								<td>
									<input type="text" id="subMerInfoDto.short_name" name="subMerInfoDto.short_name"  value="${subMerInfoDto.short_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reg_no</label></th>
								<td>
									<input type="text" id="subMerInfoDto.reg_no" name="subMerInfoDto.reg_no"  value="${subMerInfoDto.reg_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>tax_no</label></th>
								<td>
									<input type="text" id="subMerInfoDto.tax_no" name="subMerInfoDto.tax_no"  value="${subMerInfoDto.tax_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>organization_code</label></th>
								<td>
									<input type="text" id="subMerInfoDto.organization_code" name="subMerInfoDto.organization_code"  value="${subMerInfoDto.organization_code}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reg_addr</label></th>
								<td>
									<input type="text" id="subMerInfoDto.reg_addr" name="subMerInfoDto.reg_addr"  value="${subMerInfoDto.reg_addr}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>legal_person</label></th>
								<td>
									<input type="text" id="subMerInfoDto.legal_person" name="subMerInfoDto.legal_person"  value="${subMerInfoDto.legal_person}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>legal_idcard</label></th>
								<td>
									<input type="text" id="subMerInfoDto.legal_idcard" name="subMerInfoDto.legal_idcard"  value="${subMerInfoDto.legal_idcard}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_kind</label></th>
								<td>
									<input type="text" id="subMerInfoDto.mer_kind" name="subMerInfoDto.mer_kind"  value="${subMerInfoDto.mer_kind}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>contactor</label></th>
								<td>
									<input type="text" id="subMerInfoDto.contactor" name="subMerInfoDto.contactor"  value="${subMerInfoDto.contactor}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>contactor_phone</label></th>
								<td>
									<input type="text" id="subMerInfoDto.contactor_phone" name="subMerInfoDto.contactor_phone"  value="${subMerInfoDto.contactor_phone}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>contactor_addr</label></th>
								<td>
									<input type="text" id="subMerInfoDto.contactor_addr" name="subMerInfoDto.contactor_addr"  value="${subMerInfoDto.contactor_addr}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>contactor_email</label></th>
								<td>
									<input type="text" id="subMerInfoDto.contactor_email" name="subMerInfoDto.contactor_email"  value="${subMerInfoDto.contactor_email}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sett_account_name</label></th>
								<td>
									<input type="text" id="subMerInfoDto.sett_account_name" name="subMerInfoDto.sett_account_name"  value="${subMerInfoDto.sett_account_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sett_account_no</label></th>
								<td>
									<input type="text" id="subMerInfoDto.sett_account_no" name="subMerInfoDto.sett_account_no"  value="${subMerInfoDto.sett_account_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sett_agency</label></th>
								<td>
									<input type="text" id="subMerInfoDto.sett_agency" name="subMerInfoDto.sett_agency"  value="${subMerInfoDto.sett_agency}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_sys_id</label></th>
								<td>
									<input type="text" id="subMerInfoDto.mer_sys_id" name="subMerInfoDto.mer_sys_id"  value="${subMerInfoDto.mer_sys_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>agent_id_l1</label></th>
								<td>
									<input type="text" id="subMerInfoDto.agent_id_l1" name="subMerInfoDto.agent_id_l1"  value="${subMerInfoDto.agent_id_l1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>agent_id_l2</label></th>
								<td>
									<input type="text" id="subMerInfoDto.agent_id_l2" name="subMerInfoDto.agent_id_l2"  value="${subMerInfoDto.agent_id_l2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mcc</label></th>
								<td>
									<input type="text" id="subMerInfoDto.mcc" name="subMerInfoDto.mcc"  value="${subMerInfoDto.mcc}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>realmcc</label></th>
								<td>
									<input type="text" id="subMerInfoDto.realmcc" name="subMerInfoDto.realmcc"  value="${subMerInfoDto.realmcc}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>region</label></th>
								<td>
									<input type="text" id="subMerInfoDto.region" name="subMerInfoDto.region"  value="${subMerInfoDto.region}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>bill_cycle</label></th>
								<td>
									<input type="text" id="subMerInfoDto.bill_cycle" name="subMerInfoDto.bill_cycle"  value="${subMerInfoDto.bill_cycle}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>status</label></th>
								<td>
									<input type="text" id="subMerInfoDto.status" name="subMerInfoDto.status"  value="${subMerInfoDto.status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="subMerInfoDto.create_time" name="subMerInfoDto.create_time"  value="${subMerInfoDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>remark</label></th>
								<td>
									<input type="text" id="subMerInfoDto.remark" name="subMerInfoDto.remark"  value="${subMerInfoDto.remark}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="subMerInfoDto.reserved" name="subMerInfoDto.reserved"  value="${subMerInfoDto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>logo</label></th>
								<td>
									<input type="text" id="subMerInfoDto.logo" name="subMerInfoDto.logo"  value="${subMerInfoDto.logo}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>color</label></th>
								<td>
									<input type="text" id="subMerInfoDto.color" name="subMerInfoDto.color"  value="${subMerInfoDto.color}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sett_acc_type</label></th>
								<td>
									<input type="text" id="subMerInfoDto.sett_acc_type" name="subMerInfoDto.sett_acc_type"  value="${subMerInfoDto.sett_acc_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sub_mer_tract</label></th>
								<td>
									<input type="text" id="subMerInfoDto.sub_mer_tract" name="subMerInfoDto.sub_mer_tract"  value="${subMerInfoDto.sub_mer_tract}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_status</label></th>
								<td>
									<input type="text" id="subMerInfoDto.settle_status" name="subMerInfoDto.settle_status"  value="${subMerInfoDto.settle_status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>balance</label></th>
								<td>
									<input type="text" id="subMerInfoDto.balance" name="subMerInfoDto.balance"  value="${subMerInfoDto.balance}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>withdrawals</label></th>
								<td>
									<input type="text" id="subMerInfoDto.withdrawals" name="subMerInfoDto.withdrawals"  value="${subMerInfoDto.withdrawals}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>is_t0</label></th>
								<td>
									<input type="text" id="subMerInfoDto.is_t0" name="subMerInfoDto.is_t0"  value="${subMerInfoDto.is_t0}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>