package com.bypay.j8583.xunlian.mina;

import com.bypay.j8583.xunlian.tool.ByteUtil;

import java.net.InetSocketAddress;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;


/**
 * Created by qjj on 5/3/15.
 */
public class TestMina {
	
    public static  void main (String[] args)
    {
        ExecutorService service = Executors.newCachedThreadPool();
        for(int i=0;i<200;i++)
        service.submit(new MinaRun());
        service.shutdown();
      //  service.shutdownNow();


    }
}


class MinaRun implements Runnable
{

    @Override
    public void run() {
        String	s="D132"+"02"+"08"+"75A083A109FE96D5"+"0000000000000000"+"0010"+"39333432353536343230434543414239";
        InetSocketAddress address = new InetSocketAddress("58.42.236.252", 9901);
        TestTftUms.minaTrans(ByteUtil.hexStringToByteArray(s),address);


    }
}
