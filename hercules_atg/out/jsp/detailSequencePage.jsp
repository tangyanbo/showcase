<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editSequenceFrom" name="editSequenceFrom" method="post" action="editSequenceAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>increment</label></th>
								<td>
									<input type="text" id="sequenceDto.increment" name="sequenceDto.increment"  value="${sequenceDto.increment}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>min_value</label></th>
								<td>
									<input type="text" id="sequenceDto.min_value" name="sequenceDto.min_value"  value="${sequenceDto.min_value}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>max_value</label></th>
								<td>
									<input type="text" id="sequenceDto.max_value" name="sequenceDto.max_value"  value="${sequenceDto.max_value}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>cur_value</label></th>
								<td>
									<input type="text" id="sequenceDto.cur_value" name="sequenceDto.cur_value"  value="${sequenceDto.cur_value}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>cycle</label></th>
								<td>
									<input type="text" id="sequenceDto.cycle" name="sequenceDto.cycle"  value="${sequenceDto.cycle}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>