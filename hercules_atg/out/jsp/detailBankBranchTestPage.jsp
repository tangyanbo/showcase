<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editBankBranchTestFrom" name="editBankBranchTestFrom" method="post" action="editBankBranchTestAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>bank_code</label></th>
								<td>
									<input type="text" id="bankBranchTestDto.bank_code" name="bankBranchTestDto.bank_code"  value="${bankBranchTestDto.bank_code}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>bank_name</label></th>
								<td>
									<input type="text" id="bankBranchTestDto.bank_name" name="bankBranchTestDto.bank_name"  value="${bankBranchTestDto.bank_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>level</label></th>
								<td>
									<input type="text" id="bankBranchTestDto.level" name="bankBranchTestDto.level"  value="${bankBranchTestDto.level}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>super_code</label></th>
								<td>
									<input type="text" id="bankBranchTestDto.super_code" name="bankBranchTestDto.super_code"  value="${bankBranchTestDto.super_code}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>citycode</label></th>
								<td>
									<input type="text" id="bankBranchTestDto.citycode" name="bankBranchTestDto.citycode"  value="${bankBranchTestDto.citycode}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>