<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editCardBinFrom" name="editCardBinFrom" method="post" action="editCardBinAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="cardBinDto.id" name="cardBinDto.id" value="${cardBinDto.id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>bank_id</label></th>
									<td>
										<input type="text" id="cardBinDto.bank_id" name="cardBinDto.bank_id" value="${cardBinDto.bank_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'bank_id不能为空',missingMessage:'bank_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>bank_name</label></th>
									<td>
										<input type="text" id="cardBinDto.bank_name" name="cardBinDto.bank_name" value="${cardBinDto.bank_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'bank_name不能为空',missingMessage:'bank_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>card_no_length</label></th>
									<td>
										<input type="text" id="cardBinDto.card_no_length" name="cardBinDto.card_no_length" value="${cardBinDto.card_no_length}" class="easyui-validatebox" data-options="required:true,invalidMessage:'card_no_length不能为空',missingMessage:'card_no_length不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>card_bin</label></th>
									<td>
										<input type="text" id="cardBinDto.card_bin" name="cardBinDto.card_bin" value="${cardBinDto.card_bin}" class="easyui-validatebox" data-options="required:true,invalidMessage:'card_bin不能为空',missingMessage:'card_bin不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>upop_flag</label></th>
									<td>
										<input type="text" id="cardBinDto.upop_flag" name="cardBinDto.upop_flag" value="${cardBinDto.upop_flag}" class="easyui-validatebox" data-options="required:true,invalidMessage:'upop_flag不能为空',missingMessage:'upop_flag不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>card_type</label></th>
									<td>
										<input type="text" id="cardBinDto.card_type" name="cardBinDto.card_type" value="${cardBinDto.card_type}" class="easyui-validatebox" data-options="required:true,invalidMessage:'card_type不能为空',missingMessage:'card_type不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>bank_short_name</label></th>
									<td>
										<input type="text" id="cardBinDto.bank_short_name" name="cardBinDto.bank_short_name" value="${cardBinDto.bank_short_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'bank_short_name不能为空',missingMessage:'bank_short_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delCardBinFrom" name="delCardBinFrom" method="post" action="delCardBinAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${cardBinDto.id}" />
			</form>
		</div>
	</div>
</div>