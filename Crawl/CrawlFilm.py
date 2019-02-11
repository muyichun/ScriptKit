# -*- coding: utf-8 -*-
import urllib
import requests
import io
import time
import re

def writeTxt(id,title,url):
    f=io.open("/Users/muyichun/Desktop/dingding/crawl/record2.txt","a+")
    f.write(str(id).decode("utf-8"))
    f.write("——".decode("utf-8"))
    f.write(title)
    f.write("——".decode("utf-8"))
    f.write(url+"\n")
    f.close()

def check(page):
    url = 'http://190flb.com/portal/article/index/id/{0}.html'.format(page)
    response  = requests.get(url)
    response.encoding="utf-8"
    content = response.text;
    v = content.find('ThinkPHP')
    if v==-1:
        return url
    return "no"

def main():
    url="http://190flb.com/portal/article/index/id/13507.html"
    # 创建session对象，可以保存Cookie值
    # ssion = requests.session()
    # 处理 headers
    headers = {"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36","Cookie": "PHPSESSID=t7ifmu5kob8fsranfbq4jmdri7; UM_distinctid=167084cb61eed4-07acf939bc91cf-1e3f6654-13c680-167084cb61f908; CNZZDATA1271801478=2064774567-1542031498-%7C1542209798"}

    # 发送附带用户名和密码的请求，并获取登录后的Cookie值，保存在ssion里
    # r = ssion.post(logo_url, data = data)
    # content = requests.get(url,headers = headers)
    #  ssion包含用户登录后的Cookie值，可以直接访问那些登录后才可以访问的页面
    

    for i in range(10000,15000):
        print i
        real_url = check(i)
        if real_url != "no":
            response = requests.get(real_url,headers = headers)
            text = response.text
            if (text.find('此处内容需要登录,请'.decode("utf-8")) != -1):
                print "Cookie fail..."
                return
            num = text.find('https://dl.190up.xyz/uploads/mp4/')
            if num != -1:
                title = re.findall(r"<title>.+</title>",text)[0]
                title = title[7:len(title)-8]
                down_url=re.findall(r"https://dl.190up.xyz/uploads/mp4/.+mp4",text)[0]
                writeTxt(i,title,down_url)
                # writeTxt(i,title,text[num:num+59],f)

# xxx(response.text) 

main()