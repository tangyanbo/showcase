<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editSubMerInfoDeletedFrom" name="editSubMerInfoDeletedFrom" method="post" action="editSubMerInfoDeletedAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="subMerInfoDeletedDto.id" name="subMerInfoDeletedDto.id" value="${subMerInfoDeletedDto.id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>sub_mer_id</label></th>
									<td>
										<input type="text" id="subMerInfoDeletedDto.sub_mer_id" name="subMerInfoDeletedDto.sub_mer_id" value="${subMerInfoDeletedDto.sub_mer_id}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'sub_mer_id必须为数字',missingMessage:'sub_mer_id必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>prefix_id</label></th>
									<td>
										<input type="text" id="subMerInfoDeletedDto.prefix_id" name="subMerInfoDeletedDto.prefix_id" value="${subMerInfoDeletedDto.prefix_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'prefix_id不能为空',missingMessage:'prefix_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>suffix_id</label></th>
									<td>
										<input type="text" id="subMerInfoDeletedDto.suffix_id" name="subMerInfoDeletedDto.suffix_id" value="${subMerInfoDeletedDto.suffix_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'suffix_id不能为空',missingMessage:'suffix_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved</label></th>
									<td>
										<input type="text" id="subMerInfoDeletedDto.reserved" name="subMerInfoDeletedDto.reserved" value="${subMerInfoDeletedDto.reserved}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved不能为空',missingMessage:'reserved不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delSubMerInfoDeletedFrom" name="delSubMerInfoDeletedFrom" method="post" action="delSubMerInfoDeletedAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${subMerInfoDeletedDto.id}" />
			</form>
		</div>
	</div>
</div>