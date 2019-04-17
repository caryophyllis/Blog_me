package com.lilyblog.service;


import org.apache.solr.client.solrj.SolrClient;
import org.apache.solr.client.solrj.impl.HttpSolrClient;

import com.opensymphony.xwork2.interceptor.annotations.Before;

public class SolrServer {

	private final  static String URL="http://localhost:8080/solr/";
    public SolrClient  server=null;
    
    @Before
    public void init() throws Exception{
        server=new HttpSolrClient(URL);
    }
}