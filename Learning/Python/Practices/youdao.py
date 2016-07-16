import sys
import json
import urllib, urllib.parse, urllib.request, urllib.response

url = 'http://fanyi.youdao.com/translate?smartresult=dict&smartresult=rule&smartresult=ugc&sessionFrom=http://dict.youdao.com/'

sentence = repr(input("Input the sentence: "))

form_data = {
	'type':'AUTO',
	'i':sentence,
	'doctype':'json',
	'xmlVersion':'1.8',
	'keyfrom':'fanyi.web',
	'ue':'UTF-8',
	'action':'FY_BY_ENTER',
	'typoResult':'true',
}

data = urllib.parse.urlencode(form_data).encode('utf-8')

req = urllib.request.Request(url, data)
req.add_header('User_Agent','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36')

res = urllib.request.urlopen(req)
html = res.read().decode('utf-8')

result = json.loads(html)['translateResult'][0][0]['tgt']


print("Result: %s" % result)
