<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editSequenceDataFrom" name="editSequenceDataFrom" method="post" action="editSequenceDataAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="sequenceDataDto.sequence_name" name="sequenceDataDto.sequence_name" value="${sequenceDataDto.sequence_name}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>sequence_increment</label></th>
									<td>
										<input type="text" id="sequenceDataDto.sequence_increment" name="sequenceDataDto.sequence_increment" value="${sequenceDataDto.sequence_increment}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'sequence_increment必须为数字',missingMessage:'sequence_increment必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>sequence_min_value</label></th>
									<td>
										<input type="text" id="sequenceDataDto.sequence_min_value" name="sequenceDataDto.sequence_min_value" value="${sequenceDataDto.sequence_min_value}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'sequence_min_value必须为数字',missingMessage:'sequence_min_value必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>sequence_max_value</label></th>
									<td>
										<input type="text" id="sequenceDataDto.sequence_max_value" name="sequenceDataDto.sequence_max_value" value="${sequenceDataDto.sequence_max_value}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'sequence_max_value必须为数字',missingMessage:'sequence_max_value必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>sequence_cur_value</label></th>
									<td>
										<input type="text" id="sequenceDataDto.sequence_cur_value" name="sequenceDataDto.sequence_cur_value" value="${sequenceDataDto.sequence_cur_value}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'sequence_cur_value必须为数字',missingMessage:'sequence_cur_value必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delSequenceDataFrom" name="delSequenceDataFrom" method="post" action="delSequenceDataAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${sequenceDataDto.sequence_name}" />
			</form>
		</div>
	</div>
</div>