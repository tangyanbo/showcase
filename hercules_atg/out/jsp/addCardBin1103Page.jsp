<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addCardBin1103From" name="addCardBin1103From" method="post" action="addCardBin1103Action.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>bank_id</label></th>
							<td>
								<input type="text" id="cardBin1103Dto.bank_id" name="cardBin1103Dto.bank_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'bank_id不能为空',missingMessage:'bank_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>bank_name</label></th>
							<td>
								<input type="text" id="cardBin1103Dto.bank_name" name="cardBin1103Dto.bank_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'bank_name不能为空',missingMessage:'bank_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>card_no_length</label></th>
							<td>
								<input type="text" id="cardBin1103Dto.card_no_length" name="cardBin1103Dto.card_no_length" class="easyui-validatebox" data-options="required:true,invalidMessage:'card_no_length不能为空',missingMessage:'card_no_length不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>card_bin</label></th>
							<td>
								<input type="text" id="cardBin1103Dto.card_bin" name="cardBin1103Dto.card_bin" class="easyui-validatebox" data-options="required:true,invalidMessage:'card_bin不能为空',missingMessage:'card_bin不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>upop_flag</label></th>
							<td>
								<input type="text" id="cardBin1103Dto.upop_flag" name="cardBin1103Dto.upop_flag" class="easyui-validatebox" data-options="required:true,invalidMessage:'upop_flag不能为空',missingMessage:'upop_flag不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>card_type</label></th>
							<td>
								<input type="text" id="cardBin1103Dto.card_type" name="cardBin1103Dto.card_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'card_type不能为空',missingMessage:'card_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>bank_short_name</label></th>
							<td>
								<input type="text" id="cardBin1103Dto.bank_short_name" name="cardBin1103Dto.bank_short_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'bank_short_name不能为空',missingMessage:'bank_short_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>