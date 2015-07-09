package com.bypay.mina.handler;

import java.util.Date;
import org.apache.mina.core.session.IdleStatus;
import org.apache.mina.core.service.IoHandlerAdapter;
import org.apache.mina.core.session.IoSession;

/**
 * Handler
 * @author 唐延波
 * @date 2015-2-22
 *
 */
public class TimeServerHandler extends IoHandlerAdapter
{
	/**
	 * 有异常时执行方法
	 */
    @Override
    public void exceptionCaught( IoSession session, Throwable cause ) throws Exception
    {
        cause.printStackTrace();
    }

    /**
     * 接收消息时调用
     */
    @Override
    public void messageReceived( IoSession session, Object message ) throws Exception
    {
        String str = message.toString();
        System.out.println("接收到客户端的消息："+str);
        System.out.println("字节长度"+str.getBytes().length);
        if( str.trim().equalsIgnoreCase("quit") ) {
            session.close();
            return;
        }

        Date date = new Date();
        //向输出流中写东西
        session.write( date.toString() );
        System.out.println("Message written...");
    }

    @Override
    public void sessionIdle( IoSession session, IdleStatus status ) throws Exception
    {
        System.out.println( "IDLE " + session.getIdleCount( status ));
    }
}