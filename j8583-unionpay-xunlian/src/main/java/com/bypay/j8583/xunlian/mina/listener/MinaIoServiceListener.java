package com.bypay.j8583.xunlian.mina.listener;

import java.lang.management.ManagementFactory;

import javax.management.JMException;
import javax.management.ObjectName;

import org.apache.log4j.Logger;
import org.apache.mina.core.service.IoService;
import org.apache.mina.core.service.IoServiceListener;
import org.apache.mina.core.session.IdleStatus;
import org.apache.mina.core.session.IoSession;

public class MinaIoServiceListener implements IoServiceListener
{
	private static final Logger logger = Logger.getLogger(MinaIoServiceListener.class);

	@Override
	public void serviceActivated(IoService service) throws Exception
	{
		
	}

	@Override
	public void serviceIdle(IoService service, IdleStatus idleStatus) throws Exception
	{
		
	}

	@Override
	public void serviceDeactivated(IoService service) throws Exception
	{
		
	}

	@Override
	public void sessionCreated(IoSession session) throws Exception
	{
/*		 try
	        {
			 
			 IoSessionMBean sessMgr = new IoSessionMBean( session );
	            MBeanServer mbs = ManagementFactory.getPlatformMBeanServer();  
	            ObjectName name = new ObjectName( "com.bypay.session:type=IoSessionManager,name=" + session.getRemoteAddress().toString().replace( ':', '/' ) );
	            mbs.registerMBean( sessMgr, name );
	        }
	        catch( JMException e )
	        {
	            logger.error( "JMX Exception: ", e );
	        }   */   
		
	}

	@Override
	public void sessionDestroyed(IoSession session) throws Exception
	{
		try
        {
            ObjectName name = new ObjectName("com.bypay.session:type=IoSessionManager,name=" + session.getRemoteAddress().toString().replace( ':', '/' ) );
            ManagementFactory.getPlatformMBeanServer().unregisterMBean( name );
        }
        catch( JMException e )
        {
            logger.error( "JMX Exception: ", e );
        }   
		
	}

	@Override
	public void sessionClosed(IoSession session) throws Exception
	{
		// TODO Auto-generated method stub
		
	}

	

}
