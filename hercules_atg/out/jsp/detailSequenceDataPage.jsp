<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editSequenceDataFrom" name="editSequenceDataFrom" method="post" action="editSequenceDataAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>sequence_increment</label></th>
								<td>
									<input type="text" id="sequenceDataDto.sequence_increment" name="sequenceDataDto.sequence_increment"  value="${sequenceDataDto.sequence_increment}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sequence_min_value</label></th>
								<td>
									<input type="text" id="sequenceDataDto.sequence_min_value" name="sequenceDataDto.sequence_min_value"  value="${sequenceDataDto.sequence_min_value}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sequence_max_value</label></th>
								<td>
									<input type="text" id="sequenceDataDto.sequence_max_value" name="sequenceDataDto.sequence_max_value"  value="${sequenceDataDto.sequence_max_value}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sequence_cur_value</label></th>
								<td>
									<input type="text" id="sequenceDataDto.sequence_cur_value" name="sequenceDataDto.sequence_cur_value"  value="${sequenceDataDto.sequence_cur_value}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sequence_cycle</label></th>
								<td>
									<input type="text" id="sequenceDataDto.sequence_cycle" name="sequenceDataDto.sequence_cycle"  value="${sequenceDataDto.sequence_cycle}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>