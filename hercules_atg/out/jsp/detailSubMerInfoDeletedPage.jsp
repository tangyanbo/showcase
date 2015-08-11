<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editSubMerInfoDeletedFrom" name="editSubMerInfoDeletedFrom" method="post" action="editSubMerInfoDeletedAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>sub_mer_id</label></th>
								<td>
									<input type="text" id="subMerInfoDeletedDto.sub_mer_id" name="subMerInfoDeletedDto.sub_mer_id"  value="${subMerInfoDeletedDto.sub_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>prefix_id</label></th>
								<td>
									<input type="text" id="subMerInfoDeletedDto.prefix_id" name="subMerInfoDeletedDto.prefix_id"  value="${subMerInfoDeletedDto.prefix_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>suffix_id</label></th>
								<td>
									<input type="text" id="subMerInfoDeletedDto.suffix_id" name="subMerInfoDeletedDto.suffix_id"  value="${subMerInfoDeletedDto.suffix_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="subMerInfoDeletedDto.reserved" name="subMerInfoDeletedDto.reserved"  value="${subMerInfoDeletedDto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>