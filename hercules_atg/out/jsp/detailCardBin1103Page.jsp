<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editCardBin1103From" name="editCardBin1103From" method="post" action="editCardBin1103Action.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>bank_id</label></th>
								<td>
									<input type="text" id="cardBin1103Dto.bank_id" name="cardBin1103Dto.bank_id"  value="${cardBin1103Dto.bank_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>bank_name</label></th>
								<td>
									<input type="text" id="cardBin1103Dto.bank_name" name="cardBin1103Dto.bank_name"  value="${cardBin1103Dto.bank_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_no_length</label></th>
								<td>
									<input type="text" id="cardBin1103Dto.card_no_length" name="cardBin1103Dto.card_no_length"  value="${cardBin1103Dto.card_no_length}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_bin</label></th>
								<td>
									<input type="text" id="cardBin1103Dto.card_bin" name="cardBin1103Dto.card_bin"  value="${cardBin1103Dto.card_bin}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>upop_flag</label></th>
								<td>
									<input type="text" id="cardBin1103Dto.upop_flag" name="cardBin1103Dto.upop_flag"  value="${cardBin1103Dto.upop_flag}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_type</label></th>
								<td>
									<input type="text" id="cardBin1103Dto.card_type" name="cardBin1103Dto.card_type"  value="${cardBin1103Dto.card_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>bank_short_name</label></th>
								<td>
									<input type="text" id="cardBin1103Dto.bank_short_name" name="cardBin1103Dto.bank_short_name"  value="${cardBin1103Dto.bank_short_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>