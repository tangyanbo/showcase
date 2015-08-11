<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editFactoryCodeFrom" name="editFactoryCodeFrom" method="post" action="editFactoryCodeAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="factoryCodeDto.id" name="factoryCodeDto.id" value="${factoryCodeDto.id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>factory_no</label></th>
									<td>
										<input type="text" id="factoryCodeDto.factory_no" name="factoryCodeDto.factory_no" value="${factoryCodeDto.factory_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'factory_no不能为空',missingMessage:'factory_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>factory_name</label></th>
									<td>
										<input type="text" id="factoryCodeDto.factory_name" name="factoryCodeDto.factory_name" value="${factoryCodeDto.factory_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'factory_name不能为空',missingMessage:'factory_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved1</label></th>
									<td>
										<input type="text" id="factoryCodeDto.reserved1" name="factoryCodeDto.reserved1" value="${factoryCodeDto.reserved1}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved1不能为空',missingMessage:'reserved1不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved2</label></th>
									<td>
										<input type="text" id="factoryCodeDto.reserved2" name="factoryCodeDto.reserved2" value="${factoryCodeDto.reserved2}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved2不能为空',missingMessage:'reserved2不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved3</label></th>
									<td>
										<input type="text" id="factoryCodeDto.reserved3" name="factoryCodeDto.reserved3" value="${factoryCodeDto.reserved3}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved3不能为空',missingMessage:'reserved3不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delFactoryCodeFrom" name="delFactoryCodeFrom" method="post" action="delFactoryCodeAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${factoryCodeDto.id}" />
			</form>
		</div>
	</div>
</div>