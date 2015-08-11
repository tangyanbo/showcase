<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addOrderProfitFrom" name="addOrderProfitFrom" method="post" action="addOrderProfitAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>order_id</label></th>
							<td>
								<input type="text" id="orderProfitDto.order_id" name="orderProfitDto.order_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'order_id必须为数字',missingMessage:'order_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_sys_id</label></th>
							<td>
								<input type="text" id="orderProfitDto.mer_sys_id" name="orderProfitDto.mer_sys_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_sys_id必须为数字',missingMessage:'mer_sys_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_amt</label></th>
							<td>
								<input type="text" id="orderProfitDto.mer_amt" name="orderProfitDto.mer_amt" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_amt必须为数字',missingMessage:'mer_amt必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_profit</label></th>
							<td>
								<input type="text" id="orderProfitDto.mer_profit" name="orderProfitDto.mer_profit" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_profit必须为数字',missingMessage:'mer_profit必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_rate</label></th>
							<td>
								<input type="text" id="orderProfitDto.mer_rate" name="orderProfitDto.mer_rate" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_rate必须为数字',missingMessage:'mer_rate必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_hight_fee</label></th>
							<td>
								<input type="text" id="orderProfitDto.mer_hight_fee" name="orderProfitDto.mer_hight_fee" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_hight_fee必须为数字',missingMessage:'mer_hight_fee必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>agent_l1_id</label></th>
							<td>
								<input type="text" id="orderProfitDto.agent_l1_id" name="orderProfitDto.agent_l1_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'agent_l1_id必须为数字',missingMessage:'agent_l1_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>agent1_profit</label></th>
							<td>
								<input type="text" id="orderProfitDto.agent1_profit" name="orderProfitDto.agent1_profit" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'agent1_profit必须为数字',missingMessage:'agent1_profit必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>agent1_rate</label></th>
							<td>
								<input type="text" id="orderProfitDto.agent1_rate" name="orderProfitDto.agent1_rate" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'agent1_rate必须为数字',missingMessage:'agent1_rate必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>agent1_hight_fee</label></th>
							<td>
								<input type="text" id="orderProfitDto.agent1_hight_fee" name="orderProfitDto.agent1_hight_fee" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'agent1_hight_fee必须为数字',missingMessage:'agent1_hight_fee必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>agent_l2_id</label></th>
							<td>
								<input type="text" id="orderProfitDto.agent_l2_id" name="orderProfitDto.agent_l2_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'agent_l2_id必须为数字',missingMessage:'agent_l2_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>agent2_profit</label></th>
							<td>
								<input type="text" id="orderProfitDto.agent2_profit" name="orderProfitDto.agent2_profit" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'agent2_profit必须为数字',missingMessage:'agent2_profit必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>agent2_rate</label></th>
							<td>
								<input type="text" id="orderProfitDto.agent2_rate" name="orderProfitDto.agent2_rate" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'agent2_rate必须为数字',missingMessage:'agent2_rate必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>agent2_hight_fee</label></th>
							<td>
								<input type="text" id="orderProfitDto.agent2_hight_fee" name="orderProfitDto.agent2_hight_fee" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'agent2_hight_fee必须为数字',missingMessage:'agent2_hight_fee必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>plat_id</label></th>
							<td>
								<input type="text" id="orderProfitDto.plat_id" name="orderProfitDto.plat_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'plat_id必须为数字',missingMessage:'plat_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>plat_profit</label></th>
							<td>
								<input type="text" id="orderProfitDto.plat_profit" name="orderProfitDto.plat_profit" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'plat_profit必须为数字',missingMessage:'plat_profit必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>bypay_profit</label></th>
							<td>
								<input type="text" id="orderProfitDto.bypay_profit" name="orderProfitDto.bypay_profit" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'bypay_profit必须为数字',missingMessage:'bypay_profit必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>tract_fee</label></th>
							<td>
								<input type="text" id="orderProfitDto.tract_fee" name="orderProfitDto.tract_fee" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'tract_fee必须为数字',missingMessage:'tract_fee必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>tract_bypay_profit</label></th>
							<td>
								<input type="text" id="orderProfitDto.tract_bypay_profit" name="orderProfitDto.tract_bypay_profit" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'tract_bypay_profit必须为数字',missingMessage:'tract_bypay_profit必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>tract_acqbank_profit</label></th>
							<td>
								<input type="text" id="orderProfitDto.tract_acqbank_profit" name="orderProfitDto.tract_acqbank_profit" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'tract_acqbank_profit必须为数字',missingMessage:'tract_acqbank_profit必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>tract_cost</label></th>
							<td>
								<input type="text" id="orderProfitDto.tract_cost" name="orderProfitDto.tract_cost" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'tract_cost必须为数字',missingMessage:'tract_cost必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved</label></th>
							<td>
								<input type="text" id="orderProfitDto.reserved" name="orderProfitDto.reserved" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved不能为空',missingMessage:'reserved不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>create_time</label></th>
							<td>
								<input type="text" id="orderProfitDto.create_time" name="orderProfitDto.create_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>sub_mer_rate</label></th>
							<td>
								<input type="text" id="orderProfitDto.sub_mer_rate" name="orderProfitDto.sub_mer_rate" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'sub_mer_rate必须为数字',missingMessage:'sub_mer_rate必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>sub_mer_hight_fee</label></th>
							<td>
								<input type="text" id="orderProfitDto.sub_mer_hight_fee" name="orderProfitDto.sub_mer_hight_fee" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'sub_mer_hight_fee必须为数字',missingMessage:'sub_mer_hight_fee必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>create_date</label></th>
							<td>
								<input type="text" id="orderProfitDto.create_date" name="orderProfitDto.create_date" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_date不能为空',missingMessage:'create_date不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>