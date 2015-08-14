package com.bypay.j8583.xunlian.mina;

import java.net.InetSocketAddress;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import org.apache.mina.core.future.ConnectFuture;
import org.apache.mina.core.session.IoSession;
import org.apache.mina.filter.codec.ProtocolCodecFilter;
import org.apache.mina.filter.logging.LoggingFilter;
import org.apache.mina.transport.socket.nio.NioSocketConnector;
import org.junit.Test;

import com.bypay.j8583.xunlian.Field;
import com.bypay.j8583.xunlian.FieldCreater;
import com.bypay.j8583.xunlian.ISO64Message;
import com.bypay.j8583.xunlian.XunlianMessageParse;
import com.bypay.j8583.xunlian.custom.Custom62Impl;
import com.bypay.j8583.xunlian.domain.Custom62;
import com.bypay.j8583.xunlian.mina.filter.MyProtocolCodecFactory;
import com.bypay.j8583.xunlian.tool.ByteUtil;
import com.bypay.j8583.xunlian.tool.EncryptUtils;
import com.bypay.j8583.xunlian.tool.UnionpayTools;

public class TestTftUms
{
	static String pinkey = "43234FCE98FE58015207B37F467F0E86";
	static String mackey = "1F6DBC7AF7619292";

	static String mainKey="0123456789ABCDEF0123456789ABCDEF";//机构主密钥

	static String tpdu="6001040000";
	static String merid="905118883100002";//(905118883100001/905118883100002) 商户代码
	static String terid="00000003";//(00000001、00000002/00000003)终端
	
	static String channelNum="90511888";//合作方标识码
	
	static InetSocketAddress pay = new InetSocketAddress("192.168.12.201", 50226);
	
	/**
	 * 重置密钥
	 * @throws Exception
	 */
	@Test
	public void singIn() throws Exception
	{
		HashMap<Integer, String> param = new HashMap<Integer, String>();
		String s11 = UnionpayTools.getRandomDigital(6);
		System.out.println("系统跟踪号-->"+s11);
		param.put(11, s11);
		param.put(32, channelNum);
		param.put(60, "00"+"000000"+"999");
		param.put(64, "00000000");
		FieldCreater creater = FieldCreater.getInstance();
		
		Map<Integer, Field> fields = creater.getDefine(param);
		ISO64Message message = new ISO64Message();
		message.setTpdu(tpdu);
		message.setMessageType("0800");
		message.setFields(fields);
		byte[] body = message.packeage();
		
		String checkValue=EncryptUtils.encrypt2("0000000000000000", mainKey);
		String checkValueHex=ByteUtil.convertByteArrayToHexStr(checkValue.substring(0, 8).getBytes());
		message.setMacValue(checkValueHex);
		
		byte[] sb = message.body(body);
		byte[] res=TestTftUms.minaTrans(sb,pay);
		
		if (res==null) {
			System.out.println("----------超时返98------------------");
		}else {
			System.out.println(ByteUtil.convertByteArrayToHexStr(res));
			XunlianMessageParse messageParse = new XunlianMessageParse();

			ISO64Message message2 = messageParse.createMessage(res);
			System.out.println("应答码-->"+message2.getField(39).getValue());
			System.out.println(message2.getField(62).getValue());
			
			Custom62Impl custom62Impl = new Custom62Impl();
			Custom62 custom62 = custom62Impl.decodeField(message2.getField(62).getValue());
			System.out.println(custom62.getPinKey());
			System.out.println(custom62.getPinCheckValue());
			System.out.println(custom62.getMacKey());
			System.out.println(custom62.getMacCheckValue());
			
			String pinKey = EncryptUtils.decrypt2(custom62.getPinKey(), mainKey);
			System.out.println("最终pinkey-->"+pinKey);
			String pinCheckValue=EncryptUtils.encrypt2("0000000000000000", pinKey);
			System.out.println("pinCheckValue--->"+pinCheckValue);
			
			String macKey = EncryptUtils.decrypt2(custom62.getMacKey(), mainKey);
			String macCheckValue=EncryptUtils.encrypt1("0000000000000000", macKey);
			System.out.println("macCheckValue--->"+macCheckValue);
			System.out.println("最终mackey-->"+macKey.substring(0, 16));
		}

	}
	
	/**
	 * 条码支付订单查询
	 * @throws Exception
	 */
	@Test
	public void orderCode() throws Exception
	{
		HashMap<Integer, String> param = new HashMap<Integer, String>();
		param.put(3, "310000");
		String s11 = UnionpayTools.getRandomDigital(6);
		param.put(11, s11);
		System.out.println("系统跟踪号-->"+s11);
		param.put(22, "040");
		param.put(23, "025");//015支付宝，025微信
		param.put(25, "30");
		param.put(41, terid);
		param.put(42, merid);
		param.put(49, "156");
		param.put(36, "156");
		param.put(60, "00000001" );
		param.put(61, "000001"+"719480" );//原始交易批次号+原始交易流水号
		param.put(64, "00000000");
		FieldCreater creater = FieldCreater.getInstance();
		Map<Integer, Field> fields = creater.getDefine(param);
		ISO64Message message = new ISO64Message();
		message.setTpdu(tpdu);
		message.setMessageType("0200");
		message.setFields(fields);
		byte[] body = message.packeage();
		String mac=UnionpayTools.calcMac(mackey, body);
		message.setMacValue(mac);
		byte[] sb = message.body(body);
		byte[] res = TestTftUms.minaTrans(sb,pay);

		if (res==null) {
			System.out.println("----------超时返98------------------");
		}else {
			System.out.println(ByteUtil.convertByteArrayToHexStr(res));
			XunlianMessageParse messageParse = new XunlianMessageParse();
			ISO64Message message2 = messageParse.createMessage(res);
			System.out.println("39-->"+message2.getFields().get(39).getValue());
		}
		
	}
	
	/**
	 * 条码支付
	 * 长度+tpud+报文头+位图+报文体
	 * @throws Exception
	 */
	@Test
	public void payCode() throws Exception
	{
		//TODO
		HashMap<Integer, String> param = new HashMap<Integer, String>();
		param.put(3, "000000");
		param.put(4, "000000000001");
		String s11 = UnionpayTools.getRandomDigital(6);
		param.put(11, s11);
		System.out.println(s11 + "系统跟踪号");
		param.put(22, "040");
		/*	23域：
		 	前两位  01：支付宝交易 02：微信支付交易 
			第三位  1：下单（扫码枪扫手机条码）  2：预下单（获取二维码供手机扫） 3：撤销  4：退货  5：查询 
		*/
		param.put(23, "012");
		param.put(25, "32");/*31：付款码支付（终端主拍）  32：用户扫二维码支付（终端被拍）*/
		param.put(41, terid);
		param.put(42, merid);
		param.put(49, "156");
		param.put(60, "00000001");
		//param.put(62, "130095518604913793");//付款码支付需用到：条码信息
		param.put(64, "00000000");
		FieldCreater creater = FieldCreater.getInstance();
		//位图与值的映射map
		//可以根据位图的key获取对应的值
		Map<Integer, Field> fields = creater.getDefine(param);
		ISO64Message message = new ISO64Message();
		message.setTpdu(tpdu);
		message.setMessageType("0200");
		message.setFields(fields);
		byte[] body = message.packeage();
		String mac=UnionpayTools.calcMac(mackey, body);
		message.setMacValue(mac);
		byte[] sb = message.body(body);
		String bbS = ByteUtil.convertByteArrayToHexStr(sb);
		System.out.println("bbS:"+bbS);
		/*byte[] res = TestTftUms.minaTrans(sb,pay);
		
		if (res==null) {
			System.out.println("----------超时返98------------------");
		}else {
			System.out.println(ByteUtil.convertByteArrayToHexStr(res));
			XunlianMessageParse messageParse = new XunlianMessageParse();
			ISO64Message message2 = messageParse.createMessage(res);
			System.out.println("39-->"+message2.getFields().get(39).getValue());
		}*/
	}
	
	/**
	 * 条码支付撤销
	 * @throws Exception
	 */
	@Test
	public void voidsCode() throws Exception
	{
		HashMap<Integer, String> param = new HashMap<Integer, String>();
		param.put(3, "200000");
		param.put(4, "000000000010");
		String s11 = UnionpayTools.getRandomDigital(6);
		param.put(11, s11);
		System.out.println("系统跟踪号-->"+s11);
		param.put(22, "040");
		param.put(23, "013");//013支付宝，023微信
		param.put(25, "30");
		param.put(41, terid);
		param.put(42, merid);
		param.put(49, "156");
		param.put(60, "00000001" );
		param.put(61, "000001"+"219738" );//原始交易批次号+原始交易流水号
		param.put(62, "169152036083");//原交易检索参考号（37域）
		param.put(64, "00000000");
		FieldCreater creater = FieldCreater.getInstance();
		Map<Integer, Field> fields = creater.getDefine(param);
		ISO64Message message = new ISO64Message();
		message.setTpdu(tpdu);
		message.setMessageType("0200");
		message.setFields(fields);
		byte[] body = message.packeage();
		String mac=UnionpayTools.calcMac(mackey, body);
		message.setMacValue(mac);
		byte[] sb = message.body(body);
		byte[] res = TestTftUms.minaTrans(sb,pay);

		if (res==null) {
			System.out.println("----------超时返98------------------");
		}else {
			System.out.println(ByteUtil.convertByteArrayToHexStr(res));
			XunlianMessageParse messageParse = new XunlianMessageParse();
			ISO64Message message2 = messageParse.createMessage(res);
			System.out.println("39-->"+message2.getFields().get(39).getValue());
		}
		
	}
	

	/**
	 * 条码支付退货
	 * @throws Exception
	 */
	@Test
	public void refundsCode() throws Exception
	{
		HashMap<Integer, String> param = new HashMap<Integer, String>();
		param.put(3, "200000");
		param.put(4, "000000000002");
		String s11 = UnionpayTools.getRandomDigital(6);
		param.put(11, s11);
		System.out.println("系统跟踪号-->"+s11);
		param.put(22, "040");
		param.put(23, "014");//014支付宝，024微信
		param.put(25, "30");
		param.put(41, terid);
		param.put(42, merid);
		param.put(49, "156");
		param.put(60, "00000001" );
		param.put(61, "000001"+"350149" );//原始交易批次号+原始交易流水号
		param.put(62, "169153036094");//原交易检索参考号（37域）
		param.put(64, "00000000");
		FieldCreater creater = FieldCreater.getInstance();
		Map<Integer, Field> fields = creater.getDefine(param);
		ISO64Message message = new ISO64Message();
		message.setTpdu(tpdu);
		message.setMessageType("0220");
		message.setFields(fields);
		byte[] body = message.packeage();
		String mac=UnionpayTools.calcMac(mackey, body);
		message.setMacValue(mac);
		byte[] sb = message.body(body);
		byte[] res = TestTftUms.minaTrans(sb,pay);

		if (res==null) {
			System.out.println("----------超时返98------------------");
		}else {
			System.out.println(ByteUtil.convertByteArrayToHexStr(res));
			XunlianMessageParse messageParse = new XunlianMessageParse();
			ISO64Message message2 = messageParse.createMessage(res);
			System.out.println("39-->"+message2.getFields().get(39).getValue());
		}
		
	}

	
	public  static byte[] minaTrans(byte[] body,InetSocketAddress net)
	{
		NioSocketConnector connector = new NioSocketConnector();
		connector.setHandler(new ClientHandler());
		connector.getFilterChain().addLast("logger", new LoggingFilter());

		connector.getFilterChain().addLast("codec", new ProtocolCodecFilter(new MyProtocolCodecFactory()));
		connector.getSessionConfig().setBothIdleTime(30);
		
		//connector.getSessionConfig().setUseReadOperation(true);
		ConnectFuture connectFuture = connector.connect(net);
		connectFuture.awaitUninterruptibly();
		IoSession session = connectFuture.getSession();

		session.write(body);
		byte[] res = null;

		//接收服务端返回消息
		synchronized (session)
		{
			try {
				session.wait(50000);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}

		}

		if(session.getAttribute("res")!=null)
		{
			System.out.println("接收数据");

			res=(byte[]) session.getAttribute("res");
			System.out.println(ByteUtil.convertByteArrayToHexStr( (byte[])session.getAttribute("res"))+"-----");
		}

		return res;
	}

	
	public static void main(String[] args) throws Exception
	{
		/*String checkValue=EncryptUtils.encrypt2("0000000000000000", mainKey);
		System.out.println(checkValue);
		String checkValueHex=ByteUtil.convertByteArrayToHexStr(checkValue.substring(0, 8).getBytes());
		System.out.println(checkValueHex);*/
		
		ExecutorService service = Executors.newCachedThreadPool();
        for(int i=0;i<2;i++){
        	service.submit(new TestRun());
        }
        service.shutdown();
        
	}

}

class TestRun implements Runnable
{

    @Override
    public void run() {
    	
    	TestTftUms testTftUms = new TestTftUms();
    	try {
			testTftUms.payCode();
		} catch (Exception e) {
			e.printStackTrace();
		}

    }
    
    public static void main(String[] args) {
	
	}
   
}
