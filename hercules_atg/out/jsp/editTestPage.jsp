<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editTestFrom" name="editTestFrom" method="post" action="editTestAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="testDto.id" name="testDto.id" value="${testDto.id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>tsn</label></th>
									<td>
										<input type="text" id="testDto.tsn" name="testDto.tsn" value="${testDto.tsn}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'tsn必须为数字',missingMessage:'tsn必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delTestFrom" name="delTestFrom" method="post" action="delTestAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${testDto.id}" />
			</form>
		</div>
	</div>
</div>