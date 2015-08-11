<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editCardBinFrom" name="editCardBinFrom" method="post" action="editCardBinAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>bank_id</label></th>
								<td>
									<input type="text" id="cardBinDto.bank_id" name="cardBinDto.bank_id"  value="${cardBinDto.bank_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>bank_name</label></th>
								<td>
									<input type="text" id="cardBinDto.bank_name" name="cardBinDto.bank_name"  value="${cardBinDto.bank_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_no_length</label></th>
								<td>
									<input type="text" id="cardBinDto.card_no_length" name="cardBinDto.card_no_length"  value="${cardBinDto.card_no_length}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_bin</label></th>
								<td>
									<input type="text" id="cardBinDto.card_bin" name="cardBinDto.card_bin"  value="${cardBinDto.card_bin}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>upop_flag</label></th>
								<td>
									<input type="text" id="cardBinDto.upop_flag" name="cardBinDto.upop_flag"  value="${cardBinDto.upop_flag}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_type</label></th>
								<td>
									<input type="text" id="cardBinDto.card_type" name="cardBinDto.card_type"  value="${cardBinDto.card_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>bank_short_name</label></th>
								<td>
									<input type="text" id="cardBinDto.bank_short_name" name="cardBinDto.bank_short_name"  value="${cardBinDto.bank_short_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>