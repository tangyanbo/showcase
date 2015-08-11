<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editImportRecordFrom" name="editImportRecordFrom" method="post" action="editImportRecordAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="importRecordDto.id" name="importRecordDto.id" value="${importRecordDto.id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>tract_err_name</label></th>
									<td>
										<input type="text" id="importRecordDto.tract_err_name" name="importRecordDto.tract_err_name" value="${importRecordDto.tract_err_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'tract_err_name不能为空',missingMessage:'tract_err_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>subinfo_name</label></th>
									<td>
										<input type="text" id="importRecordDto.subinfo_name" name="importRecordDto.subinfo_name" value="${importRecordDto.subinfo_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'subinfo_name不能为空',missingMessage:'subinfo_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>signin_err_name</label></th>
									<td>
										<input type="text" id="importRecordDto.signin_err_name" name="importRecordDto.signin_err_name" value="${importRecordDto.signin_err_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'signin_err_name不能为空',missingMessage:'signin_err_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>sub_err_name</label></th>
									<td>
										<input type="text" id="importRecordDto.sub_err_name" name="importRecordDto.sub_err_name" value="${importRecordDto.sub_err_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'sub_err_name不能为空',missingMessage:'sub_err_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>err_name</label></th>
									<td>
										<input type="text" id="importRecordDto.err_name" name="importRecordDto.err_name" value="${importRecordDto.err_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'err_name不能为空',missingMessage:'err_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>download_url</label></th>
									<td>
										<input type="text" id="importRecordDto.download_url" name="importRecordDto.download_url" value="${importRecordDto.download_url}" class="easyui-validatebox" data-options="required:true,invalidMessage:'download_url不能为空',missingMessage:'download_url不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>create_time</label></th>
									<td>
										<input type="text" id="importRecordDto.create_time" name="importRecordDto.create_time" value="${importRecordDto.create_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>batch_id</label></th>
									<td>
										<input type="text" id="importRecordDto.batch_id" name="importRecordDto.batch_id" value="${importRecordDto.batch_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'batch_id不能为空',missingMessage:'batch_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>file_type</label></th>
									<td>
										<input type="text" id="importRecordDto.file_type" name="importRecordDto.file_type" value="${importRecordDto.file_type}" class="easyui-validatebox" data-options="required:true,invalidMessage:'file_type不能为空',missingMessage:'file_type不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delImportRecordFrom" name="delImportRecordFrom" method="post" action="delImportRecordAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${importRecordDto.id}" />
			</form>
		</div>
	</div>
</div>