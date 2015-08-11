<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editSusUniFrom" name="editSusUniFrom" method="post" action="editSusUniAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>count</label></th>
								<td>
									<input type="text" id="susUniDto.count" name="susUniDto.count"  value="${susUniDto.count}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_date</label></th>
								<td>
									<input type="text" id="susUniDto.trans_date" name="susUniDto.trans_date"  value="${susUniDto.trans_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_amt</label></th>
								<td>
									<input type="text" id="susUniDto.trans_amt" name="susUniDto.trans_amt"  value="${susUniDto.trans_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>status</label></th>
								<td>
									<input type="text" id="susUniDto.status" name="susUniDto.status"  value="${susUniDto.status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>order_id</label></th>
								<td>
									<input type="text" id="susUniDto.order_id" name="susUniDto.order_id"  value="${susUniDto.order_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_id</label></th>
								<td>
									<input type="text" id="susUniDto.card_id" name="susUniDto.card_id"  value="${susUniDto.card_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sub_mer_id</label></th>
								<td>
									<input type="text" id="susUniDto.sub_mer_id" name="susUniDto.sub_mer_id"  value="${susUniDto.sub_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_id</label></th>
								<td>
									<input type="text" id="susUniDto.mer_id" name="susUniDto.mer_id"  value="${susUniDto.mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_ord_id</label></th>
								<td>
									<input type="text" id="susUniDto.mer_ord_id" name="susUniDto.mer_ord_id"  value="${susUniDto.mer_ord_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>order_mer_id</label></th>
								<td>
									<input type="text" id="susUniDto.order_mer_id" name="susUniDto.order_mer_id"  value="${susUniDto.order_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>date</label></th>
								<td>
									<input type="text" id="susUniDto.date" name="susUniDto.date"  value="${susUniDto.date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>