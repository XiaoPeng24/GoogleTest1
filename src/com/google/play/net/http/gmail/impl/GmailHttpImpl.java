package com.google.play.net.http.gmail.impl;

import java.io.IOException;
import java.math.BigInteger;
import java.util.Map;

import org.apache.http.HttpEntity;
import org.apache.http.entity.ByteArrayEntity;

import com.akdeniz.googleplaycrawler.GooglePlay.AndroidCheckinRequest;
import com.akdeniz.googleplaycrawler.GooglePlay.AndroidCheckinResponse;
import com.google.play.model.GmailInfo;
import com.google.play.net.http.base.impl.BaseHttpImpl;
import com.google.play.net.http.gmail.GmailHttp;
import com.google.play.util.other.Constants;
import com.google.play.util.other.GooglePlayUtils;

public class GmailHttpImpl extends BaseHttpImpl implements GmailHttp {

	@Override
	public Boolean LoginGmail(GmailInfo gmailInfo) {
		try {
			HttpEntity responseEntity = executePost(
					Constants.URL_LOGIN,
					new String[][] {
							{ "Email", gmailInfo.getGmailAccout() },
							{ "Passwd", gmailInfo.getGmailPsw() },
							{ "service", "androidmarket" },
							{ "accountType",
									Constants.ACCOUNT_TYPE_HOSTED_OR_GOOGLE },
							{ "has_permission", "1" },
							{ "source", "android" },
							{ "androidId", gmailInfo.getDeviceId() },
							{ "app", "com.android.vending" },
							{ "device_country", "en" },
							{ "lang", "en" },
							{ "sdk_version", "16" },
							{ "client_sig",
									"38918a453d07199354f8b19af05ec6562ced5788" }, },
					null);

			Map<String, String> response = GooglePlayUtils.parseResponse(new String(GooglePlayUtils
					.readAll(responseEntity.getContent())));
			if (response.containsKey("Auth")) {
				gmailInfo.setLoginToken(response.get("Auth"));
				System.out.println("Token--" + response.get("Auth"));
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	/**
	 * 1)执行checkin，生成android-id和securityToken<br/>
	 * 2)使用邮箱和密码进行ac2dm服务的身份认证<br/>
	 * 3)执行checkin，并写入1)中获得的android-id和securityToken、邮箱以及2)中获得的值<br/>
	 * 
	 * Performs authentication on "ac2dm" service and match up android id,
	 * security token and email by checking them in on this server.
	 * 
	 * This function sets check-inded android ID and that can be taken either by
	 * using <code>getToken()</code> or from returned
	 * {@link AndroidCheckinResponse} instance.
	 * 
	 */
	public AndroidCheckinResponse checkin(GmailInfo gmailInfo) throws Exception {

		// this first checkin is for generating android-id
		AndroidCheckinResponse checkinResponse = postCheckin(GooglePlayUtils
				.generateAndroidCheckinRequest().toByteArray());

		gmailInfo.setDeviceId(BigInteger.valueOf(checkinResponse.getAndroidId())
				.toString(16));
		System.out.println("AndroidId--"+gmailInfo.getDeviceId());
		gmailInfo.setSecurityToken(BigInteger.valueOf(checkinResponse.getSecurityToken()).toString(16));
		String c2dmAuth = loginAC2DM(gmailInfo);
		// this is the second checkin to match credentials with android-id
		AndroidCheckinRequest.Builder checkInbuilder = AndroidCheckinRequest
				.newBuilder(GooglePlayUtils.generateAndroidCheckinRequest());
		AndroidCheckinRequest build = checkInbuilder
				.setId(new BigInteger(gmailInfo.getDeviceId(), 16).longValue())
				.setSecurityToken(
						new BigInteger(gmailInfo.getSecurityToken(), 16).longValue())
				.addAccountCookie("[" + gmailInfo.getGmailAccout() + "]")
				.addAccountCookie(c2dmAuth).build();
		return postCheckin(build.toByteArray());
	}
	
	/**
	 * 登录AC2DM服务，并返回身份验证的字符串<br/>
	 * Logins AC2DM server and returns authentication string.
	 * 
	 * <p>
	 * client_sig is SHA1 digest of encoded certificate on
	 * <i>GoogleLoginService(package name : com.google.android.gsf)</i> system
	 * APK. But google doesn't seem to care of value of this parameter.
	 */
	public String loginAC2DM(GmailInfo gmailInfo) throws IOException {
		HttpEntity c2dmResponseEntity = executePost(
				Constants.URL_LOGIN,
				new String[][] {
						{ "Email", gmailInfo.getGmailAccout() },
						{ "Passwd", gmailInfo.getGmailPsw() },
						{ "service", "ac2dm" },
						{ "accountType", 
							            Constants.ACCOUNT_TYPE_HOSTED_OR_GOOGLE  },
						{ "has_permission", "1" },
						{ "source", "android" },
						{ "app", "com.google.android.gsf" },
						{ "device_country", "us" },
						{ "operatorCountry", "us" },
						{ "lang", "en" },
						{ "RefreshService", "1" }, 
						{"add_account", "1"},
						{"androidId", gmailInfo.getDeviceId()}},
				null);

		Map<String, String> c2dmAuth = GooglePlayUtils.parseResponse(new String(GooglePlayUtils
				.readAll(c2dmResponseEntity.getContent())));
		return c2dmAuth.get("Auth");

	}
	
	/**
	 * 使用post方式提交checkin的请求<br/>
	 * Posts given check-in request content and returns
	 * {@link AndroidCheckinResponse}.
	 */
	public AndroidCheckinResponse postCheckin(byte[] request)
			throws IOException {

		HttpEntity httpEntity = postUrl(Constants.URL_CHECKIN, new ByteArrayEntity(
				request), new String[][] {
				{ "User-Agent", "Android-Checkin/2.0 (generic JRO03E); gzip" },
				{ "Host", "android.clients.google.com" },
				{ "Content-Type", "application/x-protobuffer" } });
		return AndroidCheckinResponse.parseFrom(httpEntity.getContent());
	}

}


