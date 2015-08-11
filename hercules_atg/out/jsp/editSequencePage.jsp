<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editSequenceFrom" name="editSequenceFrom" method="post" action="editSequenceAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="sequenceDto.name" name="sequenceDto.name" value="${sequenceDto.name}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>increment</label></th>
									<td>
										<input type="text" id="sequenceDto.increment" name="sequenceDto.increment" value="${sequenceDto.increment}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'increment必须为数字',missingMessage:'increment必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>min_value</label></th>
									<td>
										<input type="text" id="sequenceDto.min_value" name="sequenceDto.min_value" value="${sequenceDto.min_value}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'min_value必须为数字',missingMessage:'min_value必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>max_value</label></th>
									<td>
										<input type="text" id="sequenceDto.max_value" name="sequenceDto.max_value" value="${sequenceDto.max_value}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'max_value必须为数字',missingMessage:'max_value必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>cur_value</label></th>
									<td>
										<input type="text" id="sequenceDto.cur_value" name="sequenceDto.cur_value" value="${sequenceDto.cur_value}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'cur_value必须为数字',missingMessage:'cur_value必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delSequenceFrom" name="delSequenceFrom" method="post" action="delSequenceAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${sequenceDto.name}" />
			</form>
		</div>
	</div>
</div>