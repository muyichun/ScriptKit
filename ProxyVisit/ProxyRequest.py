# -*- coding: utf-8 -*-
import urllib
import requests
import io

url="http://www.rkpass.cn/u.jsp?u=300144"
# url="http://www.ip.cn/"
# url="http://icanhazip.com/"
# url="http://www.ipip.net/ip.html"
headers = {
"Accept":"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8","Accept-Encoding":"gzip, deflate","Connection": "keep-alive","Host":"www.rkpass.cn","User-Agent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36",'Referer':'http://www.rkpass.cn/u.jsp?u=300144','Upgrade-Insecure-Requests':'1'
 }
proxies = {
    "http":'211.136.127.125:80',
}
# print('IP: ' + header['X-Forwarded-For'])
r = requests.get(url,headers=headers,proxies=proxies,timeout=30)
# r = requests.request("get",url,headers=header);
# print(r.headers)
print(r.text)

'''
    有空再研究吧，这个地方邀请页面，有一个重定向，我还没有解决。
    基本实现思路，就是用多个不同的代理进行访问。
    然后下面的代码是在网上copy过来的，是可以直接使用的。
'''

# import re
# import random
# import sys
# import time
# import datetime
# import threading
# from random import choice
# import requests
# import bs4

# uas = [
#     "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:17.0; Baiduspider-ads) Gecko/17.0 Firefox/17.0",
#     "Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.9b4) Gecko/2008030317 Firefox/3.0b4",
#     "Mozilla/5.0 (Windows; U; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727; BIDUBrowser 7.6)",
#     "Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0) like Gecko",
#     "Mozilla/5.0 (Windows NT 6.3; WOW64; rv:46.0) Gecko/20100101 Firefox/46.0",
#     "Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36",
#     "Mozilla/5.0 (Windows NT 6.3; Win64; x64; Trident/7.0; Touch; LCJB; rv:11.0) like Gecko",
#     ]
# def get_ip():
#     #get ip proxy
#     url = "http://www.xicidaili.com/nn"
#     headers = { "Accept":"text/html,application/xhtml+xml,application/xml;",
#                 "Accept-Encoding":"gzip, deflate, sdch",
#                 "Accept-Language":"zh-CN,zh;q=0.8,en;q=0.6",
#                 "Referer":"http://www.xicidaili.com",
#                 "User-Agent":"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.90 Safari/537.36"
#                 }
#     r = requests.get(url,headers=headers)
#     soup = bs4.BeautifulSoup(r.text, 'html.parser')
#     data = soup.table.find_all("td")
#     ip_compile= re.compile(r'<td>(\d+\.\d+\.\d+\.\d+)</td>')    
#     port_compile = re.compile(r'<td>(\d+)</td>')                
#     ip = re.findall(ip_compile,str(data))       
#     port = re.findall(port_compile,str(data))   
#     return [":".join(i) for i in zip(ip,port)]  
# def get_url(code=0,ips=[]):
#     try:
#         ip = choice(ips)
#     except:
#         return False
#     else:
#         proxies = {
#             "http":ip,
#         }
#         headers2 = { "Accept":"text/html,application/xhtml+xml,application/xml;",
#                         "Accept-Encoding":"gzip, deflate, sdch",
#                         "Accept-Language":"zh-CN,zh;q=0.8,en;q=0.6",
#                         "Referer":"http://www.rkpass.cn/u.jsp?u=300144",
#                         "User-Agent":choice(uas),
#                         }
#     try:
#         hz_url = "http://www.rkpass.cn/u.jsp?u=300144"
#         hz_r = requests.get(hz_url,headers=headers2,proxies=proxies)
#     except requests.exceptions.ConnectionError:
#         print "ConnectionError"
#         if not ips:
#             print "not ip"
#             sys.exit()
#         if ip in ips:
#             ips.remove(ip)
#         get_url(code,ips)
#     else:
#         date = datetime.datetime.now().strftime('%H:%M:%S')
#         print (code,date,ip,hz_r.text,len(ips))
#         print "xxxxxxxxxxxxxxx"

# ips = []
# for i in xrange(6000):
#     if i % 1000 == 0:
#         ips.extend(get_ip())
#     # get_url(i,ips)
#     t1 = threading.Thread(target=get_url,args=(i,ips))
#     t1.start()
#     time.sleep(1)