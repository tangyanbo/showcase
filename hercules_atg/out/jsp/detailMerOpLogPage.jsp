<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editMerOpLogFrom" name="editMerOpLogFrom" method="post" action="editMerOpLogAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>mid</label></th>
								<td>
									<input type="text" id="merOpLogDto.mid" name="merOpLogDto.mid"  value="${merOpLogDto.mid}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_type</label></th>
								<td>
									<input type="text" id="merOpLogDto.mer_type" name="merOpLogDto.mer_type"  value="${merOpLogDto.mer_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>login_name</label></th>
								<td>
									<input type="text" id="merOpLogDto.login_name" name="merOpLogDto.login_name"  value="${merOpLogDto.login_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>op_desc</label></th>
								<td>
									<input type="text" id="merOpLogDto.op_desc" name="merOpLogDto.op_desc"  value="${merOpLogDto.op_desc}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>op_url</label></th>
								<td>
									<input type="text" id="merOpLogDto.op_url" name="merOpLogDto.op_url"  value="${merOpLogDto.op_url}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ip</label></th>
								<td>
									<input type="text" id="merOpLogDto.ip" name="merOpLogDto.ip"  value="${merOpLogDto.ip}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ua</label></th>
								<td>
									<input type="text" id="merOpLogDto.ua" name="merOpLogDto.ua"  value="${merOpLogDto.ua}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>op_time</label></th>
								<td>
									<input type="text" id="merOpLogDto.op_time" name="merOpLogDto.op_time"  value="${merOpLogDto.op_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>remark</label></th>
								<td>
									<input type="text" id="merOpLogDto.remark" name="merOpLogDto.remark"  value="${merOpLogDto.remark}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>