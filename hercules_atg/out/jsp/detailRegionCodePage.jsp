<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editRegionCodeFrom" name="editRegionCodeFrom" method="post" action="editRegionCodeAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>code</label></th>
								<td>
									<input type="text" id="regionCodeDto.code" name="regionCodeDto.code"  value="${regionCodeDto.code}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>name</label></th>
								<td>
									<input type="text" id="regionCodeDto.name" name="regionCodeDto.name"  value="${regionCodeDto.name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>super_code</label></th>
								<td>
									<input type="text" id="regionCodeDto.super_code" name="regionCodeDto.super_code"  value="${regionCodeDto.super_code}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>level</label></th>
								<td>
									<input type="text" id="regionCodeDto.level" name="regionCodeDto.level"  value="${regionCodeDto.level}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>remark</label></th>
								<td>
									<input type="text" id="regionCodeDto.remark" name="regionCodeDto.remark"  value="${regionCodeDto.remark}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>remark1</label></th>
								<td>
									<input type="text" id="regionCodeDto.remark1" name="regionCodeDto.remark1"  value="${regionCodeDto.remark1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>