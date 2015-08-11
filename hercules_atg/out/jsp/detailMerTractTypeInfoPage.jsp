<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editMerTractTypeInfoFrom" name="editMerTractTypeInfoFrom" method="post" action="editMerTractTypeInfoAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>mer_sys_id</label></th>
								<td>
									<input type="text" id="merTractTypeInfoDto.mer_sys_id" name="merTractTypeInfoDto.mer_sys_id"  value="${merTractTypeInfoDto.mer_sys_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mcc_category_id</label></th>
								<td>
									<input type="text" id="merTractTypeInfoDto.mcc_category_id" name="merTractTypeInfoDto.mcc_category_id"  value="${merTractTypeInfoDto.mcc_category_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>profit_type</label></th>
								<td>
									<input type="text" id="merTractTypeInfoDto.profit_type" name="merTractTypeInfoDto.profit_type"  value="${merTractTypeInfoDto.profit_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_rate_1</label></th>
								<td>
									<input type="text" id="merTractTypeInfoDto.mer_rate_1" name="merTractTypeInfoDto.mer_rate_1"  value="${merTractTypeInfoDto.mer_rate_1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_rate_2</label></th>
								<td>
									<input type="text" id="merTractTypeInfoDto.mer_rate_2" name="merTractTypeInfoDto.mer_rate_2"  value="${merTractTypeInfoDto.mer_rate_2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_highest_fee</label></th>
								<td>
									<input type="text" id="merTractTypeInfoDto.mer_highest_fee" name="merTractTypeInfoDto.mer_highest_fee"  value="${merTractTypeInfoDto.mer_highest_fee}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_lowest_fee</label></th>
								<td>
									<input type="text" id="merTractTypeInfoDto.mer_lowest_fee" name="merTractTypeInfoDto.mer_lowest_fee"  value="${merTractTypeInfoDto.mer_lowest_fee}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>status</label></th>
								<td>
									<input type="text" id="merTractTypeInfoDto.status" name="merTractTypeInfoDto.status"  value="${merTractTypeInfoDto.status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="merTractTypeInfoDto.reserved" name="merTractTypeInfoDto.reserved"  value="${merTractTypeInfoDto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>