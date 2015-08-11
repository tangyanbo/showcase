package com.shiyue.bbs.dao;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.FaiPayInfo2newDto;
import com.shiyue.bbs.model.FaiPayInfo2newQueryBean;
import com.hercules.database.dao.BaseDao;

/**
 * 类功能:自动代码生成模板 IDao 模板
 * <p>创建者:</p>
 * <p>创建时间:</p>
 * <p>修改者:</p>
 * <p>修改时间:</p>
 * <p>修改原因：</p>
 * <p>审核者:</p>
 * <p>审核时间:</p>
 * <p>审核意见：</p>
 */
public interface IFaiPayInfo2newDao extends BaseDao<FaiPayInfo2newDto,String>{	

	/****
	 * 
	 * @param faiPayInfo2newQueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryFaiPayInfo2newListPage(FaiPayInfo2newQueryBean faiPayInfo2newQueryBean,PagingObject pagingObject) throws Exception;
}
