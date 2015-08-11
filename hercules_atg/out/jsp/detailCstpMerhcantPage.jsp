<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editCstpMerhcantFrom" name="editCstpMerhcantFrom" method="post" action="editCstpMerhcantAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>merchant_id</label></th>
								<td>
									<input type="text" id="cstpMerhcantDto.merchant_id" name="cstpMerhcantDto.merchant_id"  value="${cstpMerhcantDto.merchant_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>merchant_name</label></th>
								<td>
									<input type="text" id="cstpMerhcantDto.merchant_name" name="cstpMerhcantDto.merchant_name"  value="${cstpMerhcantDto.merchant_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="cstpMerhcantDto.create_time" name="cstpMerhcantDto.create_time"  value="${cstpMerhcantDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>primery_key</label></th>
								<td>
									<input type="text" id="cstpMerhcantDto.primery_key" name="cstpMerhcantDto.primery_key"  value="${cstpMerhcantDto.primery_key}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>develop_id</label></th>
								<td>
									<input type="text" id="cstpMerhcantDto.develop_id" name="cstpMerhcantDto.develop_id"  value="${cstpMerhcantDto.develop_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sp_id</label></th>
								<td>
									<input type="text" id="cstpMerhcantDto.sp_id" name="cstpMerhcantDto.sp_id"  value="${cstpMerhcantDto.sp_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>