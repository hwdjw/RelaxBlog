package com.util;

import cn.edu.hfut.dmic.webcollector.model.CrawlDatums;
import cn.edu.hfut.dmic.webcollector.model.Page;
import cn.edu.hfut.dmic.webcollector.plugin.berkeley.BreadthCrawler;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by DELL on 2017-06-10.
 */
public class TutorialCrawler extends BreadthCrawler {


    List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();

    public TutorialCrawler(String crawlPath, boolean autoParse) {
        super(crawlPath, autoParse);
    }

    /*
        可以往next中添加希望后续爬取的任务，任务可以是URL或者CrawlDatum
        爬虫不会重复爬取任务，从2.20版之后，爬虫根据CrawlDatum的key去重，而不是URL
        因此如果希望重复爬取某个URL，只要将CrawlDatum的key设置为一个历史中不存在的值即可
        例如增量爬取，可以使用 爬取时间+URL作为key。

        新版本中，可以直接通过 page.select(css选择器)方法来抽取网页中的信息，等价于
        page.getDoc().select(css选择器)方法，page.getDoc()获取到的是Jsoup中的
        Document对象，细节请参考Jsoup教程
    */

    public void visit(Page page, CrawlDatums next) {
        Map<String, Object> result = new HashMap<String, Object>();
        if (page.matchUrl("http://blog.csdn.net/.*/article/details/.*")) {
            String url = page.url();
            String title = page.select("div[class=article_title]").first().text();
            String author = page.select("div[id=blog_userface]").first().text();
            result.put("url", url);
            result.put("title", title);
            result.put("author", author);
            list.add(result);
        }
    }

    public List<Map<String, Object>> getResult()
    {
        return list;
    }

//    public static void main(String[] args) throws Exception {
//        TutorialCrawler crawler = new TutorialCrawler("crawler", true);
//        crawler.addSeed("http://blog.csdn.net/");
//        crawler.addRegex("http://blog.csdn.net/.*/article/details/.*");
//
//        /*可以设置每个线程visit的间隔，这里是毫秒*/
//        //crawler.setVisitInterval(1000);
//        /*可以设置http请求重试的间隔，这里是毫秒*/
//        //crawler.setRetryInterval(1000);
//
//        crawler.setThreads(30);
//        crawler.start(2);
////        String url="http://blog.csdn.net/men_wen/article/details/72871618";
////        News news = ContentExtractor.getNewsByUrl(url);
////        String content = ContentExtractor.getContentByUrl(url);
////        System.out.println("content:\n"+news.getContentElement().toString());
//        List<Map<String, Object>> result = crawler.getResult();
//        System.out.println(result);
//    }
}
