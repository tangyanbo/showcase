package com.shiyue.bbs.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.CardBinDto;
import  com.shiyue.bbs.dao.ICardBinDao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  com.shiyue.bbs.model.dto.CardBinDto;
import com.shiyue.bbs.model.CardBinQueryBean;

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
@Service("cardBinDao")
public class CardBinDaoImpl extends BaseDaoImpl<CardBinDto, String> implements ICardBinDao{
	public CardBinDaoImpl() {
		super(CardBinDto.class);
	}
	
	
	/****
	 * 
	 * @param cardBinQueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryCardBinListPage(CardBinQueryBean cardBinQueryBean,PagingObject pagingObject) throws Exception
	 {	
		cardBinQueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("cardBin.select_cardBinList_count",cardBinQueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List cardBinList = this.getSqlMapClientTemplate().queryForList("cardBin.select_cardBinList", cardBinQueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(cardBinList);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}
