package com.bypay.j8583.xunlian;

import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.bypay.j8583.xunlian.tool.ByteUtil;
import com.bypay.j8583.xunlian.tool.DataConverter;
import com.bypay.j8583.xunlian.tool.Tools;

/**
 * message接口的64个位图实现
 * 
 * @author qjj
 * @see Message
 * @see AbstractMessage
 * 
 */

public class ISO64Message extends AbstractMessage
{

	private static Logger logger = LoggerFactory.getLogger(ISO64Message.class);

	public ISO64Message()
	{
		super();
		this.fields = new TreeMap<Integer, Field>();
	}

	@Override
	public byte[] packeage()
	{
		byte[] mess = new byte[0];
		Set<Integer> bit = fields.keySet();
		logger.info("bitmapInt-->" + bit);
		//8583消息类型
		byte[] type = DataConverter.str2bcdOne(messageType);
		//位图
		byte[] bb = new byte[8];
		//获得位图的字节
		bb = DataConverter.packBigMap(bit, bb);
		mess = DataConverter.joinBytes(mess, type);
		mess = DataConverter.joinBytes(mess, bb);
		logger.info("bitMap--" + bitmap);
		for (Entry<Integer, Field> one : fields.entrySet())
		{
			Field field = one.getValue();
			if (field.getNum() == 64)
			{
				continue;
			}

			if (field.getFormat() == null)
				field.setFormat(FieldFormat.DEFAULT);
			byte[] length = new byte[0];
			String len = null;
			switch (field.getFormat())
			{
			case ENCRYPT:
				len = Tools.addLeftZero(String.valueOf(field.getValue().length() / 2), 4);
				break;
			case LLLVAR:
				len = Tools.addLeftZero(String.valueOf(field.getValue().length()), 4);
				break;
			case LLVAR:
				len = Tools.addLeftZero(String.valueOf(field.getValue().length()),2);
				break;

			default:
				break;
			}
			if (len != null)
			{
				length = DataConverter.str2bcdOne(len);
			}
			if (length.length >= 1)
			{
				mess = DataConverter.joinBytes(mess, length);
			}
			byte[] value = new byte[0];
			switch (field.getType())
			{
			case BCD:
				value = DataConverter.str2bcdOne(field.getValue());
				break;
			case LBCD:
				value = DataConverter.str2bcdTwo(field.getValue());
				break;
			case ASCII:
				value = field.getValue().getBytes();
				break;
			case BINARY:
				value = field.getValue().getBytes();
				break;
			default:
				break;
			}
			mess = DataConverter.joinBytes(mess, value);

		}
		
		String message = ByteUtil.convertByteArrayToHexStr(mess);
		logger.info("message---" + message);
		return mess;
	}

	@Override
	public byte[] body(byte[] macBlock)
	{
		byte[] body =new byte[0];
		//StringBuilder sb = new StringBuilder();
		byte[] tpdus = DataConverter.str2bcdOne(tpdu);
		byte[] heads = DataConverter.str2bcdOne(isoHeader);
		byte[] tmp = DataConverter.joinBytes(tpdus, heads);
		body=DataConverter.joinBytes(tmp, macBlock);
		//sb.append(tpdu);
		//sb.append(isoHeader);
		//sb.append(macBlock);
		if (macValue != null)
		{
			byte[] mac = ByteUtil.hexStringToByteArray(macValue);
			body = DataConverter.joinBytes(body, mac);
			//sb.append(macValue);
		}
		logger.info(body.length+"报文长度");
		String length = Integer.toHexString(body.length).toUpperCase();
		System.out.println(length+"长度");
		byte[] len = DataConverter.str2bcdOne(Tools.addLeftZero(length, 4));
		
		body=DataConverter.joinBytes(len, body);
		//sb.insert(0, com.bypay.j8583.chinatvpay.tool.Tools.addLeftZero(length, 4));
		//String message = sb.toString().toUpperCase();
		String message = ByteUtil.convertByteArrayToHexStr(body);
		logger.info("body--->" + message);
		return body;
	}
}
