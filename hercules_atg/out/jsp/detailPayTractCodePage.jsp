<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editPayTractCodeFrom" name="editPayTractCodeFrom" method="post" action="editPayTractCodeAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>pay_tract_name</label></th>
								<td>
									<input type="text" id="payTractCodeDto.pay_tract_name" name="payTractCodeDto.pay_tract_name"  value="${payTractCodeDto.pay_tract_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>pay_tract_id</label></th>
								<td>
									<input type="text" id="payTractCodeDto.pay_tract_id" name="payTractCodeDto.pay_tract_id"  value="${payTractCodeDto.pay_tract_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved1</label></th>
								<td>
									<input type="text" id="payTractCodeDto.reserved1" name="payTractCodeDto.reserved1"  value="${payTractCodeDto.reserved1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved2</label></th>
								<td>
									<input type="text" id="payTractCodeDto.reserved2" name="payTractCodeDto.reserved2"  value="${payTractCodeDto.reserved2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved3</label></th>
								<td>
									<input type="text" id="payTractCodeDto.reserved3" name="payTractCodeDto.reserved3"  value="${payTractCodeDto.reserved3}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>remark</label></th>
								<td>
									<input type="text" id="payTractCodeDto.remark" name="payTractCodeDto.remark"  value="${payTractCodeDto.remark}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>