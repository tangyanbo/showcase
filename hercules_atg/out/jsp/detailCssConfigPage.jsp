<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editCssConfigFrom" name="editCssConfigFrom" method="post" action="editCssConfigAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>css_name</label></th>
								<td>
									<input type="text" id="cssConfigDto.css_name" name="cssConfigDto.css_name"  value="${cssConfigDto.css_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>css_url</label></th>
								<td>
									<input type="text" id="cssConfigDto.css_url" name="cssConfigDto.css_url"  value="${cssConfigDto.css_url}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>css_id</label></th>
								<td>
									<input type="text" id="cssConfigDto.css_id" name="cssConfigDto.css_id"  value="${cssConfigDto.css_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved1</label></th>
								<td>
									<input type="text" id="cssConfigDto.reserved1" name="cssConfigDto.reserved1"  value="${cssConfigDto.reserved1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved2</label></th>
								<td>
									<input type="text" id="cssConfigDto.reserved2" name="cssConfigDto.reserved2"  value="${cssConfigDto.reserved2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved3</label></th>
								<td>
									<input type="text" id="cssConfigDto.reserved3" name="cssConfigDto.reserved3"  value="${cssConfigDto.reserved3}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>remark</label></th>
								<td>
									<input type="text" id="cssConfigDto.remark" name="cssConfigDto.remark"  value="${cssConfigDto.remark}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>