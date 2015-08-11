<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addSusUniAccFrom" name="addSusUniAccFrom" method="post" action="addSusUniAccAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>count</label></th>
							<td>
								<input type="text" id="susUniAccDto.count" name="susUniAccDto.count" class="easyui-validatebox" data-options="required:true,invalidMessage:'count不能为空',missingMessage:'count不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_date</label></th>
							<td>
								<input type="text" id="susUniAccDto.trans_date" name="susUniAccDto.trans_date" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_date不能为空',missingMessage:'trans_date不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_amt</label></th>
							<td>
								<input type="text" id="susUniAccDto.trans_amt" name="susUniAccDto.trans_amt" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_amt不能为空',missingMessage:'trans_amt不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>status</label></th>
							<td>
								<input type="text" id="susUniAccDto.status" name="susUniAccDto.status" class="easyui-validatebox" data-options="required:true,invalidMessage:'status不能为空',missingMessage:'status不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>order_id</label></th>
							<td>
								<input type="text" id="susUniAccDto.order_id" name="susUniAccDto.order_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'order_id不能为空',missingMessage:'order_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>card_id</label></th>
							<td>
								<input type="text" id="susUniAccDto.card_id" name="susUniAccDto.card_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'card_id不能为空',missingMessage:'card_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>sub_mer_id</label></th>
							<td>
								<input type="text" id="susUniAccDto.sub_mer_id" name="susUniAccDto.sub_mer_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'sub_mer_id不能为空',missingMessage:'sub_mer_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_id</label></th>
							<td>
								<input type="text" id="susUniAccDto.mer_id" name="susUniAccDto.mer_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_id不能为空',missingMessage:'mer_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_ord_id</label></th>
							<td>
								<input type="text" id="susUniAccDto.mer_ord_id" name="susUniAccDto.mer_ord_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_ord_id不能为空',missingMessage:'mer_ord_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>order_mer_id</label></th>
							<td>
								<input type="text" id="susUniAccDto.order_mer_id" name="susUniAccDto.order_mer_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'order_mer_id不能为空',missingMessage:'order_mer_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>date</label></th>
							<td>
								<input type="text" id="susUniAccDto.date" name="susUniAccDto.date" class="easyui-validatebox" data-options="required:true,invalidMessage:'date不能为空',missingMessage:'date不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>sys_ref_num</label></th>
							<td>
								<input type="text" id="susUniAccDto.sys_ref_num" name="susUniAccDto.sys_ref_num" class="easyui-validatebox" data-options="required:true,invalidMessage:'sys_ref_num不能为空',missingMessage:'sys_ref_num不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>sys_tra_num</label></th>
							<td>
								<input type="text" id="susUniAccDto.sys_tra_num" name="susUniAccDto.sys_tra_num" class="easyui-validatebox" data-options="required:true,invalidMessage:'sys_tra_num不能为空',missingMessage:'sys_tra_num不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>card_id_1</label></th>
							<td>
								<input type="text" id="susUniAccDto.card_id_1" name="susUniAccDto.card_id_1" class="easyui-validatebox" data-options="required:true,invalidMessage:'card_id_1不能为空',missingMessage:'card_id_1不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>return_code</label></th>
							<td>
								<input type="text" id="susUniAccDto.return_code" name="susUniAccDto.return_code" class="easyui-validatebox" data-options="required:true,invalidMessage:'return_code不能为空',missingMessage:'return_code不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_type</label></th>
							<td>
								<input type="text" id="susUniAccDto.trans_type" name="susUniAccDto.trans_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_type不能为空',missingMessage:'trans_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>