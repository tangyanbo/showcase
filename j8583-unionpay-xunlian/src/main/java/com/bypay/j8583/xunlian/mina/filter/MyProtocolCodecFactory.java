package com.bypay.j8583.xunlian.mina.filter;

import org.apache.mina.core.session.IoSession;
import org.apache.mina.filter.codec.ProtocolCodecFactory;
import org.apache.mina.filter.codec.ProtocolDecoder;
import org.apache.mina.filter.codec.ProtocolEncoder;

public class MyProtocolCodecFactory implements ProtocolCodecFactory
{

	  private final MyEncoder encoder;
	  private final MyDecoder decoder;

	  public MyProtocolCodecFactory()
	  {
	    this.encoder = new MyEncoder();
	    this.decoder = new MyDecoder();
	  }

	  public ProtocolDecoder getDecoder(IoSession arg0)
	    throws Exception
	  {
	    return this.decoder;
	  }

	  public ProtocolEncoder getEncoder(IoSession arg0)
	    throws Exception
	  {
	    return this.encoder;
	  }



}
