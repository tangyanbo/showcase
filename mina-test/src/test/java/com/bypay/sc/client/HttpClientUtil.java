package com.bypay.sc.client;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.params.ClientPNames;
import org.apache.http.entity.ContentProducer;
import org.apache.http.entity.EntityTemplate;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpConnectionParams;


/**
 * @author huxb
 *
 */
public class HttpClientUtil {

	/**
	 * 
	 */
	

	/**
	 * @author huxb
	 *
	 */
	public static class StreamEntity implements ContentProducer {
		/**
		 * @param outstream .
		 * @exception IOException .
		 */
		public void writeTo(OutputStream outstream) throws IOException {
			Writer writer = new OutputStreamWriter(outstream, this.encode);
			writer.write(this.data);
			writer.flush();
		}

		/**
		 * 
		 */
		public String encode;
		/**
		 * 
		 */
		public String data;
	}

	/**
	 * @author huxb
	 *
	 */
	static class GB2312PostMethod extends PostMethod {
		/**
		 * @param url .
		 */
		public GB2312PostMethod(String url) {
			super(url);
		}
		
		/**
		 * @return  String .
		 */
		public String getRequestCharSet() {
			return "gbk";
		}
	}

	/**
	 * @param url .
	 * @param map .
	 * @param encode .
	 * @return String .
	 * @throws Exception .
	 * huxb
	 * 2014-8-6 
	 */
	public static String doPost(String url,Map map,String encode) throws Exception{		
		HttpClient client = new HttpClient();
		PostMethod postMethod = new GB2312PostMethod(url);
		List<NameValuePair> nvps = new ArrayList<NameValuePair>();  
		for(Entry entry : (Set<Entry>)map.entrySet()){
			postMethod.addParameter((String)entry.getKey(), (String)entry.getValue());
		}		
		client.executeMethod(postMethod);		
		InputStream stream =  postMethod.getResponseBodyAsStream();	
		BufferedReader reader = new BufferedReader(new InputStreamReader(stream,encode));
		String line = null;
		StringBuffer sb = new StringBuffer();
		while((line = reader.readLine())!=null){
			sb.append(line);
		}
		reader.close();
		postMethod.releaseConnection();
		return sb.toString();
	}

	/*public static String doPost(String url, String encode) throws Exception {
		HttpPost httpPost = new HttpPost(url);

		httpPost.setHeader("Content-Type", "text/html;charset=gb2312");
		List<NameValuePair> nvps = new ArrayList<NameValuePair>();
		nvps.add(new BasicNameValuePair("aa", url));
		// httpPost.setHeader(HTTP.CHARSET_PARAM, Constant.SYSTEM_TRANS_ENCODE);
		httpPost.setEntity(new UrlEncodedFormEntity(nvps,
				Constant.SYSTEM_TRANS_ENCODE));
		HttpResponse response = httpClient.execute(httpPost);
		HttpEntity entity = response.getEntity();
		InputStream stream = entity.getContent();
		BufferedReader reader = new BufferedReader(new InputStreamReader(
				stream, encode));
		String line = null;
		StringBuffer sb = new StringBuffer();
		while ((line = reader.readLine()) != null) {
			sb.append(line);
		}
		reader.close();
		return sb.toString();
	}*/
	
	public static DefaultHttpClient getHttpClient(){
		DefaultHttpClient httpClient = new DefaultHttpClient();

		httpClient.getParams().setIntParameter(
				HttpConnectionParams.CONNECTION_TIMEOUT, 100000);
		httpClient.getParams().setIntParameter(HttpConnectionParams.SO_TIMEOUT,
				100000);
		httpClient.getParams().setIntParameter(
				HttpConnectionParams.SOCKET_BUFFER_SIZE, 1024 * 4);
		httpClient.getParams().setParameter(
				ClientPNames.ALLOW_CIRCULAR_REDIRECTS, true);
		return httpClient;
	}

	/**
	 * @param url  .
	 * @param postXml .
	 * @return String .
	 * @throws Exception .
	 * huxb
	 * 2014-8-6 
	 */
	public static String excute(String url, String postXml) throws Exception {
		
		
		
		HttpPost httpPost = new HttpPost(
				url);
		StreamEntity se = new StreamEntity();
		se.data = postXml;
		se.encode = "GBK";
		HttpEntity entity = new EntityTemplate(se);
		httpPost.setEntity(entity);

		HttpResponse response = getHttpClient().execute(httpPost);
		Header[] headers = response.getHeaders("Set-Cookie");
		for(Header h : headers){
			System.out.println(h.getName()+":"+h.getValue());
		}
		
		HttpEntity entity2 = response.getEntity();
		InputStream stream = entity2.getContent();
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(stream,"GBK"));
		String line = null;
		StringBuffer sb = new StringBuffer();
		while((line = reader.readLine())!=null){
			sb.append(line);
		}
		reader.close();
		//String str = new String(sb.toString().getBytes("ISO-8859-1"), "UTF-8");
		return sb.toString();
	}

	/**
	 * @param url .
	 * @return String .
	 * @throws Exception .
	 * huxb
	 * 2014-8-6 
	 */
	public static String excute(String url) throws Exception {
		HttpPost httpPost = new HttpPost(url);
		HttpResponse response = getHttpClient().execute(httpPost);
		Header[] headers = response.getHeaders("Set-Cookie");
		/*for (Header h : headers) {
			System.out.println(h.getName() + ":" + h.getValue());
		}*/

		HttpEntity entity2 = response.getEntity();
		InputStream stream = entity2.getContent();

		BufferedReader reader = new BufferedReader(new InputStreamReader(
				stream, "UTF-8"));
		String line = null;
		StringBuffer sb = new StringBuffer();
		while ((line = reader.readLine()) != null) {
			sb.append(line);
		}
		reader.close();
		return sb.toString();
	}
	
	/**
	 * @param args .
	 * @throws UnsupportedEncodingException .
	 * huxb
	 * 2014-8-6 
	 */
	public static void main(String[] args) throws UnsupportedEncodingException {
		String s = new String("%BA%FA%D0%A1%B1%EB6666".getBytes("iso8859-1"),"gbk");
		System.out.println(s);
	}

}
