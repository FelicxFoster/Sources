from html.parser import HTMLParser
from urllib import parse


class LinkFinder(HTMLParser):

    def __init__(self, base_url, page_url):
        super().__init__()
        self.base_url = base_url
        self.page_url = page_url
        self.links = set()

    # Overwrite the default method
    def handle_starttag(self, tag, attrs):
        if tag == 'a':
            for (attribute, value) in attrs:
                if attribute == 'href':
                    url = parse.urljoin(self.base_url, value)
                    self.links.add(url)

    def page_links(self):
        return self.links

    def error(self, message):
        pass


# finder = LinkFinder('http://www.suqingdong.com', 'xxx')
# finder.feed('<html><head><title>Test</title></head>\
# 	<body><h1>Please Parse me!</h1><a href="/video/1"></a><a href="/video/2"></a><a href="/video/3"></a></body></html>')
# print(finder.page_links())
