# -*- coding: utf-8 -*-
import scrapy
from jiandan.items import XXOOItem


class XxooSpiderSpider(scrapy.Spider):
    name = "xxoo"
    allowed_domains = ["baidu.com"]
    start_urls = (
        'http://tieba.baidu.com/f?kw=%E5%A5%B3%E7%A5%9E&ie=utf-8',
    )

    def parse(self, response):
        urls = response.css('.j_thread_list .threadlist_title a::attr(href)').extract()
        for url in urls:
            full_url = response.urljoin(url)
            yield scrapy.Request(full_url, callback=self.parse_item)

    def parse_item(self, response):
        item = XXOOItem()
        item['image_urls'] = response.css('.BDE_Image::attr(src)').extract()
        yield item

    # def parse(self, response):

    #     yield scrapy.Request(response.url, headers=self.headers, callback=self.parse_item)

    # def parse_item(self, response):
    #     item = XXOOItem()
    #     item['image_urls'] = response.css('.commentlist li a::attr(href').extract()
    #     yield item
