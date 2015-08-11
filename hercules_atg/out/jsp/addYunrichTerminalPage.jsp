<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addYunrichTerminalFrom" name="addYunrichTerminalFrom" method="post" action="addYunrichTerminalAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>pos_dev_id</label></th>
							<td>
								<input type="text" id="yunrichTerminalDto.pos_dev_id" name="yunrichTerminalDto.pos_dev_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'pos_dev_id不能为空',missingMessage:'pos_dev_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>file_code</label></th>
							<td>
								<input type="text" id="yunrichTerminalDto.file_code" name="yunrichTerminalDto.file_code" class="easyui-validatebox" data-options="required:true,invalidMessage:'file_code不能为空',missingMessage:'file_code不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>sec_main_key</label></th>
							<td>
								<input type="text" id="yunrichTerminalDto.sec_main_key" name="yunrichTerminalDto.sec_main_key" class="easyui-validatebox" data-options="required:true,invalidMessage:'sec_main_key不能为空',missingMessage:'sec_main_key不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>main_key</label></th>
							<td>
								<input type="text" id="yunrichTerminalDto.main_key" name="yunrichTerminalDto.main_key" class="easyui-validatebox" data-options="required:true,invalidMessage:'main_key不能为空',missingMessage:'main_key不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>date</label></th>
							<td>
								<input type="text" id="yunrichTerminalDto.date" name="yunrichTerminalDto.date" class="easyui-validatebox" data-options="required:true,invalidMessage:'date不能为空',missingMessage:'date不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>time</label></th>
							<td>
								<input type="text" id="yunrichTerminalDto.time" name="yunrichTerminalDto.time" class="easyui-validatebox" data-options="required:true,invalidMessage:'time不能为空',missingMessage:'time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>machine_no</label></th>
							<td>
								<input type="text" id="yunrichTerminalDto.machine_no" name="yunrichTerminalDto.machine_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'machine_no不能为空',missingMessage:'machine_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>bk_term_id</label></th>
							<td>
								<input type="text" id="yunrichTerminalDto.bk_term_id" name="yunrichTerminalDto.bk_term_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'bk_term_id不能为空',missingMessage:'bk_term_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>bk_mer_id</label></th>
							<td>
								<input type="text" id="yunrichTerminalDto.bk_mer_id" name="yunrichTerminalDto.bk_mer_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'bk_mer_id不能为空',missingMessage:'bk_mer_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>batch_id</label></th>
							<td>
								<input type="text" id="yunrichTerminalDto.batch_id" name="yunrichTerminalDto.batch_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'batch_id不能为空',missingMessage:'batch_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>pin_key</label></th>
							<td>
								<input type="text" id="yunrichTerminalDto.pin_key" name="yunrichTerminalDto.pin_key" class="easyui-validatebox" data-options="required:true,invalidMessage:'pin_key不能为空',missingMessage:'pin_key不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>pack_key</label></th>
							<td>
								<input type="text" id="yunrichTerminalDto.pack_key" name="yunrichTerminalDto.pack_key" class="easyui-validatebox" data-options="required:true,invalidMessage:'pack_key不能为空',missingMessage:'pack_key不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mac_key</label></th>
							<td>
								<input type="text" id="yunrichTerminalDto.mac_key" name="yunrichTerminalDto.mac_key" class="easyui-validatebox" data-options="required:true,invalidMessage:'mac_key不能为空',missingMessage:'mac_key不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>create_date</label></th>
							<td>
								<input type="text" id="yunrichTerminalDto.create_date" name="yunrichTerminalDto.create_date" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_date不能为空',missingMessage:'create_date不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>create_time</label></th>
							<td>
								<input type="text" id="yunrichTerminalDto.create_time" name="yunrichTerminalDto.create_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>ext</label></th>
							<td>
								<input type="text" id="yunrichTerminalDto.ext" name="yunrichTerminalDto.ext" class="easyui-validatebox" data-options="required:true,invalidMessage:'ext不能为空',missingMessage:'ext不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>ext1</label></th>
							<td>
								<input type="text" id="yunrichTerminalDto.ext1" name="yunrichTerminalDto.ext1" class="easyui-validatebox" data-options="required:true,invalidMessage:'ext1不能为空',missingMessage:'ext1不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>pos_id</label></th>
							<td>
								<input type="text" id="yunrichTerminalDto.pos_id" name="yunrichTerminalDto.pos_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'pos_id不能为空',missingMessage:'pos_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>