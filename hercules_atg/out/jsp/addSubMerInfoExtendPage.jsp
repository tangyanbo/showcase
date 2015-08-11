<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addSubMerInfoExtendFrom" name="addSubMerInfoExtendFrom" method="post" action="addSubMerInfoExtendAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>reg_cap</label></th>
							<td>
								<input type="text" id="subMerInfoExtendDto.reg_cap" name="subMerInfoExtendDto.reg_cap" class="easyui-validatebox" data-options="required:true,invalidMessage:'reg_cap不能为空',missingMessage:'reg_cap不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>sett_bank_code</label></th>
							<td>
								<input type="text" id="subMerInfoExtendDto.sett_bank_code" name="subMerInfoExtendDto.sett_bank_code" class="easyui-validatebox" data-options="required:true,invalidMessage:'sett_bank_code不能为空',missingMessage:'sett_bank_code不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>sett_bank_name</label></th>
							<td>
								<input type="text" id="subMerInfoExtendDto.sett_bank_name" name="subMerInfoExtendDto.sett_bank_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'sett_bank_name不能为空',missingMessage:'sett_bank_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>channel</label></th>
							<td>
								<input type="text" id="subMerInfoExtendDto.channel" name="subMerInfoExtendDto.channel" class="easyui-validatebox" data-options="required:true,invalidMessage:'channel不能为空',missingMessage:'channel不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>sign_date</label></th>
							<td>
								<input type="text" id="subMerInfoExtendDto.sign_date" name="subMerInfoExtendDto.sign_date" class="easyui-validatebox" data-options="required:true,invalidMessage:'sign_date不能为空',missingMessage:'sign_date不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>sign_person</label></th>
							<td>
								<input type="text" id="subMerInfoExtendDto.sign_person" name="subMerInfoExtendDto.sign_person" class="easyui-validatebox" data-options="required:true,invalidMessage:'sign_person不能为空',missingMessage:'sign_person不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>province</label></th>
							<td>
								<input type="text" id="subMerInfoExtendDto.province" name="subMerInfoExtendDto.province" class="easyui-validatebox" data-options="required:true,invalidMessage:'province不能为空',missingMessage:'province不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>city</label></th>
							<td>
								<input type="text" id="subMerInfoExtendDto.city" name="subMerInfoExtendDto.city" class="easyui-validatebox" data-options="required:true,invalidMessage:'city不能为空',missingMessage:'city不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>sett_bank_pro</label></th>
							<td>
								<input type="text" id="subMerInfoExtendDto.sett_bank_pro" name="subMerInfoExtendDto.sett_bank_pro" class="easyui-validatebox" data-options="required:true,invalidMessage:'sett_bank_pro不能为空',missingMessage:'sett_bank_pro不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>sett_bank_city</label></th>
							<td>
								<input type="text" id="subMerInfoExtendDto.sett_bank_city" name="subMerInfoExtendDto.sett_bank_city" class="easyui-validatebox" data-options="required:true,invalidMessage:'sett_bank_city不能为空',missingMessage:'sett_bank_city不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>sett_super_bank_code</label></th>
							<td>
								<input type="text" id="subMerInfoExtendDto.sett_super_bank_code" name="subMerInfoExtendDto.sett_super_bank_code" class="easyui-validatebox" data-options="required:true,invalidMessage:'sett_super_bank_code不能为空',missingMessage:'sett_super_bank_code不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>sett_super_bank_name</label></th>
							<td>
								<input type="text" id="subMerInfoExtendDto.sett_super_bank_name" name="subMerInfoExtendDto.sett_super_bank_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'sett_super_bank_name不能为空',missingMessage:'sett_super_bank_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>