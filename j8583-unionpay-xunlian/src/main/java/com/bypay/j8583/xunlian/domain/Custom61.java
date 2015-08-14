package com.bypay.j8583.xunlian.domain;

/**
 * 域61：原始信息域(Original Message)
 * 
 * @author qjj 具体说明参照银联文档
 * 
 */
public class Custom61
{
	private String orderId; // 交易订单号
	private String orgOrderId; // 原订单号
	private String cvn;// cvn
	private String transKey;// 交易密钥
	private String account2;
	private String dispName;// 商户名称
	private String cardMark;// 示随后记录为卡号或存折号(0:卡,1:折)代扣使用
	private String openBankId;// 开户行号如‘中国工商银行’代号：0102

	public String getAccount2()
	{
		return account2;
	}

	public String getCardMark()
	{
		return cardMark;
	}

	public void setCardMark(String cardMark)
	{
		this.cardMark = cardMark;
	}

	public String getOpenBankId()
	{
		return openBankId;
	}

	public void setOpenBankId(String openBankId)
	{
		this.openBankId = openBankId;
	}

	public void setAccount2(String account2)
	{
		this.account2 = account2;
	}

	public String getOrderId()
	{
		return orderId;
	}

	public void setOrderId(String orderId)
	{
		this.orderId = orderId;
	}

	public String getOrgOrderId()
	{
		return orgOrderId;
	}

	public void setOrgOrderId(String orgOrderId)
	{
		this.orgOrderId = orgOrderId;
	}

	public String getCvn()
	{
		return cvn;
	}

	public void setCvn(String cvn)
	{
		this.cvn = cvn;
	}

	public String getTransKey()
	{
		return transKey;
	}

	public void setTransKey(String transKey)
	{
		this.transKey = transKey;
	}

	@Override
	public String toString()
	{
		StringBuilder sb = new StringBuilder();
		int flag = 0;
		if (orderId != null)
		{
			sb.append(String.format("%02d", orderId.length() + 2));
			sb.append("01");
			sb.append(orderId);
			flag++;
		}
		if (orgOrderId != null)
		{
			sb.append(String.format("%02d", orgOrderId.length() + 2));
			sb.append("02");
			sb.append(orgOrderId);
			flag++;
		}
		if (cvn != null)
		{
			sb.append(String.format("%02d", cvn.length() + 2));
			sb.append("03");
			sb.append(cvn);
			flag++;
		}
		if (transKey != null)
		{
			sb.append(String.format("%02d", transKey.length() + 2));
			sb.append("04");
			sb.append(transKey);
			flag++;
		}
		if (account2 != null)
		{
			sb.append(String.format("%02d", account2.length() + 2));
			sb.append("06");
			sb.append(account2);
			flag++;
		}
		if (dispName != null)
		{
			sb.append(String.format("%02d", dispName.length() + 2));
			sb.append("07");
			sb.append(dispName);
			flag++;
		}
		if (cardMark != null)
		{
			sb.append(String.format("%02d", cardMark.length() + 2));
			sb.append("08");
			sb.append(cardMark);
			flag++;
		}
		if (openBankId != null)
		{
			sb.append(String.format("%02d", openBankId.length() + 2));
			sb.append("09");
			sb.append(openBankId);
			flag++;
		}
		sb.insert(0, String.format("%02d", flag));
		return sb.toString();
	}

	public String getDispName()
	{
		return dispName;
	}

	public void setDispName(String dispName)
	{
		this.dispName = dispName;
	}

}
