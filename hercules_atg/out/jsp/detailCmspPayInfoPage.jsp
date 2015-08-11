<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editCmspPayInfoFrom" name="editCmspPayInfoFrom" method="post" action="editCmspPayInfoAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>trans_mer_id</label></th>
								<td>
									<input type="text" id="cmspPayInfoDto.trans_mer_id" name="cmspPayInfoDto.trans_mer_id"  value="${cmspPayInfoDto.trans_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_ter_id</label></th>
								<td>
									<input type="text" id="cmspPayInfoDto.trans_ter_id" name="cmspPayInfoDto.trans_ter_id"  value="${cmspPayInfoDto.trans_ter_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_amt</label></th>
								<td>
									<input type="text" id="cmspPayInfoDto.trans_amt" name="cmspPayInfoDto.trans_amt"  value="${cmspPayInfoDto.trans_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_cur</label></th>
								<td>
									<input type="text" id="cmspPayInfoDto.trans_cur" name="cmspPayInfoDto.trans_cur"  value="${cmspPayInfoDto.trans_cur}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_time</label></th>
								<td>
									<input type="text" id="cmspPayInfoDto.trans_time" name="cmspPayInfoDto.trans_time"  value="${cmspPayInfoDto.trans_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_status</label></th>
								<td>
									<input type="text" id="cmspPayInfoDto.trans_status" name="cmspPayInfoDto.trans_status"  value="${cmspPayInfoDto.trans_status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_type</label></th>
								<td>
									<input type="text" id="cmspPayInfoDto.trans_type" name="cmspPayInfoDto.trans_type"  value="${cmspPayInfoDto.trans_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>res_code</label></th>
								<td>
									<input type="text" id="cmspPayInfoDto.res_code" name="cmspPayInfoDto.res_code"  value="${cmspPayInfoDto.res_code}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_date</label></th>
								<td>
									<input type="text" id="cmspPayInfoDto.settle_date" name="cmspPayInfoDto.settle_date"  value="${cmspPayInfoDto.settle_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>pan</label></th>
								<td>
									<input type="text" id="cmspPayInfoDto.pan" name="cmspPayInfoDto.pan"  value="${cmspPayInfoDto.pan}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="cmspPayInfoDto.create_time" name="cmspPayInfoDto.create_time"  value="${cmspPayInfoDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="cmspPayInfoDto.reserved" name="cmspPayInfoDto.reserved"  value="${cmspPayInfoDto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext</label></th>
								<td>
									<input type="text" id="cmspPayInfoDto.ext" name="cmspPayInfoDto.ext"  value="${cmspPayInfoDto.ext}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>tracking_no</label></th>
								<td>
									<input type="text" id="cmspPayInfoDto.tracking_no" name="cmspPayInfoDto.tracking_no"  value="${cmspPayInfoDto.tracking_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext1</label></th>
								<td>
									<input type="text" id="cmspPayInfoDto.ext1" name="cmspPayInfoDto.ext1"  value="${cmspPayInfoDto.ext1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext2</label></th>
								<td>
									<input type="text" id="cmspPayInfoDto.ext2" name="cmspPayInfoDto.ext2"  value="${cmspPayInfoDto.ext2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext3</label></th>
								<td>
									<input type="text" id="cmspPayInfoDto.ext3" name="cmspPayInfoDto.ext3"  value="${cmspPayInfoDto.ext3}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_date</label></th>
								<td>
									<input type="text" id="cmspPayInfoDto.create_date" name="cmspPayInfoDto.create_date"  value="${cmspPayInfoDto.create_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>cmsp_resverved</label></th>
								<td>
									<input type="text" id="cmspPayInfoDto.cmsp_resverved" name="cmspPayInfoDto.cmsp_resverved"  value="${cmspPayInfoDto.cmsp_resverved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>