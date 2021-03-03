package com.google.play.net.http.base;

import java.io.IOException;

import org.apache.http.HttpEntity;

public interface BaseHttp {
	/**
	 * 执行Post请求
	 * @param url
	 * @param postParams
	 * @param headerParams
	 * @return
	 */
	public HttpEntity executePost(String url, String[][] postParams, String[][] headerParams) throws IOException;
	/**
	 * 
	 * @param url
	 * @param postData
	 * @param headerParams
	 * @return
	 */
	public HttpEntity executePost(String url, byte[] postData, String[][] headerParams) throws IOException;
	/**
	 * 执行Get请求
	 * @param url
	 * @param postParams
	 * @param headerParams
	 * @return
	 */
	public HttpEntity executeGet(String url, String[][] postParams, String[][] headerParams) throws IOException;
}
