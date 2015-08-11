<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editMerInfoUpdateFrom" name="editMerInfoUpdateFrom" method="post" action="editMerInfoUpdateAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>mid</label></th>
								<td>
									<input type="text" id="merInfoUpdateDto.mid" name="merInfoUpdateDto.mid"  value="${merInfoUpdateDto.mid}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_type</label></th>
								<td>
									<input type="text" id="merInfoUpdateDto.mer_type" name="merInfoUpdateDto.mer_type"  value="${merInfoUpdateDto.mer_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>modify_type</label></th>
								<td>
									<input type="text" id="merInfoUpdateDto.modify_type" name="merInfoUpdateDto.modify_type"  value="${merInfoUpdateDto.modify_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>value</label></th>
								<td>
									<input type="text" id="merInfoUpdateDto.value" name="merInfoUpdateDto.value"  value="${merInfoUpdateDto.value}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>status</label></th>
								<td>
									<input type="text" id="merInfoUpdateDto.status" name="merInfoUpdateDto.status"  value="${merInfoUpdateDto.status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="merInfoUpdateDto.create_time" name="merInfoUpdateDto.create_time"  value="${merInfoUpdateDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>update_time</label></th>
								<td>
									<input type="text" id="merInfoUpdateDto.update_time" name="merInfoUpdateDto.update_time"  value="${merInfoUpdateDto.update_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>remark</label></th>
								<td>
									<input type="text" id="merInfoUpdateDto.remark" name="merInfoUpdateDto.remark"  value="${merInfoUpdateDto.remark}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>