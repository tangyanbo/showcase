<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editRulesMerAmtFrom" name="editRulesMerAmtFrom" method="post" action="editRulesMerAmtAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>mer_sys_id</label></th>
								<td>
									<input type="text" id="rulesMerAmtDto.mer_sys_id" name="rulesMerAmtDto.mer_sys_id"  value="${rulesMerAmtDto.mer_sys_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>start_amt</label></th>
								<td>
									<input type="text" id="rulesMerAmtDto.start_amt" name="rulesMerAmtDto.start_amt"  value="${rulesMerAmtDto.start_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>end_amt</label></th>
								<td>
									<input type="text" id="rulesMerAmtDto.end_amt" name="rulesMerAmtDto.end_amt"  value="${rulesMerAmtDto.end_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>tract_id</label></th>
								<td>
									<input type="text" id="rulesMerAmtDto.tract_id" name="rulesMerAmtDto.tract_id"  value="${rulesMerAmtDto.tract_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved1</label></th>
								<td>
									<input type="text" id="rulesMerAmtDto.reserved1" name="rulesMerAmtDto.reserved1"  value="${rulesMerAmtDto.reserved1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved2</label></th>
								<td>
									<input type="text" id="rulesMerAmtDto.reserved2" name="rulesMerAmtDto.reserved2"  value="${rulesMerAmtDto.reserved2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved3</label></th>
								<td>
									<input type="text" id="rulesMerAmtDto.reserved3" name="rulesMerAmtDto.reserved3"  value="${rulesMerAmtDto.reserved3}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>