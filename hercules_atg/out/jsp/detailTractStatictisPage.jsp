<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editTractStatictisFrom" name="editTractStatictisFrom" method="post" action="editTractStatictisAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>tract_id</label></th>
								<td>
									<input type="text" id="tractStatictisDto.tract_id" name="tractStatictisDto.tract_id"  value="${tractStatictisDto.tract_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>statictis_date</label></th>
								<td>
									<input type="text" id="tractStatictisDto.statictis_date" name="tractStatictisDto.statictis_date"  value="${tractStatictisDto.statictis_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>pay_amt</label></th>
								<td>
									<input type="text" id="tractStatictisDto.pay_amt" name="tractStatictisDto.pay_amt"  value="${tractStatictisDto.pay_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>refund_amt</label></th>
								<td>
									<input type="text" id="tractStatictisDto.refund_amt" name="tractStatictisDto.refund_amt"  value="${tractStatictisDto.refund_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>use_amt</label></th>
								<td>
									<input type="text" id="tractStatictisDto.use_amt" name="tractStatictisDto.use_amt"  value="${tractStatictisDto.use_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved1</label></th>
								<td>
									<input type="text" id="tractStatictisDto.reserved1" name="tractStatictisDto.reserved1"  value="${tractStatictisDto.reserved1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved2</label></th>
								<td>
									<input type="text" id="tractStatictisDto.reserved2" name="tractStatictisDto.reserved2"  value="${tractStatictisDto.reserved2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved3</label></th>
								<td>
									<input type="text" id="tractStatictisDto.reserved3" name="tractStatictisDto.reserved3"  value="${tractStatictisDto.reserved3}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>