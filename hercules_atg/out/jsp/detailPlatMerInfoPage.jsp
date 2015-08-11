<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editPlatMerInfoFrom" name="editPlatMerInfoFrom" method="post" action="editPlatMerInfoAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>plat_mer_name</label></th>
								<td>
									<input type="text" id="platMerInfoDto.plat_mer_name" name="platMerInfoDto.plat_mer_name"  value="${platMerInfoDto.plat_mer_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_reg_no</label></th>
								<td>
									<input type="text" id="platMerInfoDto.mer_reg_no" name="platMerInfoDto.mer_reg_no"  value="${platMerInfoDto.mer_reg_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_tax_no</label></th>
								<td>
									<input type="text" id="platMerInfoDto.mer_tax_no" name="platMerInfoDto.mer_tax_no"  value="${platMerInfoDto.mer_tax_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>legal_person</label></th>
								<td>
									<input type="text" id="platMerInfoDto.legal_person" name="platMerInfoDto.legal_person"  value="${platMerInfoDto.legal_person}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>legal_idcard</label></th>
								<td>
									<input type="text" id="platMerInfoDto.legal_idcard" name="platMerInfoDto.legal_idcard"  value="${platMerInfoDto.legal_idcard}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>contactor</label></th>
								<td>
									<input type="text" id="platMerInfoDto.contactor" name="platMerInfoDto.contactor"  value="${platMerInfoDto.contactor}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>contact_phone</label></th>
								<td>
									<input type="text" id="platMerInfoDto.contact_phone" name="platMerInfoDto.contact_phone"  value="${platMerInfoDto.contact_phone}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>contact_email</label></th>
								<td>
									<input type="text" id="platMerInfoDto.contact_email" name="platMerInfoDto.contact_email"  value="${platMerInfoDto.contact_email}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>contact_addr</label></th>
								<td>
									<input type="text" id="platMerInfoDto.contact_addr" name="platMerInfoDto.contact_addr"  value="${platMerInfoDto.contact_addr}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="platMerInfoDto.create_time" name="platMerInfoDto.create_time"  value="${platMerInfoDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>status</label></th>
								<td>
									<input type="text" id="platMerInfoDto.status" name="platMerInfoDto.status"  value="${platMerInfoDto.status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>remark</label></th>
								<td>
									<input type="text" id="platMerInfoDto.remark" name="platMerInfoDto.remark"  value="${platMerInfoDto.remark}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="platMerInfoDto.reserved" name="platMerInfoDto.reserved"  value="${platMerInfoDto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>logo</label></th>
								<td>
									<input type="text" id="platMerInfoDto.logo" name="platMerInfoDto.logo"  value="${platMerInfoDto.logo}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>color</label></th>
								<td>
									<input type="text" id="platMerInfoDto.color" name="platMerInfoDto.color"  value="${platMerInfoDto.color}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>