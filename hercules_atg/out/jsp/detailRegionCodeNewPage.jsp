<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editRegionCodeNewFrom" name="editRegionCodeNewFrom" method="post" action="editRegionCodeNewAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>code</label></th>
								<td>
									<input type="text" id="regionCodeNewDto.code" name="regionCodeNewDto.code"  value="${regionCodeNewDto.code}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>name</label></th>
								<td>
									<input type="text" id="regionCodeNewDto.name" name="regionCodeNewDto.name"  value="${regionCodeNewDto.name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>level</label></th>
								<td>
									<input type="text" id="regionCodeNewDto.level" name="regionCodeNewDto.level"  value="${regionCodeNewDto.level}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>super_code</label></th>
								<td>
									<input type="text" id="regionCodeNewDto.super_code" name="regionCodeNewDto.super_code"  value="${regionCodeNewDto.super_code}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>remark</label></th>
								<td>
									<input type="text" id="regionCodeNewDto.remark" name="regionCodeNewDto.remark"  value="${regionCodeNewDto.remark}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>