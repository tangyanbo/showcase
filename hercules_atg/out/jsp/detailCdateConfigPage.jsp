<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editCdateConfigFrom" name="editCdateConfigFrom" method="post" action="editCdateConfigAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>cdate</label></th>
								<td>
									<input type="text" id="cdateConfigDto.cdate" name="cdateConfigDto.cdate"  value="${cdateConfigDto.cdate}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>weekdy</label></th>
								<td>
									<input type="text" id="cdateConfigDto.weekdy" name="cdateConfigDto.weekdy"  value="${cdateConfigDto.weekdy}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>is_work</label></th>
								<td>
									<input type="text" id="cdateConfigDto.is_work" name="cdateConfigDto.is_work"  value="${cdateConfigDto.is_work}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>is_xend</label></th>
								<td>
									<input type="text" id="cdateConfigDto.is_xend" name="cdateConfigDto.is_xend"  value="${cdateConfigDto.is_xend}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>is_mend</label></th>
								<td>
									<input type="text" id="cdateConfigDto.is_mend" name="cdateConfigDto.is_mend"  value="${cdateConfigDto.is_mend}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>is_qend</label></th>
								<td>
									<input type="text" id="cdateConfigDto.is_qend" name="cdateConfigDto.is_qend"  value="${cdateConfigDto.is_qend}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>is_hend</label></th>
								<td>
									<input type="text" id="cdateConfigDto.is_hend" name="cdateConfigDto.is_hend"  value="${cdateConfigDto.is_hend}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>is_yend</label></th>
								<td>
									<input type="text" id="cdateConfigDto.is_yend" name="cdateConfigDto.is_yend"  value="${cdateConfigDto.is_yend}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved1</label></th>
								<td>
									<input type="text" id="cdateConfigDto.reserved1" name="cdateConfigDto.reserved1"  value="${cdateConfigDto.reserved1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>