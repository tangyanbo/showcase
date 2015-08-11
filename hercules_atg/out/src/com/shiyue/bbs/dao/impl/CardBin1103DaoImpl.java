package com.shiyue.bbs.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.CardBin1103Dto;
import  com.shiyue.bbs.dao.ICardBin1103Dao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  com.shiyue.bbs.model.dto.CardBin1103Dto;
import com.shiyue.bbs.model.CardBin1103QueryBean;

/**
 * 类功能:自动代码生成模板 DaoImpl 模板
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
@Service("cardBin1103Dao")
public class CardBin1103DaoImpl extends BaseDaoImpl<CardBin1103Dto, String> implements ICardBin1103Dao{
	public CardBin1103DaoImpl() {
		super(CardBin1103Dto.class);
	}
	
	
	/****
	 * 
	 * @param cardBin1103QueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryCardBin1103ListPage(CardBin1103QueryBean cardBin1103QueryBean,PagingObject pagingObject) throws Exception
	 {	
		cardBin1103QueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("cardBin1103.select_cardBin1103List_count",cardBin1103QueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List cardBin1103List = this.getSqlMapClientTemplate().queryForList("cardBin1103.select_cardBin1103List", cardBin1103QueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(cardBin1103List);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}
