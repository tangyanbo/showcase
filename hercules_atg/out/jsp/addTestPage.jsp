<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addTestFrom" name="addTestFrom" method="post" action="addTestAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>tsn</label></th>
							<td>
								<input type="text" id="testDto.tsn" name="testDto.tsn" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'tsn必须为数字',missingMessage:'tsn必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>