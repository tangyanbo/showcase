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
import com.shiyue.bbs.dao.ICardBin1103Dao;
import com.shiyue.bbs.model.dto.CardBin1103Dto;
import com.shiyue.bbs.model.CardBin1103QueryBean;
import com.shiyue.bbs.service.ICardBin1103Service;


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
@Service("cardBin1103Service")
@Transactional (propagation = Propagation.REQUIRED,isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class CardBin1103ServiceImpl extends GenericServiceImpl<CardBin1103Dto, String> implements ICardBin1103Service{
    @Autowired
    private ICardBin1103Dao   cardBin1103Dao;

	public BaseDao<CardBin1103Dto, String> getBaseDao() {
		return cardBin1103Dao;
	}
	

	/****
	 * @param  cardBin1103QueryBean
	 * @param  pagingObject
	 * @return PageResult
	 * @throws Exception
	 */
	 public PageResult queryCardBin1103ListPage(CardBin1103QueryBean cardBin1103QueryBean,PagingObject pagingObject) throws Exception
	 {	
		 	return this.cardBin1103Dao.queryCardBin1103ListPage(cardBin1103QueryBean, pagingObject);
	 }
	
}
