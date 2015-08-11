<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editPayInfoFrom" name="editPayInfoFrom" method="post" action="editPayInfoAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>trans_mer_id</label></th>
								<td>
									<input type="text" id="payInfoDto.trans_mer_id" name="payInfoDto.trans_mer_id"  value="${payInfoDto.trans_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_ter_id</label></th>
								<td>
									<input type="text" id="payInfoDto.trans_ter_id" name="payInfoDto.trans_ter_id"  value="${payInfoDto.trans_ter_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>channel_type</label></th>
								<td>
									<input type="text" id="payInfoDto.channel_type" name="payInfoDto.channel_type"  value="${payInfoDto.channel_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_amt</label></th>
								<td>
									<input type="text" id="payInfoDto.trans_amt" name="payInfoDto.trans_amt"  value="${payInfoDto.trans_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_cur</label></th>
								<td>
									<input type="text" id="payInfoDto.trans_cur" name="payInfoDto.trans_cur"  value="${payInfoDto.trans_cur}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_time</label></th>
								<td>
									<input type="text" id="payInfoDto.trans_time" name="payInfoDto.trans_time"  value="${payInfoDto.trans_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_status</label></th>
								<td>
									<input type="text" id="payInfoDto.trans_status" name="payInfoDto.trans_status"  value="${payInfoDto.trans_status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_type</label></th>
								<td>
									<input type="text" id="payInfoDto.trans_type" name="payInfoDto.trans_type"  value="${payInfoDto.trans_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>res_code</label></th>
								<td>
									<input type="text" id="payInfoDto.res_code" name="payInfoDto.res_code"  value="${payInfoDto.res_code}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>res_desc</label></th>
								<td>
									<input type="text" id="payInfoDto.res_desc" name="payInfoDto.res_desc"  value="${payInfoDto.res_desc}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_date</label></th>
								<td>
									<input type="text" id="payInfoDto.settle_date" name="payInfoDto.settle_date"  value="${payInfoDto.settle_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_cur</label></th>
								<td>
									<input type="text" id="payInfoDto.settle_cur" name="payInfoDto.settle_cur"  value="${payInfoDto.settle_cur}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>id_no</label></th>
								<td>
									<input type="text" id="payInfoDto.id_no" name="payInfoDto.id_no"  value="${payInfoDto.id_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>user_name</label></th>
								<td>
									<input type="text" id="payInfoDto.user_name" name="payInfoDto.user_name"  value="${payInfoDto.user_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>pan</label></th>
								<td>
									<input type="text" id="payInfoDto.pan" name="payInfoDto.pan"  value="${payInfoDto.pan}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_type</label></th>
								<td>
									<input type="text" id="payInfoDto.card_type" name="payInfoDto.card_type"  value="${payInfoDto.card_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account2</label></th>
								<td>
									<input type="text" id="payInfoDto.account2" name="payInfoDto.account2"  value="${payInfoDto.account2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>org_order_id</label></th>
								<td>
									<input type="text" id="payInfoDto.org_order_id" name="payInfoDto.org_order_id"  value="${payInfoDto.org_order_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="payInfoDto.create_time" name="payInfoDto.create_time"  value="${payInfoDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>modify_time</label></th>
								<td>
									<input type="text" id="payInfoDto.modify_time" name="payInfoDto.modify_time"  value="${payInfoDto.modify_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="payInfoDto.reserved" name="payInfoDto.reserved"  value="${payInfoDto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext</label></th>
								<td>
									<input type="text" id="payInfoDto.ext" name="payInfoDto.ext"  value="${payInfoDto.ext}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>csn</label></th>
								<td>
									<input type="text" id="payInfoDto.csn" name="payInfoDto.csn"  value="${payInfoDto.csn}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_mer_name</label></th>
								<td>
									<input type="text" id="payInfoDto.trans_mer_name" name="payInfoDto.trans_mer_name"  value="${payInfoDto.trans_mer_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>spid</label></th>
								<td>
									<input type="text" id="payInfoDto.spid" name="payInfoDto.spid"  value="${payInfoDto.spid}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ip</label></th>
								<td>
									<input type="text" id="payInfoDto.ip" name="payInfoDto.ip"  value="${payInfoDto.ip}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reference_no</label></th>
								<td>
									<input type="text" id="payInfoDto.reference_no" name="payInfoDto.reference_no"  value="${payInfoDto.reference_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>auth_no</label></th>
								<td>
									<input type="text" id="payInfoDto.auth_no" name="payInfoDto.auth_no"  value="${payInfoDto.auth_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>tracking_no</label></th>
								<td>
									<input type="text" id="payInfoDto.tracking_no" name="payInfoDto.tracking_no"  value="${payInfoDto.tracking_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account2_name</label></th>
								<td>
									<input type="text" id="payInfoDto.account2_name" name="payInfoDto.account2_name"  value="${payInfoDto.account2_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>batch_no</label></th>
								<td>
									<input type="text" id="payInfoDto.batch_no" name="payInfoDto.batch_no"  value="${payInfoDto.batch_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext1</label></th>
								<td>
									<input type="text" id="payInfoDto.ext1" name="payInfoDto.ext1"  value="${payInfoDto.ext1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext2</label></th>
								<td>
									<input type="text" id="payInfoDto.ext2" name="payInfoDto.ext2"  value="${payInfoDto.ext2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext3</label></th>
								<td>
									<input type="text" id="payInfoDto.ext3" name="payInfoDto.ext3"  value="${payInfoDto.ext3}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_date</label></th>
								<td>
									<input type="text" id="payInfoDto.create_date" name="payInfoDto.create_date"  value="${payInfoDto.create_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>entry_mode</label></th>
								<td>
									<input type="text" id="payInfoDto.entry_mode" name="payInfoDto.entry_mode"  value="${payInfoDto.entry_mode}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>