import urllib.request
import re
import os
import urllib.parse
import requests
import multiprocessing
class search_picture():
    def __init__(self):
        pass
    def run(self):
        key = input('输入查找关键词:')
        #用urllib.parse.quote（）将中文转为urlencode编码
        #root_url最后面的数字适用于任意关键词
        count=1
        #pa增加20图片大概增加60张
        pa=0
        os.mkdir('Pictures')
        while pa<80:
            root_url='http://image.baidu.com/search/flip?tn=baiduimage&ie=utf-8&word=%s&pn=%d&gsm=500000064' % (str(urllib.parse.quote(key))+'%e5%a3%81%e7%ba%b8',pa)
            #创建多个进程，这里每个进程负责60张图片
            p=multiprocessing.Process(target=self.download_now,args=(root_url,count))
            p.start()
            pa=pa+20
            #从count便于区分是哪个进程
            count=count+100
    def get_picture_url(self,root_url):
        picture_url=[]
        html = requests.get(root_url).text
        picture_url = re.findall('"objURL":"(.*?)",', html, re.S)
        return picture_url
    def download_now(self,url,count):
        p_url=self.get_picture_url(url)
        if len(p_url) is 0:
            print('未提取到图片url')
            return
        path='Pictures/%d.jpg' % count
        for url in p_url:
            f=1
            #try 和 except语句避免遇到死链时程序崩溃
            try:
                urllib.request.urlretrieve(url,path)
                #大概性过滤非高清图片
                #因为过滤了一些，所以实际下载数量少于预期
                if os.path.getsize(path) < 200000:
                    os.remove(path)
                    count = count - 1
                    f=0
                if f == 1:
                    #其实这里提示之前相应的那张图片已经下载好了----
                    print('正在下载第%d张:%s' % (count, url))
                count = count + 1
                path = 'Pictures/%d.jpg' % count
            except:
                print('当前图片链接不可用')
        return count
if __name__ == '__main__':
    search_now=search_picture()
    search_now.run()
