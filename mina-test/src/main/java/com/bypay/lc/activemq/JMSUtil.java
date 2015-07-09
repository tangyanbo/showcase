package com.bypay.lc.activemq;

import javax.jms.Destination;
import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.Session;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.jms.core.MessageCreator;

import com.bypay.mina.bean.TransInfo;

/**
 * 封装的JMS Util
 * 
 * @author 唐延波
 * @date 2015-1-19
 * 
 */
public class JMSUtil {

	private static ClassPathXmlApplicationContext applicationContext;
	
	private static JmsTemplate jmsTemplate;
	
	private static Destination queue;
	
	static {
		try {
			applicationContext = new ClassPathXmlApplicationContext(
					"applicationContext-jms.xml");
			jmsTemplate = applicationContext.getBean(JmsTemplate.class);
			queue = applicationContext.getBean(Destination.class);			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	/**
	 * 发送消息
	 * @author 唐延波
	 * @date 2015-1-19
	 */
	public static void sendMessage(final TransInfo info){
		jmsTemplate.send(queue, new MessageCreator() {
			public Message createMessage(Session session) throws JMSException {
				Message message = session.createMessage();
				message.setStringProperty("infoId",String.valueOf(info.getId()));
				//message.setObjectProperty(arg0, arg1);
				return message;
			}
		});
	}
	
	public static TransInfo receive(final TransInfo info){
		//System.out.println("infoId='"+String.valueOf(info.getId())+"'");
		Message message = jmsTemplate.receiveSelected(queue, "infoId='"+String.valueOf(info.getId())+"'");
		//Message message = jmsTemplate.receive(queue);
		if(message == null){
			System.out.println("infoId='"+String.valueOf(info.getId())+"'");
		}
		try {
			String infoId = message.getStringProperty("infoId");
			
			//System.out.println("==="+infoId);
			TransInfo receive = new TransInfo();
			receive.setId(Long.parseLong(infoId));
			return receive;
		} catch (JMSException e) {
			e.printStackTrace();
			return null;
		}
	}
	

	public static void main(String[] args) {
		
	}
}
