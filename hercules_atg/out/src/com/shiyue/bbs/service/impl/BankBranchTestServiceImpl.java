package com.shiyue.bbs.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.hercules.database.dao.BaseDao;
import com.hercules.database.service.impl.GenericServiceImpl;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import com.shiyue.bbs.dao.IBankBranchTestDao;
import com.shiyue.bbs.model.dto.BankBranchTestDto;
import com.shiyue.bbs.model.BankBranchTestQueryBean;
import com.shiyue.bbs.service.IBankBranchTestService;


/**
 * 类功能:自动代码生成模板 ServiceImpl 模板
 * <p>创建者:</p>
 * <p>创建时间:</p>
 * <p>修改者:</p>
 * <p>修改时间:</p>
 * <p>修改原因：</p>
 * <p>审核者:</p>
 * <p>审核时间:</p>
 * <p>审核意见：</p>
 */

@Scope("prototype")
@Service("bankBranchTestService")
@Transactional (propagation = Propagation.REQUIRED,isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class BankBranchTestServiceImpl extends GenericServiceImpl<BankBranchTestDto, String> implements IBankBranchTestService{
    @Autowired
    private IBankBranchTestDao   bankBranchTestDao;

	public BaseDao<BankBranchTestDto, String> getBaseDao() {
		return bankBranchTestDao;
	}
	

	/****
	 * @param  bankBranchTestQueryBean
	 * @param  pagingObject
	 * @return PageResult
	 * @throws Exception
	 */
	 public PageResult queryBankBranchTestListPage(BankBranchTestQueryBean bankBranchTestQueryBean,PagingObject pagingObject) throws Exception
	 {	
		 	return this.bankBranchTestDao.queryBankBranchTestListPage(bankBranchTestQueryBean, pagingObject);
	 }
	
}
