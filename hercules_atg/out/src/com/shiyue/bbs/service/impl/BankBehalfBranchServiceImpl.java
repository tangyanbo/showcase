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
import com.shiyue.bbs.dao.IBankBehalfBranchDao;
import com.shiyue.bbs.model.dto.BankBehalfBranchDto;
import com.shiyue.bbs.model.BankBehalfBranchQueryBean;
import com.shiyue.bbs.service.IBankBehalfBranchService;


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
@Service("bankBehalfBranchService")
@Transactional (propagation = Propagation.REQUIRED,isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class BankBehalfBranchServiceImpl extends GenericServiceImpl<BankBehalfBranchDto, String> implements IBankBehalfBranchService{
    @Autowired
    private IBankBehalfBranchDao   bankBehalfBranchDao;

	public BaseDao<BankBehalfBranchDto, String> getBaseDao() {
		return bankBehalfBranchDao;
	}
	

	/****
	 * @param  bankBehalfBranchQueryBean
	 * @param  pagingObject
	 * @return PageResult
	 * @throws Exception
	 */
	 public PageResult queryBankBehalfBranchListPage(BankBehalfBranchQueryBean bankBehalfBranchQueryBean,PagingObject pagingObject) throws Exception
	 {	
		 	return this.bankBehalfBranchDao.queryBankBehalfBranchListPage(bankBehalfBranchQueryBean, pagingObject);
	 }
	
}
