<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editSusUniFrom" name="editSusUniFrom" method="post" action="editSusUniAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="susUniDto.id" name="susUniDto.id" value="${susUniDto.id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>count</label></th>
									<td>
										<input type="text" id="susUniDto.count" name="susUniDto.count" value="${susUniDto.count}" class="easyui-validatebox" data-options="required:true,invalidMessage:'count不能为空',missingMessage:'count不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_date</label></th>
									<td>
										<input type="text" id="susUniDto.trans_date" name="susUniDto.trans_date" value="${susUniDto.trans_date}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_date不能为空',missingMessage:'trans_date不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_amt</label></th>
									<td>
										<input type="text" id="susUniDto.trans_amt" name="susUniDto.trans_amt" value="${susUniDto.trans_amt}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_amt不能为空',missingMessage:'trans_amt不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>status</label></th>
									<td>
										<input type="text" id="susUniDto.status" name="susUniDto.status" value="${susUniDto.status}" class="easyui-validatebox" data-options="required:true,invalidMessage:'status不能为空',missingMessage:'status不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>order_id</label></th>
									<td>
										<input type="text" id="susUniDto.order_id" name="susUniDto.order_id" value="${susUniDto.order_id}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'order_id必须为数字',missingMessage:'order_id必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>card_id</label></th>
									<td>
										<input type="text" id="susUniDto.card_id" name="susUniDto.card_id" value="${susUniDto.card_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'card_id不能为空',missingMessage:'card_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>sub_mer_id</label></th>
									<td>
										<input type="text" id="susUniDto.sub_mer_id" name="susUniDto.sub_mer_id" value="${susUniDto.sub_mer_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'sub_mer_id不能为空',missingMessage:'sub_mer_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>mer_id</label></th>
									<td>
										<input type="text" id="susUniDto.mer_id" name="susUniDto.mer_id" value="${susUniDto.mer_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_id不能为空',missingMessage:'mer_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>mer_ord_id</label></th>
									<td>
										<input type="text" id="susUniDto.mer_ord_id" name="susUniDto.mer_ord_id" value="${susUniDto.mer_ord_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_ord_id不能为空',missingMessage:'mer_ord_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>order_mer_id</label></th>
									<td>
										<input type="text" id="susUniDto.order_mer_id" name="susUniDto.order_mer_id" value="${susUniDto.order_mer_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'order_mer_id不能为空',missingMessage:'order_mer_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>date</label></th>
									<td>
										<input type="text" id="susUniDto.date" name="susUniDto.date" value="${susUniDto.date}" class="easyui-validatebox" data-options="required:true,invalidMessage:'date不能为空',missingMessage:'date不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delSusUniFrom" name="delSusUniFrom" method="post" action="delSusUniAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${susUniDto.id}" />
			</form>
		</div>
	</div>
</div>