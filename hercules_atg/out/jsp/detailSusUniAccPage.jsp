<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editSusUniAccFrom" name="editSusUniAccFrom" method="post" action="editSusUniAccAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>count</label></th>
								<td>
									<input type="text" id="susUniAccDto.count" name="susUniAccDto.count"  value="${susUniAccDto.count}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_date</label></th>
								<td>
									<input type="text" id="susUniAccDto.trans_date" name="susUniAccDto.trans_date"  value="${susUniAccDto.trans_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_amt</label></th>
								<td>
									<input type="text" id="susUniAccDto.trans_amt" name="susUniAccDto.trans_amt"  value="${susUniAccDto.trans_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>status</label></th>
								<td>
									<input type="text" id="susUniAccDto.status" name="susUniAccDto.status"  value="${susUniAccDto.status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>order_id</label></th>
								<td>
									<input type="text" id="susUniAccDto.order_id" name="susUniAccDto.order_id"  value="${susUniAccDto.order_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_id</label></th>
								<td>
									<input type="text" id="susUniAccDto.card_id" name="susUniAccDto.card_id"  value="${susUniAccDto.card_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sub_mer_id</label></th>
								<td>
									<input type="text" id="susUniAccDto.sub_mer_id" name="susUniAccDto.sub_mer_id"  value="${susUniAccDto.sub_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_id</label></th>
								<td>
									<input type="text" id="susUniAccDto.mer_id" name="susUniAccDto.mer_id"  value="${susUniAccDto.mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_ord_id</label></th>
								<td>
									<input type="text" id="susUniAccDto.mer_ord_id" name="susUniAccDto.mer_ord_id"  value="${susUniAccDto.mer_ord_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>order_mer_id</label></th>
								<td>
									<input type="text" id="susUniAccDto.order_mer_id" name="susUniAccDto.order_mer_id"  value="${susUniAccDto.order_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>date</label></th>
								<td>
									<input type="text" id="susUniAccDto.date" name="susUniAccDto.date"  value="${susUniAccDto.date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sys_ref_num</label></th>
								<td>
									<input type="text" id="susUniAccDto.sys_ref_num" name="susUniAccDto.sys_ref_num"  value="${susUniAccDto.sys_ref_num}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sys_tra_num</label></th>
								<td>
									<input type="text" id="susUniAccDto.sys_tra_num" name="susUniAccDto.sys_tra_num"  value="${susUniAccDto.sys_tra_num}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_id_1</label></th>
								<td>
									<input type="text" id="susUniAccDto.card_id_1" name="susUniAccDto.card_id_1"  value="${susUniAccDto.card_id_1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>return_code</label></th>
								<td>
									<input type="text" id="susUniAccDto.return_code" name="susUniAccDto.return_code"  value="${susUniAccDto.return_code}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_type</label></th>
								<td>
									<input type="text" id="susUniAccDto.trans_type" name="susUniAccDto.trans_type"  value="${susUniAccDto.trans_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>