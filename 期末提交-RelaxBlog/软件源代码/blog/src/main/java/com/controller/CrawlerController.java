package com.controller;

import com.util.TutorialCrawler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

/**
 * Created by DELL on 2017-06-11.
 */
@RestController

@RequestMapping("/crawler")
public class CrawlerController {
    @RequestMapping("/crawl")
    public List<Map<String, Object>> getRecommanded() {
        TutorialCrawler crawler = new TutorialCrawler("crawler", true);
        crawler.addSeed("http://blog.csdn.net/");
        crawler.addRegex("http://blog.csdn.net/.*/article/details/.*");

        /*可以设置每个线程visit的间隔，这里是毫秒*/
        //crawler.setVisitInterval(1000);
        /*可以设置http请求重试的间隔，这里是毫秒*/
        //crawler.setRetryInterval(1000);

        crawler.setThreads(30);
        try {
            crawler.start(2);
        } catch (Exception e) {
            e.printStackTrace();
        }
        List<Map<String, Object>> result=crawler.getResult();
        return  result;
    }

}
