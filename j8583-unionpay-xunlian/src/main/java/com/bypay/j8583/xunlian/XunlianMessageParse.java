package com.bypay.j8583.xunlian;

import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.bypay.j8583.xunlian.tool.ByteUtil;
import com.bypay.j8583.xunlian.tool.DataConverter;
import com.bypay.j8583.xunlian.tool.DataDispose;

public class XunlianMessageParse implements MessageFactory<ISO64Message>
{
	static Logger logger = LoggerFactory.getLogger(XunlianMessageParse.class);
	private FieldCreater fieldCreater;

	public FieldCreater getFieldCreater()
	{
		return fieldCreater;
	}

	public void setFieldCreater(FieldCreater fieldCreater)
	{
		this.fieldCreater = fieldCreater;
	}

	@Override
	public ISO64Message createMessage()
	{
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ISO64Message createMessage(byte[] body)
	{
		ISO64Message message = new ISO64Message();
		int startPoint = 0;
		int endPoint = 0;
		startPoint = endPoint;
		endPoint = startPoint + 2;
		byte[] lens = Arrays.copyOfRange(body, startPoint, endPoint);
		int le = Integer.valueOf(DataConverter.bcd2Str(lens), 16);
		logger.info("数据长度--"+le);
		if(body.length<le)
		{
			logger.info("报文长度错");
			return null;
		}
		startPoint = endPoint;
		endPoint = startPoint + 5;
		byte[] tpdu = Arrays.copyOfRange(body, startPoint, endPoint);
		String tpdus = DataConverter.bcd2Str(tpdu);
		message.setTpdu(tpdus);
		logger.debug(tpdus+"---tpdu");
		startPoint = endPoint;
		endPoint = startPoint + 6;
		byte[] head =  Arrays.copyOfRange(body, startPoint, endPoint);
		String heads = DataConverter.bcd2Str(head);
		message.setIsoHeader(heads);
		logger.debug(heads+"---head");
		startPoint = endPoint;
		endPoint = startPoint + 2;
		byte[] messageType = Arrays.copyOfRange(body, startPoint, endPoint);
		String messageTypes = DataConverter.bcd2Str(messageType);
		message.setMessageType(messageTypes);
		logger.debug(messageTypes+"---messageType");
		endPoint = 15;
		startPoint = endPoint;
		endPoint = startPoint + 8;
		byte[] bitmap =  Arrays.copyOfRange(body, startPoint, endPoint);
		logger.debug(DataConverter.bcd2Str(bitmap)+"--bitmap");
		List<Integer> list = DataDispose.getBitMapPost(bitmap);
		logger.debug("位图信息"+list);
		FieldCreater creater = FieldCreater.getInstance();
		Map<Integer, Field> fields = new TreeMap<Integer, Field>();


		for (int i = 0; i < list.size(); i++)
		{
			logger.debug("位数--"+list.get(i));
			int length = 0;
			byte[] leng = new byte[0];
			Field field = creater.createFieldByPredefine(list.get(i));
			if (field.getFormat() == null)
				field.setFormat(FieldFormat.DEFAULT);
			switch (field.getFormat())
			{
			case ENCRYPT:
				startPoint = endPoint;
				endPoint += 2;
				leng = Arrays.copyOfRange(body, startPoint, endPoint);
				length = Integer.parseInt(DataConverter.bcd2Str(leng)) * 2;
				break;
			case LLLVAR:
				startPoint = endPoint;
				endPoint += 2;
				leng = Arrays.copyOfRange(body, startPoint, endPoint);
				length = Integer.parseInt(DataConverter.bcd2Str(leng));
				break;
			case LLVAR:
				startPoint = endPoint;
				endPoint += 1;
				leng = Arrays.copyOfRange(body, startPoint, endPoint);
				length = Integer.parseInt(DataConverter.bcd2Str(leng));
				break;

			default:
				length = field.getLength();

				break;
			}
			switch (field.getType())
			{
			case BCD:
				int realLength =(length+1)/2;
				startPoint = endPoint;
				endPoint += realLength;
				byte[] value = Arrays.copyOfRange(body, startPoint, endPoint);
				field.setValue(DataConverter.bcd2Str(value));
				if(length%2!=0)
				{
					field.setValue(DataConverter.bcd2Str(value).substring(0, length));
				}
				logger.debug("BCD数值---"+field.getValue());
				break;
			case LBCD:
				int realLength1 =(length+1)/2;
				startPoint = endPoint;
				endPoint += realLength1;
				byte[] value3 = Arrays.copyOfRange(body, startPoint, endPoint);
				field.setValue(DataConverter.bcd2Str(value3));
				if(length%2!=0)
				{
					String d1=(DataConverter.bcd2Str(value3));
					field.setValue(d1.substring(d1.length()-length, d1.length()));
				}
				logger.debug("LBCD数值---"+field.getValue());


				break;
			case ASCII:
				startPoint = endPoint;
				endPoint += length;
				byte[] value1 = Arrays.copyOfRange(body, startPoint, endPoint);
				try
				{
					field.setValue(new String(value1, "gbk"));
				} catch (UnsupportedEncodingException e)
				{
					logger.error("编码出错--",e);
					 throw new RuntimeException(e);
				}
				logger.debug("ASCII数值---"+field.getValue());
				break;
			case BINARY:
				startPoint = endPoint;
				endPoint += length;
				byte[] value2 = Arrays.copyOfRange(body, startPoint, endPoint);
				try
				{
					if(field.getNum()==62&&"0810".equalsIgnoreCase(messageTypes))
					{
						field.setValue(ByteUtil.convertByteArrayToHexStr(value2));
					}
					else
					{
						field.setValue(new String(value2, "gbk"));

					}
				} catch (UnsupportedEncodingException e)
				{
					logger.error("编码出错--",e);
					 throw new RuntimeException(e);

				}
				logger.debug("BINARY数值---"+field.getValue());
				break;

			default:
				break;
			}
			fields.put(field.getNum(), field);
		}

	
		message.setFields(fields);

		return message;

	}

	@Override
	public FieldCreater getFieldFactory()
	{
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setFieldFactory(FieldCreater fieldFactory)
	{

	}

}
