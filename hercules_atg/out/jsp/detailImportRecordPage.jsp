<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editImportRecordFrom" name="editImportRecordFrom" method="post" action="editImportRecordAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>tract_err_name</label></th>
								<td>
									<input type="text" id="importRecordDto.tract_err_name" name="importRecordDto.tract_err_name"  value="${importRecordDto.tract_err_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>subinfo_name</label></th>
								<td>
									<input type="text" id="importRecordDto.subinfo_name" name="importRecordDto.subinfo_name"  value="${importRecordDto.subinfo_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>signin_err_name</label></th>
								<td>
									<input type="text" id="importRecordDto.signin_err_name" name="importRecordDto.signin_err_name"  value="${importRecordDto.signin_err_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sub_err_name</label></th>
								<td>
									<input type="text" id="importRecordDto.sub_err_name" name="importRecordDto.sub_err_name"  value="${importRecordDto.sub_err_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>err_name</label></th>
								<td>
									<input type="text" id="importRecordDto.err_name" name="importRecordDto.err_name"  value="${importRecordDto.err_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>download_url</label></th>
								<td>
									<input type="text" id="importRecordDto.download_url" name="importRecordDto.download_url"  value="${importRecordDto.download_url}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="importRecordDto.create_time" name="importRecordDto.create_time"  value="${importRecordDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>batch_id</label></th>
								<td>
									<input type="text" id="importRecordDto.batch_id" name="importRecordDto.batch_id"  value="${importRecordDto.batch_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>file_type</label></th>
								<td>
									<input type="text" id="importRecordDto.file_type" name="importRecordDto.file_type"  value="${importRecordDto.file_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>