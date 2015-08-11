<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editAppConfigInfoFrom" name="editAppConfigInfoFrom" method="post" action="editAppConfigInfoAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>apk_name</label></th>
								<td>
									<input type="text" id="appConfigInfoDto.apk_name" name="appConfigInfoDto.apk_name"  value="${appConfigInfoDto.apk_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>pic_url</label></th>
								<td>
									<input type="text" id="appConfigInfoDto.pic_url" name="appConfigInfoDto.pic_url"  value="${appConfigInfoDto.pic_url}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>apk_url</label></th>
								<td>
									<input type="text" id="appConfigInfoDto.apk_url" name="appConfigInfoDto.apk_url"  value="${appConfigInfoDto.apk_url}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>entrance_name</label></th>
								<td>
									<input type="text" id="appConfigInfoDto.entrance_name" name="appConfigInfoDto.entrance_name"  value="${appConfigInfoDto.entrance_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>status</label></th>
								<td>
									<input type="text" id="appConfigInfoDto.status" name="appConfigInfoDto.status"  value="${appConfigInfoDto.status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="appConfigInfoDto.create_time" name="appConfigInfoDto.create_time"  value="${appConfigInfoDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>remark</label></th>
								<td>
									<input type="text" id="appConfigInfoDto.remark" name="appConfigInfoDto.remark"  value="${appConfigInfoDto.remark}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="appConfigInfoDto.reserved" name="appConfigInfoDto.reserved"  value="${appConfigInfoDto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>version</label></th>
								<td>
									<input type="text" id="appConfigInfoDto.version" name="appConfigInfoDto.version"  value="${appConfigInfoDto.version}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>