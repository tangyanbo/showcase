<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editUnilateralOrderInfoFrom" name="editUnilateralOrderInfoFrom" method="post" action="editUnilateralOrderInfoAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>trans_date</label></th>
								<td>
									<input type="text" id="unilateralOrderInfoDto.trans_date" name="unilateralOrderInfoDto.trans_date"  value="${unilateralOrderInfoDto.trans_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_amt</label></th>
								<td>
									<input type="text" id="unilateralOrderInfoDto.trans_amt" name="unilateralOrderInfoDto.trans_amt"  value="${unilateralOrderInfoDto.trans_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>order_id</label></th>
								<td>
									<input type="text" id="unilateralOrderInfoDto.order_id" name="unilateralOrderInfoDto.order_id"  value="${unilateralOrderInfoDto.order_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_id</label></th>
								<td>
									<input type="text" id="unilateralOrderInfoDto.card_id" name="unilateralOrderInfoDto.card_id"  value="${unilateralOrderInfoDto.card_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sub_mer_id</label></th>
								<td>
									<input type="text" id="unilateralOrderInfoDto.sub_mer_id" name="unilateralOrderInfoDto.sub_mer_id"  value="${unilateralOrderInfoDto.sub_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_sys_id</label></th>
								<td>
									<input type="text" id="unilateralOrderInfoDto.mer_sys_id" name="unilateralOrderInfoDto.mer_sys_id"  value="${unilateralOrderInfoDto.mer_sys_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_ord_id</label></th>
								<td>
									<input type="text" id="unilateralOrderInfoDto.mer_ord_id" name="unilateralOrderInfoDto.mer_ord_id"  value="${unilateralOrderInfoDto.mer_ord_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_mer_id</label></th>
								<td>
									<input type="text" id="unilateralOrderInfoDto.trans_mer_id" name="unilateralOrderInfoDto.trans_mer_id"  value="${unilateralOrderInfoDto.trans_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>date</label></th>
								<td>
									<input type="text" id="unilateralOrderInfoDto.date" name="unilateralOrderInfoDto.date"  value="${unilateralOrderInfoDto.date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sys_ref_num</label></th>
								<td>
									<input type="text" id="unilateralOrderInfoDto.sys_ref_num" name="unilateralOrderInfoDto.sys_ref_num"  value="${unilateralOrderInfoDto.sys_ref_num}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sys_tra_num</label></th>
								<td>
									<input type="text" id="unilateralOrderInfoDto.sys_tra_num" name="unilateralOrderInfoDto.sys_tra_num"  value="${unilateralOrderInfoDto.sys_tra_num}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>return_code</label></th>
								<td>
									<input type="text" id="unilateralOrderInfoDto.return_code" name="unilateralOrderInfoDto.return_code"  value="${unilateralOrderInfoDto.return_code}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_type</label></th>
								<td>
									<input type="text" id="unilateralOrderInfoDto.trans_type" name="unilateralOrderInfoDto.trans_type"  value="${unilateralOrderInfoDto.trans_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved1</label></th>
								<td>
									<input type="text" id="unilateralOrderInfoDto.reserved1" name="unilateralOrderInfoDto.reserved1"  value="${unilateralOrderInfoDto.reserved1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved2</label></th>
								<td>
									<input type="text" id="unilateralOrderInfoDto.reserved2" name="unilateralOrderInfoDto.reserved2"  value="${unilateralOrderInfoDto.reserved2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved3</label></th>
								<td>
									<input type="text" id="unilateralOrderInfoDto.reserved3" name="unilateralOrderInfoDto.reserved3"  value="${unilateralOrderInfoDto.reserved3}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved4</label></th>
								<td>
									<input type="text" id="unilateralOrderInfoDto.reserved4" name="unilateralOrderInfoDto.reserved4"  value="${unilateralOrderInfoDto.reserved4}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved5</label></th>
								<td>
									<input type="text" id="unilateralOrderInfoDto.reserved5" name="unilateralOrderInfoDto.reserved5"  value="${unilateralOrderInfoDto.reserved5}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>