package com.lilyblog.service;

import com.lilyblog.po.BlogInfo;

public interface BlogInfoService {
	//设置博客个性化内容
	public void setBlogInfo(BlogInfo blogInfo);
	
	//获得博客个性化内容
	public BlogInfo getBlogInfo(String name);
}
