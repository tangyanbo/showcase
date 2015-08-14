package com.bypay.j8583.xunlian.custom;

import com.bypay.j8583.xunlian.CustomBinaryField;
import com.bypay.j8583.xunlian.domain.Custom61;
import com.bypay.j8583.xunlian.tool.StringUtil;



public class Custom61Impl implements CustomBinaryField<Custom61>
{

	@Override
	public Custom61 decodeField(String value)
	{
		Custom61 custom61 = new Custom61();
		String dataTmp=new String(value);
		int size=Integer.parseInt(dataTmp.substring(0, 2));
		dataTmp=dataTmp.substring(2);
		for(int i=0;i<size;i++){
			int dataLen=Integer.parseInt(dataTmp.substring(0, 2));
			String flag=dataTmp.substring(2, 4);
			String dataSub=dataTmp.substring(4, 2+dataLen);
			if(i<size)
				dataTmp=dataTmp.substring(2+dataLen);
			System.out.println("flag:"+flag);
			System.out.println("dataSub:"+dataSub);
			if(flag.equals("01")){
				custom61.setOrderId(dataSub.trim());
			}else if(flag.equals("02")){
				custom61.setOrgOrderId(dataSub.trim());
			}else if(flag.equals("03")){
				custom61.setCvn(dataSub.trim());
			}else if(flag.equals("04")){
				custom61.setTransKey(dataSub.trim());
			}else if(flag.equals("06")){
				custom61.setAccount2(dataSub.trim());
			}else if(flag.equals("07"))
			{
				custom61.setDispName(dataSub.trim());
			}else if(flag.equals("08"))
			{
				custom61.setCardMark(dataSub.trim());
			}else if(flag.equals("09"))
			{
				custom61.setOpenBankId(dataSub.trim());
			}
		}
		return custom61;
	}

	@Override
	public String encodeField(Custom61 custom61)
	{
		StringBuilder sb = new StringBuilder();
		int flag = 0;

		if (!StringUtil.isEmpty(custom61.getOrderId()))
		{
			//sb.append(UnionpayTools.addRightSpace(String.valueOf(custom61.getOrderId().length()), 2));
			sb.append(String.format("%02d", custom61.getOrderId().length() + 2));
			sb.append("01");
			sb.append(custom61.getOrderId());
			flag++;
		}
		if (!StringUtil.isEmpty(custom61.getOrgOrderId()))
		{
			//sb.append(UnionpayTools.addRightSpace(String.valueOf(custom61.getOrgOrderId().length()), 2));
			 sb.append(String.format("%02d", custom61.getOrgOrderId().length() + 2));
			sb.append("02");
			sb.append(custom61.getOrgOrderId());
			flag++;
		}
		if (!StringUtil.isEmpty(custom61.getCvn()))
		{
			//sb.append(UnionpayTools.addRightSpace(String.valueOf(custom61.getCvn().length()), 2));
			 sb.append(String.format("%02d", custom61.getCvn().length() + 2));
			sb.append("03");
			sb.append(custom61.getCvn());
			flag++;
		}
		if (!StringUtil.isEmpty(custom61.getTransKey()))
		{
			//sb.append(UnionpayTools.addRightSpace(String.valueOf(custom61.getTransKey().length()), 2));
			 sb.append(String.format("%02d", custom61.getTransKey().length() + 2));
			sb.append("04");
			sb.append(custom61.getTransKey());
			flag++;
		}
		
		if (!StringUtil.isEmpty(custom61.getAccount2()))
		{
			//sb.append(UnionpayTools.addRightSpace(String.valueOf(custom61.getAccount2().length()), 2));
			 sb.append(String.format("%02d",custom61.getAccount2().length() + 2));
			sb.append("06");
			sb.append(custom61.getAccount2());
			flag++;
		}
		if (!StringUtil.isEmpty(custom61.getDispName()))
		{
			//sb.append(UnionpayTools.addRightSpace(String.valueOf(custom61.getDispName().length()),2));
			 sb.append(String.format("%02d", custom61.getDispName().length() + 2));
			sb.append("07");
			sb.append(custom61.getDispName());
			flag++;
		}
		if (!StringUtil.isEmpty(custom61.getCardMark()))
		{
			//sb.append(UnionpayTools.addRightSpace(String.valueOf(custom61.getCardMark().length()), 2));
			 sb.append(String.format("%02d", custom61.getCardMark().length() + 2));
			sb.append("08");
			sb.append(custom61.getCardMark());
			flag++;
		}
		if (!StringUtil.isEmpty(custom61.getOpenBankId()))
		{
			//sb.append(UnionpayTools.addRightSpace(String.valueOf(custom61.getOpenBankId().length()), 2));
			 sb.append(String.format("%02d", custom61.getOpenBankId().length() + 2));
			sb.append("09");
			sb.append(custom61.getOpenBankId());
			flag++;
		}
		sb.insert(0, String.format("%02d", flag));
		return sb.toString();

	}

	@Override
	public Custom61 decodeBinaryField(byte[] value, int offset, int length)
	{
		String body = new String(value);
		return decodeField(body);
	}

	@Override
	public byte[] encodeBinaryField(Custom61 value)
	{
		return encodeField(value).getBytes();
	}
	
	public static void main(String[] args)
	{
		Custom61 custom61 = new Custom61();
		custom61.setOrderId("11111111111111111111111111111");
		Custom61Impl custom61Impl  = new Custom61Impl();
	byte[] bb=	custom61Impl.encodeBinaryField(custom61);
	System.out.println(new String(bb));
	}
}
