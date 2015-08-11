<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editTestCopyFrom" name="editTestCopyFrom" method="post" action="editTestCopyAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="testCopyDto.id" name="testCopyDto.id" value="${testCopyDto.id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>tsn</label></th>
									<td>
										<input type="text" id="testCopyDto.tsn" name="testCopyDto.tsn" value="${testCopyDto.tsn}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'tsn必须为数字',missingMessage:'tsn必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delTestCopyFrom" name="delTestCopyFrom" method="post" action="delTestCopyAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${testCopyDto.id}" />
			</form>
		</div>
	</div>
</div>