<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addSequenceFrom" name="addSequenceFrom" method="post" action="addSequenceAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>increment</label></th>
							<td>
								<input type="text" id="sequenceDto.increment" name="sequenceDto.increment" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'increment必须为数字',missingMessage:'increment必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>min_value</label></th>
							<td>
								<input type="text" id="sequenceDto.min_value" name="sequenceDto.min_value" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'min_value必须为数字',missingMessage:'min_value必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>max_value</label></th>
							<td>
								<input type="text" id="sequenceDto.max_value" name="sequenceDto.max_value" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'max_value必须为数字',missingMessage:'max_value必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>cur_value</label></th>
							<td>
								<input type="text" id="sequenceDto.cur_value" name="sequenceDto.cur_value" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'cur_value必须为数字',missingMessage:'cur_value必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>