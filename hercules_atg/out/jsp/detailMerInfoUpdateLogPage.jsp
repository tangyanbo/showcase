<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editMerInfoUpdateLogFrom" name="editMerInfoUpdateLogFrom" method="post" action="editMerInfoUpdateLogAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>mer_id</label></th>
								<td>
									<input type="text" id="merInfoUpdateLogDto.mer_id" name="merInfoUpdateLogDto.mer_id"  value="${merInfoUpdateLogDto.mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_type</label></th>
								<td>
									<input type="text" id="merInfoUpdateLogDto.mer_type" name="merInfoUpdateLogDto.mer_type"  value="${merInfoUpdateLogDto.mer_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>org_value</label></th>
								<td>
									<input type="text" id="merInfoUpdateLogDto.org_value" name="merInfoUpdateLogDto.org_value"  value="${merInfoUpdateLogDto.org_value}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>new_value</label></th>
								<td>
									<input type="text" id="merInfoUpdateLogDto.new_value" name="merInfoUpdateLogDto.new_value"  value="${merInfoUpdateLogDto.new_value}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>org_time</label></th>
								<td>
									<input type="text" id="merInfoUpdateLogDto.org_time" name="merInfoUpdateLogDto.org_time"  value="${merInfoUpdateLogDto.org_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>update_time</label></th>
								<td>
									<input type="text" id="merInfoUpdateLogDto.update_time" name="merInfoUpdateLogDto.update_time"  value="${merInfoUpdateLogDto.update_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved1</label></th>
								<td>
									<input type="text" id="merInfoUpdateLogDto.reserved1" name="merInfoUpdateLogDto.reserved1"  value="${merInfoUpdateLogDto.reserved1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved2</label></th>
								<td>
									<input type="text" id="merInfoUpdateLogDto.reserved2" name="merInfoUpdateLogDto.reserved2"  value="${merInfoUpdateLogDto.reserved2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved3</label></th>
								<td>
									<input type="text" id="merInfoUpdateLogDto.reserved3" name="merInfoUpdateLogDto.reserved3"  value="${merInfoUpdateLogDto.reserved3}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>