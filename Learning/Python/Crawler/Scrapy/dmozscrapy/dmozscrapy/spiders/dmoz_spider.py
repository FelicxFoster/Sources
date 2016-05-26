# -*- coding: utf-8 -*-
import scrapy
from dmozscrapy.items import DmozItem


class DmozSpider(scrapy.spiders.Spider):
    name = "dmoz"
    allowed_domains = ["dmoz.org"]
    start_urls = (
        "http://www.dmoz.org/Computers/Programming/Languages/Python/Books/",
        # "http://www.dmoz.org/Computers/Programming/Languages/Python/Resources/",
    )

    def parse(self, response):
        #self.logger.info('Crawling on: %s' % response.url)
        item = DmozItem()
        for sel in response.xpath('//ul[@class="directory-url"]/li'):
            item['title'] = sel.xpath('a/text()').extract()[0]
            item['link'] = sel.xpath('a/@href').extract()[0]
            item['desc'] = sel.xpath('text()').extract()[1].strip()
            yield item
