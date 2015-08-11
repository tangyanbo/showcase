<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editCardBinNewFrom" name="editCardBinNewFrom" method="post" action="editCardBinNewAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>bank_id</label></th>
								<td>
									<input type="text" id="cardBinNewDto.bank_id" name="cardBinNewDto.bank_id"  value="${cardBinNewDto.bank_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>bank_name</label></th>
								<td>
									<input type="text" id="cardBinNewDto.bank_name" name="cardBinNewDto.bank_name"  value="${cardBinNewDto.bank_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_no_length</label></th>
								<td>
									<input type="text" id="cardBinNewDto.card_no_length" name="cardBinNewDto.card_no_length"  value="${cardBinNewDto.card_no_length}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_bin</label></th>
								<td>
									<input type="text" id="cardBinNewDto.card_bin" name="cardBinNewDto.card_bin"  value="${cardBinNewDto.card_bin}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>upop_flag</label></th>
								<td>
									<input type="text" id="cardBinNewDto.upop_flag" name="cardBinNewDto.upop_flag"  value="${cardBinNewDto.upop_flag}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_type</label></th>
								<td>
									<input type="text" id="cardBinNewDto.card_type" name="cardBinNewDto.card_type"  value="${cardBinNewDto.card_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>bank_short_name</label></th>
								<td>
									<input type="text" id="cardBinNewDto.bank_short_name" name="cardBinNewDto.bank_short_name"  value="${cardBinNewDto.bank_short_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>