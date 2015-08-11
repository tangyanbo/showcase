<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editMerInfoFrom" name="editMerInfoFrom" method="post" action="editMerInfoAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>mer_name</label></th>
								<td>
									<input type="text" id="merInfoDto.mer_name" name="merInfoDto.mer_name"  value="${merInfoDto.mer_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_reg_no</label></th>
								<td>
									<input type="text" id="merInfoDto.mer_reg_no" name="merInfoDto.mer_reg_no"  value="${merInfoDto.mer_reg_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_tax_no</label></th>
								<td>
									<input type="text" id="merInfoDto.mer_tax_no" name="merInfoDto.mer_tax_no"  value="${merInfoDto.mer_tax_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>organization_code</label></th>
								<td>
									<input type="text" id="merInfoDto.organization_code" name="merInfoDto.organization_code"  value="${merInfoDto.organization_code}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_reg_addr</label></th>
								<td>
									<input type="text" id="merInfoDto.mer_reg_addr" name="merInfoDto.mer_reg_addr"  value="${merInfoDto.mer_reg_addr}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_legal_person</label></th>
								<td>
									<input type="text" id="merInfoDto.mer_legal_person" name="merInfoDto.mer_legal_person"  value="${merInfoDto.mer_legal_person}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_legal_idcard</label></th>
								<td>
									<input type="text" id="merInfoDto.mer_legal_idcard" name="merInfoDto.mer_legal_idcard"  value="${merInfoDto.mer_legal_idcard}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reg_capital</label></th>
								<td>
									<input type="text" id="merInfoDto.reg_capital" name="merInfoDto.reg_capital"  value="${merInfoDto.reg_capital}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_kind</label></th>
								<td>
									<input type="text" id="merInfoDto.mer_kind" name="merInfoDto.mer_kind"  value="${merInfoDto.mer_kind}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>contactor</label></th>
								<td>
									<input type="text" id="merInfoDto.contactor" name="merInfoDto.contactor"  value="${merInfoDto.contactor}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>contactor_phone</label></th>
								<td>
									<input type="text" id="merInfoDto.contactor_phone" name="merInfoDto.contactor_phone"  value="${merInfoDto.contactor_phone}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>contactor_addr</label></th>
								<td>
									<input type="text" id="merInfoDto.contactor_addr" name="merInfoDto.contactor_addr"  value="${merInfoDto.contactor_addr}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>contactor_email</label></th>
								<td>
									<input type="text" id="merInfoDto.contactor_email" name="merInfoDto.contactor_email"  value="${merInfoDto.contactor_email}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sett_account_name</label></th>
								<td>
									<input type="text" id="merInfoDto.sett_account_name" name="merInfoDto.sett_account_name"  value="${merInfoDto.sett_account_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sett_account_no</label></th>
								<td>
									<input type="text" id="merInfoDto.sett_account_no" name="merInfoDto.sett_account_no"  value="${merInfoDto.sett_account_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sett_agency</label></th>
								<td>
									<input type="text" id="merInfoDto.sett_agency" name="merInfoDto.sett_agency"  value="${merInfoDto.sett_agency}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sign_date</label></th>
								<td>
									<input type="text" id="merInfoDto.sign_date" name="merInfoDto.sign_date"  value="${merInfoDto.sign_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sign_person</label></th>
								<td>
									<input type="text" id="merInfoDto.sign_person" name="merInfoDto.sign_person"  value="${merInfoDto.sign_person}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>disp_name</label></th>
								<td>
									<input type="text" id="merInfoDto.disp_name" name="merInfoDto.disp_name"  value="${merInfoDto.disp_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>plat_mer_id</label></th>
								<td>
									<input type="text" id="merInfoDto.plat_mer_id" name="merInfoDto.plat_mer_id"  value="${merInfoDto.plat_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="merInfoDto.create_time" name="merInfoDto.create_time"  value="${merInfoDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>status</label></th>
								<td>
									<input type="text" id="merInfoDto.status" name="merInfoDto.status"  value="${merInfoDto.status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>auth_status</label></th>
								<td>
									<input type="text" id="merInfoDto.auth_status" name="merInfoDto.auth_status"  value="${merInfoDto.auth_status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>logo</label></th>
								<td>
									<input type="text" id="merInfoDto.logo" name="merInfoDto.logo"  value="${merInfoDto.logo}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>color</label></th>
								<td>
									<input type="text" id="merInfoDto.color" name="merInfoDto.color"  value="${merInfoDto.color}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>bill_cycle</label></th>
								<td>
									<input type="text" id="merInfoDto.bill_cycle" name="merInfoDto.bill_cycle"  value="${merInfoDto.bill_cycle}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>remark</label></th>
								<td>
									<input type="text" id="merInfoDto.remark" name="merInfoDto.remark"  value="${merInfoDto.remark}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="merInfoDto.reserved" name="merInfoDto.reserved"  value="${merInfoDto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sett_acc_type</label></th>
								<td>
									<input type="text" id="merInfoDto.sett_acc_type" name="merInfoDto.sett_acc_type"  value="${merInfoDto.sett_acc_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>access_type</label></th>
								<td>
									<input type="text" id="merInfoDto.access_type" name="merInfoDto.access_type"  value="${merInfoDto.access_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_type</label></th>
								<td>
									<input type="text" id="merInfoDto.mer_type" name="merInfoDto.mer_type"  value="${merInfoDto.mer_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>