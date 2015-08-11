<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editSubMerAuthInfoFrom" name="editSubMerAuthInfoFrom" method="post" action="editSubMerAuthInfoAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="subMerAuthInfoDto.create_time" name="subMerAuthInfoDto.create_time"  value="${subMerAuthInfoDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sub_mer_id</label></th>
								<td>
									<input type="text" id="subMerAuthInfoDto.sub_mer_id" name="subMerAuthInfoDto.sub_mer_id"  value="${subMerAuthInfoDto.sub_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>remit_type</label></th>
								<td>
									<input type="text" id="subMerAuthInfoDto.remit_type" name="subMerAuthInfoDto.remit_type"  value="${subMerAuthInfoDto.remit_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>real_name</label></th>
								<td>
									<input type="text" id="subMerAuthInfoDto.real_name" name="subMerAuthInfoDto.real_name"  value="${subMerAuthInfoDto.real_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>id_num</label></th>
								<td>
									<input type="text" id="subMerAuthInfoDto.id_num" name="subMerAuthInfoDto.id_num"  value="${subMerAuthInfoDto.id_num}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>face_pic_path</label></th>
								<td>
									<input type="text" id="subMerAuthInfoDto.face_pic_path" name="subMerAuthInfoDto.face_pic_path"  value="${subMerAuthInfoDto.face_pic_path}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>auth_status</label></th>
								<td>
									<input type="text" id="subMerAuthInfoDto.auth_status" name="subMerAuthInfoDto.auth_status"  value="${subMerAuthInfoDto.auth_status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>serial_no</label></th>
								<td>
									<input type="text" id="subMerAuthInfoDto.serial_no" name="subMerAuthInfoDto.serial_no"  value="${subMerAuthInfoDto.serial_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>terminal_id</label></th>
								<td>
									<input type="text" id="subMerAuthInfoDto.terminal_id" name="subMerAuthInfoDto.terminal_id"  value="${subMerAuthInfoDto.terminal_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>