package com.lilyblog.action;

import java.util.Map;

import com.lilyblog.po.Critique;
import com.lilyblog.service.CritiqueService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AddCritique extends ActionSupport {
	private CritiqueService critiqueService;
	private int id;
	private String content;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public CritiqueService getCritiqueService() {
		return critiqueService;
	}

	public void setCritiqueService(CritiqueService critiqueService) {
		this.critiqueService = critiqueService;
	}

	public String execute() throws Exception {
		Map session = ActionContext.getContext().getSession();
		String username = (String) session.get("username");
		Critique critique = new Critique();
		if(username == null || "".equals(username)) {
			critique.setUsername("匿名");
		} else {
			critique.setUsername(username);
		}
		critique.setAId(id);
		critique.setContent(content);

		// 保存评论
		this.critiqueService.addCritique(critique);

		return this.SUCCESS;
	}

}
