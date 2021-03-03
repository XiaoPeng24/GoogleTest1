package com.google.play.net.http.base.impl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;

import com.google.play.net.http.base.BaseHttp;

public class BaseHttpImpl implements BaseHttp {

private HttpClient httpClient;
	
	public BaseHttpImpl() {
		
	}

	@Override
	public HttpEntity executePost(String url, String[][] postParams,
			String[][] headerParams) throws IOException{
		httpClient = new DefaultHttpClient();
		List<NameValuePair> formparams = new ArrayList<NameValuePair>();
		
		for (String[] param : postParams) {
			if (param[0] != null && param[1] != null) {
				formparams.add(new BasicNameValuePair(param[0], param[1]));
			}
		}

		UrlEncodedFormEntity entity = new UrlEncodedFormEntity(formparams,
				"UTF-8");

		return postUrl(url, entity, headerParams);
	}

	@Override
	public HttpEntity executePost(String url, byte[] postData,
			String[][] headerParams) throws IOException {
		httpClient = new DefaultHttpClient();
		return postUrl(url, new ByteArrayEntity(postData), headerParams);
	}
	
	@Override
	public HttpEntity executeGet(String url, String[][] getParams,
			String[][] headerParams) throws IOException {
		httpClient = new DefaultHttpClient();
		if (getParams != null) {
			List<NameValuePair> formparams = new ArrayList<NameValuePair>();
			for (String[] param : getParams) {
				if (param[0] != null && param[1] != null) {
					formparams.add(new BasicNameValuePair(param[0], param[1]));
				}
			}
			url = url + "?" + URLEncodedUtils.format(formparams, "UTF-8");
		}
		HttpGet httpget = new HttpGet(url);
		if (headerParams != null) {
			for (String[] param : headerParams) {
				if (param[0] != null && param[1] != null) {
					httpget.setHeader(param[0], param[1]);
				}
			}
		}
		return executeHttpRequest(httpget);
	}

	
	
	/******************************** private methods *************************************/
	/**
	 * 提交Post请求
	 * @param url
	 * @param postData
	 * @param headerParams
	 * @return
	 * @throws IOException
	 */
	protected HttpEntity postUrl(String url, 
			HttpEntity postData, String[][] headerParams) throws IOException {
		httpClient = new DefaultHttpClient();
		HttpPost httppost = new HttpPost(url);

		if (headerParams != null) {
			for (String[] param : headerParams) {
				if (param[0] != null && param[1] != null) {
					httppost.setHeader(param[0], param[1]);
				}
			}
		}

		httppost.setEntity(postData);

		return executeHttpRequest(httppost);
	}
	/**
	 * 执行http请求
	 * @param request
	 * @return
	 * @throws ClientProtocolException
	 * @throws IOException
	 */
	private HttpEntity executeHttpRequest(HttpUriRequest request) 
			throws ClientProtocolException, IOException {
		
		HttpResponse response = httpClient.execute(request);
		System.out.println(request.getURI());
		System.out.println(response.getStatusLine().getStatusCode());
		if (response.getStatusLine().getStatusCode() != 200) {
			System.out.println("fail");
			/*throw new GooglePlayException(new String(Utils.readAll(response
					.getEntity().getContent())));*/
		}
		
		HttpEntity entity = response.getEntity();
		return entity;
	}


}
