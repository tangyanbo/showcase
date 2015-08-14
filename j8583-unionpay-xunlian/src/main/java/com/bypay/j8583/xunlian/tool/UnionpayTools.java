
package com.bypay.j8583.xunlian.tool;

import java.io.File;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.bypay.j8583.xunlian.tool.ByteUtil;
import com.bypay.j8583.xunlian.tool.EncryptUtils;

public class UnionpayTools
{
	
	private static Logger logger = LoggerFactory.getLogger(UnionpayTools.class);

    public UnionpayTools()
    {
    }

    public static String leftFillZero(int num, int len)
    {
        NumberFormat nf = NumberFormat.getInstance();
        nf.setGroupingUsed(false);
        nf.setMaximumIntegerDigits(len);
        nf.setMinimumIntegerDigits(len);
        return nf.format(num);
    }

    public static String leftFillZero(long num, int len)
    {
        NumberFormat nf = NumberFormat.getInstance();
        nf.setGroupingUsed(false);
        nf.setMaximumIntegerDigits(len);
        nf.setMinimumIntegerDigits(len);
        return nf.format(num);
    }

    public static int bcd2int(byte bt[])
    {
        int num = 0;
        byte nbt[] = new byte[bt.length * 2];
        for(int i = 0; i < bt.length; i++)
        {
            int h = (bt[i] & 0xff) >> 4;
            if(h > 9)
                h += 55;
            else
                h += 48;
            nbt[i * 2] = (byte)h;
            int l = bt[i] & 0xf;
            if(l > 9)
                l += 55;
            else
                l += 48;
            nbt[i * 2 + 1] = (byte)l;
            num++;
        }

        String hexStr = new String(nbt);
        return Integer.valueOf(hexStr, 16).intValue();
    }

    public static boolean matchDigital(String val)
    {
        Pattern pattern = Pattern.compile("\\d+");
        Matcher matcher = pattern.matcher(val);
        return matcher.matches();
    }

    public static boolean matchVersion(String val)
    {
        Pattern pattern = Pattern.compile("[0-9]{1,2}[.][0-9]{1,2}[.][0-9]{1,2}");
        Matcher matcher = pattern.matcher(val);
        return matcher.matches();
    }

    public static boolean matchOrgCode(String val)
    {
        Pattern pattern = Pattern.compile("[a-fA-Z0-9]{8,11}");
        Matcher matcher = pattern.matcher(val);
        return matcher.matches();
    }

    public static boolean matchPosCode(String val)
    {
        Pattern pattern = Pattern.compile("[a-fA-Z0-9]{8}");
        Matcher matcher = pattern.matcher(val);
        return matcher.matches();
    }

    public static boolean matchDigitalAndF(String val)
    {
        Pattern pattern = Pattern.compile("[A-F0-9]+");
        Matcher matcher = pattern.matcher(val);
        return matcher.matches();
    }

    public static boolean matchData(String val)
    {
        Pattern pattern = Pattern.compile("(([0-9]{3}[1-9]|[0-9]{2}[1-9][0-9]{1}|[0-9]{1}[1-9][0-9]{2}|[1-9][0-9]{3})-(((0[13578]|1[02])-(0[1-9]|[12][0-9]|3[01]))|((0[469]|11)-(0[1-9]|[12][0-9]|30))|(02-(0[1-9]|[1][0-9]|2[0-8]))))|((([0-9]{2})(0[48]|[2468][048]|[13579][26])|((0[48]|[2468][048]|[3579][26])00))-02-29)");
        Matcher matcher = pattern.matcher(val);
        return matcher.matches();
    }

    public static boolean matchRole(String val)
    {
        Pattern pattern = Pattern.compile("(0|1|2|3|5)");
        Matcher matcher = pattern.matcher(val);
        return matcher.matches();
    }

    public static boolean matchSuperAuth(String val)
    {
        Pattern pattern = Pattern.compile("(0|1)");
        Matcher matcher = pattern.matcher(val);
        return matcher.matches();
    }

    public static boolean matchMasterKey(String val)
    {
        Pattern pattern = Pattern.compile("([A-F0-9]{16}|[A-F0-9]{32})");
        Matcher matcher = pattern.matcher(val);
        return matcher.matches();
    }

    public static boolean matchNum(String val)
    {
        Pattern pattern = Pattern.compile("[0-9]{3}");
        Matcher matcher = pattern.matcher(val);
        return matcher.matches();
    }

    public static byte[] integerToBytes(int val)
    {
        byte resultBt[] = new byte[2];
        byte sbt[] = new byte[4];
        byte heightBt[] = new byte[1];
        byte lowBt[] = new byte[1];
        int len = 0;
        String acStr = Integer.toHexString(val);
        sbt = acStr.toUpperCase().getBytes();
        len = sbt.length;
        switch(len)
        {
        case 1: // '\001'
        {
            int tempNum = judgeGEL(sbt[0]);
            heightBt[0] = 0;
            lowBt[0] = (byte)tempNum;
            int height = heightBt[0] << 4 & 0xf0;
            int low = lowBt[0] & 0xf;
            resultBt[0] = 0;
            resultBt[1] = (byte)((byte)height | (byte)low);
            break;
        }

        case 2: // '\002'
        {
            int tempNum = judgeGEL(sbt[0]);
            heightBt[0] = (byte)tempNum;
            tempNum = judgeGEL(sbt[1]);
            lowBt[0] = (byte)tempNum;
            int height = heightBt[0] << 4 & 0xf0;
            int low = lowBt[0] & 0xf;
            resultBt[0] = 0;
            resultBt[1] = (byte)((byte)height | (byte)low);
            break;
        }

        case 3: // '\003'
        {
            int tempNum = judgeGEL(sbt[1]);
            heightBt[0] = (byte)tempNum;
            tempNum = judgeGEL(sbt[2]);
            lowBt[0] = (byte)tempNum;
            int height = heightBt[0] << 4 & 0xf0;
            int low = lowBt[0] & 0xf;
            resultBt[1] = (byte)((byte)height | (byte)low);
            heightBt[0] = 0;
            tempNum = judgeGEL(sbt[0]);
            lowBt[0] = (byte)tempNum;
            height = heightBt[0] << 4 & 0xf0;
            low = lowBt[0] & 0xf;
            resultBt[0] = (byte)((byte)height | (byte)low);
            break;
        }

        case 4: // '\004'
        {
            int tempNum = judgeGEL(sbt[2]);
            heightBt[0] = (byte)tempNum;
            tempNum = judgeGEL(sbt[3]);
            lowBt[0] = (byte)tempNum;
            int height = heightBt[0] << 4 & 0xf0;
            int low = lowBt[0] & 0xf;
            resultBt[1] = (byte)((byte)height | (byte)low);
            tempNum = judgeGEL(sbt[0]);
            heightBt[0] = (byte)tempNum;
            tempNum = judgeGEL(sbt[1]);
            lowBt[0] = (byte)tempNum;
            height = heightBt[0] << 4 & 0xf0;
            low = lowBt[0] & 0xf;
            resultBt[0] = (byte)((byte)height | (byte)low);
            break;
        }
        }
        return resultBt;
    }

    private static int judgeGEL(int num)
    {
        int result;
        if(num > 57)
            result = num - 55;
        else
            result = num - 48;
        return result;
    }
/**
 * 域7使用
 * @return
 */
    public static String getTransmissionDateAndtime()
    {
    	  Date currentTime = new Date();
          SimpleDateFormat formatter = new SimpleDateFormat("MMddHHmmss");
          String dateString = formatter.format(currentTime);
          return dateString;
    }
    public static String getStringDate()
    {
        Date currentTime = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");
        String dateString = formatter.format(currentTime);
        return dateString;
    }

    public static String getStringTime()
    {
        Date currentTime = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
        String dateString = formatter.format(currentTime);
        return dateString;
    }

    public static boolean delete(File dir)
    {
        if(dir.isDirectory())
        {
            File listFiles[] = dir.listFiles();
            for(int i = 0; i < listFiles.length && delete(listFiles[i]); i++);
        }
        return dir.delete();
    }

    public static String addLeftSpace(String value, int length)
    {
        if(value == null)
            value = "";
        if(value.length() > length)
            return value.substring(value.length() - length, value.length());
        char c[] = new char[length];
        System.arraycopy(value.toCharArray(), 0, c, (0 + length) - value.length(), value.length());
        for(int i = 0; i < length - value.length(); i++)
            c[i] = ' ';

        return new String(c);
    }

    public static String addRightSpace(String value, int length)
    {
        if(value == null)
            value = "";
        if(value.length() > length)
            return value.substring(0, length - 1);
        char c[] = new char[length];
        System.arraycopy(value.toCharArray(), 0, c, 0, value.length());
        for(int i = value.length(); i < c.length; i++)
            c[i] = ' ';

        return new String(c);
    }

    public static String addRightZero(String value, int length)
    {
        if(value == null)
            value = "";
        if(value.length() > length)
            return value.substring(0, length - 1);
        char c[] = new char[length];
        System.arraycopy(value.toCharArray(), 0, c, 0, value.length());
        for(int i = value.length(); i < c.length; i++)
            c[i] = '0';

        return new String(c);
    }

    public static String addLeftZero(String s, int length)
    {
        int old = s.length();
        if(length > old)
        {
            char c[] = new char[length];
            char x[] = s.toCharArray();
            if(x.length > length)
                throw new IllegalArgumentException((new StringBuilder("Numeric value is larger than intended length: ")).append(s).append(" LEN ").append(length).toString());
            int lim = c.length - x.length;
            for(int i = 0; i < lim; i++)
                c[i] = '0';

            System.arraycopy(x, 0, c, lim, x.length);
            return new String(c);
        } else
        {
            return s.substring(0, length);
        }
    }

    public static String getRandomDigital(int n)
    {
        int array[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
        Random rand = new Random();
        for(int i = 10; i > 1; i--)
        {
            int index = rand.nextInt(i);
            int tmp = array[index];
            array[index] = array[i - 1];
            array[i - 1] = tmp;
        }

        StringBuilder sb = new StringBuilder();
        for(int i = 0; i < n; i++)
           sb.append(array[i]);
        	//sb.append(array[rand.nextInt(n)]);

        return sb.toString();
    }

    public static int compare(Object obj1, Object obj2)
    {
        int result = 0;
        if(obj1 == null || obj2 == null)
            return result;
        else
            return Integer.valueOf(obj1.toString().split(" ")[0]).intValue() - Integer.valueOf(obj2.toString().split(" ")[0]).intValue();
    }
    
	/**
	 * 
	 * @param macStr
	 * @param content
	 * @return
	 * @throws Exception
	 * a,将欲发送给POS中心的消息中，从消息类型（MTI）到63域之间的部分构成MAC ELEMEMENT BLOCK （MAB)
	 * b,对MAB，按每8个字节做异或（不管信息中的字符格式），如果最后不满8个字节，则添加"0X00"
	 * c, 将异或运算后的最后8个字节（RESULT BLOCK）转换成16 个HEXDECIMAL：
	 * d,取前8 个字节用MAK加密
	 * e,将加密后的结果与后8 个字节异或
	 * f,用异或的结果TEMP BLOCK 再进行一次双倍长密钥算法运算。
	 * g,将运算后的结果（ENC BLOCK2）转换成16 个HEXDECIMAL： 
	 * h,取前8个字节作为MAC值。
	 */
	public static String calcMac(String key,byte[] input) throws Exception
	{
		//对MAB，按每8个字节做异或（不管信息中的字符格式），如果最后不满8个字节，则添加"0X00"
		byte[] mackey =ByteUtil.hexStringToByteArray(key); 
		int length = input.length;
		int x =length % 8;
		int addLength = 0;
		byte[] src= null;
		if(x!=0)
		{
			addLength = 8-x;
			src = new byte[length+addLength];
			System.arraycopy(input, 0, src, 0, length);
		}
		else
		{
			src = input;
		}
		
		byte[] xorInit = new byte[8];
		System.arraycopy(src, 0, xorInit, 0, 8);
		for (int i = 1; i < src.length / 8; i++)
		{
			byte[] xorTmp = new byte[8];
			System.arraycopy(src, i * 8, xorTmp, 0, xorTmp.length);
			byte[] t = bytesXOR(xorInit, xorTmp);
			xorInit =t;
		}
		//将异或运算后的最后8个字节（RESULT BLOCK）转换成16 个HEXDECIMAL
		String xorHexStrTmp = ByteUtil.convertByteArrayToHexStr(xorInit);
        System.out.println(xorHexStrTmp);
		byte[] xorHex = xorHexStrTmp.getBytes();

		byte[] desSrc = new byte[8];
		//取前8 个字节用MAK加密
		System.arraycopy(xorHex, 0, desSrc, 0, 8);
		byte[] desSrc2 = new byte[8];
		System.arraycopy(xorHex, 8, desSrc2, 0, 8);
		logger.debug(ByteUtil.convertByteArrayToHexStr(desSrc2)+"-----desSrc2");
		logger.debug(ByteUtil.convertByteArrayToHexStr(desSrc)+"----desSrc----");
        System.out.println(ByteUtil.convertByteArrayToHexStr(desSrc)+"----desSrc----");
		byte[] desEnTmp = EncryptUtils.encrypt1(desSrc, mackey);
		desEnTmp = bytesXOR(desEnTmp, desSrc2);
        System.out.println(ByteUtil.convertByteArrayToHexStr(desEnTmp)+"--------");
		logger.debug(ByteUtil.convertByteArrayToHexStr(desEnTmp)+"----xor");
		byte[] desEn = EncryptUtils.encrypt1(desEnTmp,mackey);
		//将运算后的结果（ENC BLOCK2）转换成16 个HEXDECIMAL：
		String endMac = ByteUtil.convertByteArrayToHexStr(desEn).substring(0,8);
		logger.debug(endMac+"---endmac");
		String mac = ByteUtil.convertByteArrayToHexStr(endMac.getBytes());
		return mac;
	
	}


    public static String calcMac2(byte[] input) throws Exception
    {
        //对MAB，按每8个字节做异或（不管信息中的字符格式），如果最后不满8个字节，则添加"0X00"
        int length = input.length;
        int x =length % 8;
        int addLength = 0;
        byte[] src= null;
        if(x!=0)
        {
            addLength = 8-x;
            src = new byte[length+addLength];
            System.arraycopy(input, 0, src, 0, length);
        }
        else
        {
            src = input;
        }

        byte[] xorInit = new byte[8];
        System.arraycopy(src, 0, xorInit, 0, 8);
        for (int i = 1; i < src.length / 8; i++)
        {
            byte[] xorTmp = new byte[8];
            System.arraycopy(src, i * 8, xorTmp, 0, xorTmp.length);
            byte[] t = bytesXOR(xorInit, xorTmp);
            xorInit =t;
        }
        //将异或运算后的最后8个字节（RESULT BLOCK）转换成16 个HEXDECIMAL
        String xorHexStrTmp = ByteUtil.convertByteArrayToHexStr(xorInit);
        System.out.println(xorHexStrTmp);

        return xorHexStrTmp;

    }
	
	/**
	 * 计算两个数组的异或值
	 * @param src1
	 * @param src2
	 * @return
	 */
	
	public static byte[] bytesXOR(byte[] src1,byte[] src2)
	{
		int length = src1.length;
		if(length != src2.length)
		{
			return null;
		}
		byte[] result = new byte[length];
		for(int i = 0; i<length; i++)
		{
			result[i] = (byte) ((src1[i]&0xFF)^(src2[i]&0xFF));
			
		}
		return result;
	}
    
    public static void main(String[] args) throws Exception
	{
//    	String data="0210703E00810AD080131662266606051402310000000000000000016947832117550429000004290008000970003231313735353432353337393030333030303034353934343337303130353939383030313522303330333030303020202030343433373031302020203135360008220000010003435550";
//    	String macKey="BCD5761F269D1985";
//    	String s=UnionpayTools.calcMac(macKey, ByteUtil.hexStringToByteArray(data));
//        System.out.println(s);
    	System.out.println("==================:"+getRandomDigital(6));
	}
    
    
}