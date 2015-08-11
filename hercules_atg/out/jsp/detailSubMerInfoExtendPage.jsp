<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editSubMerInfoExtendFrom" name="editSubMerInfoExtendFrom" method="post" action="editSubMerInfoExtendAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>reg_cap</label></th>
								<td>
									<input type="text" id="subMerInfoExtendDto.reg_cap" name="subMerInfoExtendDto.reg_cap"  value="${subMerInfoExtendDto.reg_cap}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sett_bank_code</label></th>
								<td>
									<input type="text" id="subMerInfoExtendDto.sett_bank_code" name="subMerInfoExtendDto.sett_bank_code"  value="${subMerInfoExtendDto.sett_bank_code}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sett_bank_name</label></th>
								<td>
									<input type="text" id="subMerInfoExtendDto.sett_bank_name" name="subMerInfoExtendDto.sett_bank_name"  value="${subMerInfoExtendDto.sett_bank_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>channel</label></th>
								<td>
									<input type="text" id="subMerInfoExtendDto.channel" name="subMerInfoExtendDto.channel"  value="${subMerInfoExtendDto.channel}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sign_date</label></th>
								<td>
									<input type="text" id="subMerInfoExtendDto.sign_date" name="subMerInfoExtendDto.sign_date"  value="${subMerInfoExtendDto.sign_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sign_person</label></th>
								<td>
									<input type="text" id="subMerInfoExtendDto.sign_person" name="subMerInfoExtendDto.sign_person"  value="${subMerInfoExtendDto.sign_person}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>province</label></th>
								<td>
									<input type="text" id="subMerInfoExtendDto.province" name="subMerInfoExtendDto.province"  value="${subMerInfoExtendDto.province}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>city</label></th>
								<td>
									<input type="text" id="subMerInfoExtendDto.city" name="subMerInfoExtendDto.city"  value="${subMerInfoExtendDto.city}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sett_bank_pro</label></th>
								<td>
									<input type="text" id="subMerInfoExtendDto.sett_bank_pro" name="subMerInfoExtendDto.sett_bank_pro"  value="${subMerInfoExtendDto.sett_bank_pro}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sett_bank_city</label></th>
								<td>
									<input type="text" id="subMerInfoExtendDto.sett_bank_city" name="subMerInfoExtendDto.sett_bank_city"  value="${subMerInfoExtendDto.sett_bank_city}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sett_super_bank_code</label></th>
								<td>
									<input type="text" id="subMerInfoExtendDto.sett_super_bank_code" name="subMerInfoExtendDto.sett_super_bank_code"  value="${subMerInfoExtendDto.sett_super_bank_code}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sett_super_bank_name</label></th>
								<td>
									<input type="text" id="subMerInfoExtendDto.sett_super_bank_name" name="subMerInfoExtendDto.sett_super_bank_name"  value="${subMerInfoExtendDto.sett_super_bank_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>