package com.google.play.cache.gmail;

import java.util.Map;

import com.google.play.model.GmailInfo;

//将Gmail保存在内存中

public interface GmailCache {
	
	//是否存在缓存好的Gmail
	public Boolean isCached() throws Exception;
	
	//添加Gmail
	public void putGmails() throws Exception;
	
	//随机获取一个可使用的Gmail
	public Map<Integer,GmailInfo> getRandomGmail() throws Exception;

	//删除不可用Gmail
	public void removeGmail(int position) throws Exception;
	
	//更新Gmail信息
	public void updateGmail(Map<Integer,GmailInfo> gmailInfo) throws Exception;
	
	//获取相应位置的Gmail信息
	public Map<Integer,GmailInfo> getGmail(int position) throws Exception;


}
