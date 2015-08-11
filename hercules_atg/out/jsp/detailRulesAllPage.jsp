<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editRulesAllFrom" name="editRulesAllFrom" method="post" action="editRulesAllAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>start_time</label></th>
								<td>
									<input type="text" id="rulesAllDto.start_time" name="rulesAllDto.start_time"  value="${rulesAllDto.start_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>end_time</label></th>
								<td>
									<input type="text" id="rulesAllDto.end_time" name="rulesAllDto.end_time"  value="${rulesAllDto.end_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>tract_night</label></th>
								<td>
									<input type="text" id="rulesAllDto.tract_night" name="rulesAllDto.tract_night"  value="${rulesAllDto.tract_night}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>tract_day</label></th>
								<td>
									<input type="text" id="rulesAllDto.tract_day" name="rulesAllDto.tract_day"  value="${rulesAllDto.tract_day}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>status</label></th>
								<td>
									<input type="text" id="rulesAllDto.status" name="rulesAllDto.status"  value="${rulesAllDto.status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved1</label></th>
								<td>
									<input type="text" id="rulesAllDto.reserved1" name="rulesAllDto.reserved1"  value="${rulesAllDto.reserved1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved2</label></th>
								<td>
									<input type="text" id="rulesAllDto.reserved2" name="rulesAllDto.reserved2"  value="${rulesAllDto.reserved2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved3</label></th>
								<td>
									<input type="text" id="rulesAllDto.reserved3" name="rulesAllDto.reserved3"  value="${rulesAllDto.reserved3}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>