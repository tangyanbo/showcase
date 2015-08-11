<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editCardBin1103From" name="editCardBin1103From" method="post" action="editCardBin1103Action.action">
				<div class="search-panel-bd">
							<input type="hidden" id="cardBin1103Dto.id" name="cardBin1103Dto.id" value="${cardBin1103Dto.id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>bank_id</label></th>
									<td>
										<input type="text" id="cardBin1103Dto.bank_id" name="cardBin1103Dto.bank_id" value="${cardBin1103Dto.bank_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'bank_id不能为空',missingMessage:'bank_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>bank_name</label></th>
									<td>
										<input type="text" id="cardBin1103Dto.bank_name" name="cardBin1103Dto.bank_name" value="${cardBin1103Dto.bank_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'bank_name不能为空',missingMessage:'bank_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>card_no_length</label></th>
									<td>
										<input type="text" id="cardBin1103Dto.card_no_length" name="cardBin1103Dto.card_no_length" value="${cardBin1103Dto.card_no_length}" class="easyui-validatebox" data-options="required:true,invalidMessage:'card_no_length不能为空',missingMessage:'card_no_length不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>card_bin</label></th>
									<td>
										<input type="text" id="cardBin1103Dto.card_bin" name="cardBin1103Dto.card_bin" value="${cardBin1103Dto.card_bin}" class="easyui-validatebox" data-options="required:true,invalidMessage:'card_bin不能为空',missingMessage:'card_bin不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>upop_flag</label></th>
									<td>
										<input type="text" id="cardBin1103Dto.upop_flag" name="cardBin1103Dto.upop_flag" value="${cardBin1103Dto.upop_flag}" class="easyui-validatebox" data-options="required:true,invalidMessage:'upop_flag不能为空',missingMessage:'upop_flag不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>card_type</label></th>
									<td>
										<input type="text" id="cardBin1103Dto.card_type" name="cardBin1103Dto.card_type" value="${cardBin1103Dto.card_type}" class="easyui-validatebox" data-options="required:true,invalidMessage:'card_type不能为空',missingMessage:'card_type不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>bank_short_name</label></th>
									<td>
										<input type="text" id="cardBin1103Dto.bank_short_name" name="cardBin1103Dto.bank_short_name" value="${cardBin1103Dto.bank_short_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'bank_short_name不能为空',missingMessage:'bank_short_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delCardBin1103From" name="delCardBin1103From" method="post" action="delCardBin1103Action.action">
						<input type="hidden" id="pkid" name="pkid" value="${cardBin1103Dto.id}" />
			</form>
		</div>
	</div>
</div>