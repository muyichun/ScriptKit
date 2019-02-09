# *-* coding:utf-8 *-*
import requests
import os
import sys

def upload():
    url= "http://101.200.77.107:9876/scene/add";
    #键值对
    data= {"sceneAssetName":"yyyyyyy1",
            "sceneAssetNameUpdate":"yyyyyyy1", 
            "sceneName":"test",
             "sceneDescription":"no description",
             "width":"1",
             "height":"1",
             "scale":"10"}
    #二进制: 文件/图片
    files=[];
    files.append( ('scenePics[]', open('/Users/muyichun/Desktop/libai.jpg','rb')) );
    files.append( ('scenePics[]', open('/Users/muyichun/Desktop/libai2.jpg','rb')) );
    response= requests.post(url, files= files, data= data)
    print response.text

def main():
    print("start");
    upload();
    print("end");
main()

'''
    使用request模块，此一个文件Demo
'''


