package com.bypay.j8583.xunlian.mina.filter;

import org.apache.log4j.Logger;
import org.apache.mina.core.buffer.IoBuffer;
import org.apache.mina.core.session.IoSession;
import org.apache.mina.filter.codec.CumulativeProtocolDecoder;
import org.apache.mina.filter.codec.ProtocolDecoderOutput;

import com.bypay.j8583.xunlian.tool.ByteUtil;
import com.bypay.j8583.xunlian.tool.DataConverter;


public class MyDecoder extends CumulativeProtocolDecoder
{
	private static Logger logger = Logger.getLogger(MyDecoder.class);

	@Override
	protected boolean doDecode(IoSession session, IoBuffer in, ProtocolDecoderOutput out) throws Exception
	{
		in.capacity(2096);
		in.setAutoExpand(true);
		if (in.hasRemaining() && in.remaining() >= 2)
		{
		/*	int len = 0;
			in.mark();
			byte[] lenByte = new byte[2];
			in.get(lenByte);
    		String le =new String(ByteUtil.convertByteArrayToHexStr(lenByte));
		
		    len = Integer.parseInt(le,16);
		 //  logger.debug("[datareal.length]={}",len);
			if (len > in.remaining())
			{
				in.reset();
				return false;
			}
			byte[] bytes = new byte[len];
			in.get(bytes, 0, len);
			byte[] body = new byte[len+2];
			System.arraycopy(lenByte, 0, body, 0, lenByte.length);
			System.arraycopy(bytes, 0, body, lenByte.length, bytes.length);
			logger.info(new StringBuffer("Decoder接收到报文[").append(DataConverter.getHexStr(body)).append("]"));
			//out.write(lenByte);
			out.write(body);
			if (in.remaining() > 0)
			{
				return true;
			}
			*/
			
			
			int len = in.limit();
			in.mark();
	
			byte[] body = new byte[len];
			in.get(body);
			logger.info(new StringBuffer("Decoder接收到报文[").append(DataConverter.getHexStr(body)).append("]"));
			//out.write(lenByte);
			out.write(body);
			if (in.remaining() > 0)
			{
				return true;
			}

		}
		return false;
	}
	

}
