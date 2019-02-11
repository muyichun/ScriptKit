# -*- coding: utf-8 -*-
import urllib
import requests
import io

'''
    模拟登陆
'''

# post_param = {'action':'','start':'0','limit':'1'}
url="https://190fl.me/portal/article/index/id/29381.html"

logo_url="https://190fl.me/user/login/dologin.html"

# 创建session对象，可以保存Cookie值
ssion = requests.session()
# 处理 headers
headers = {"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36"}

# 3需要登录的用户名和密码
data = {"username":"muyichun", "password":"muyichun"}  

# 发送附带用户名和密码的请求，并获取登录后的Cookie值，保存在ssion里
r = ssion.post(logo_url, data = data)  
# print r.text
#  ssion包含用户登录后的Cookie值，可以直接访问那些登录后才可以访问的页面
response = ssion.get(url)

# 打印响应内容
text = response.text
num = text.index('https://dl.190up.xyz/uploads/mp4/')
print text[num:num+59]
# xxx(response.text) 