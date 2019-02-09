#!/usr/bin/env python
# -*- coding: utf-8 -*-
#########################################################################
# Author: muyichun
# Created Time: 2018-01-17 15:32:15
# File Name: scenevideo.py
# Description:
#########################################################################
import getopt
import sys
import os.path
import mimetypes
import json
import MultipartPostHandler, urllib2, cookielib
import mimetypes
import httplib
import codecs

def upload(URL,fields,picName,picPath,videoName,videoPath):
    content_type, body = encode_multipart_formdata(fields, picName,picPath,videoName,videoPath)
    req=urllib2.Request(URL, data=body)
    req.add_header('content-type', content_type)
    try:
        resq = urllib2.urlopen(req,timeout=300)
        qrcont = resq.read();
        print(qrcont);
    except urllib2.URLError,e:
        print e.read();
def encode_multipart_formdata(fields, picName,picPath,videoName,videoPath):
    LIMIT = '----------lImIt_of_THE_fIle_eW_$'
    CRLF = '\r\n'
    L = []
    for (key, value) in fields.items():
        L.append('--' + LIMIT)
        L.append('Content-Disposition: form-data; name="%s"' % key)
        L.append('')
        L.append(value)
    #pic
    for i in range(0, len(picPath)):
        L.append('--' + LIMIT)
        L.append('Content-Disposition: form-data; name="%s"; filename="%s"' % (picName+"["+str(i)+"]", picPath[i].encode('utf8')))
        L.append('Content-Type: %s' % get_content_type(picPath[i].encode('utf8')))
        L.append('')
        L.append(open(picPath[i].encode('utf8'), 'rb').read())
    #video
    for i in range(0, len(videoPath)):
        L.append('--' + LIMIT)
        L.append('Content-Disposition: form-data; name="%s"; filename="%s"' % (videoName+"["+str(i)+"]", videoPath[i].encode('utf8')))
        L.append('Content-Type: %s' % get_content_type(videoPath[i]))
        L.append('')
        L.append(open(videoPath[i].encode('utf8'), 'rb').read())
    L.append('--' + LIMIT + '--')
    L.append('')
    body = CRLF.join(L)
    content_type = 'multipart/form-data; boundary=%s' % LIMIT
    return content_type, body
def get_content_type(filename):
    return mimetypes.guess_type(filename)[0] or 'application/octet-stream'
def loadJson(jsonPath):
    f = open(jsonPath,'r');
    j = json.load(f)
    f.close()
    URL=j['url']
    DATA=j['data']
    BYTES=j['bytes']
    #upload
    #--url
    url=str(URL)
    #--data
    fields={}
    for i in range(0,len(DATA)):
        # print str(DATA[i]['key']),DATA[i]['value'].encode('utf8')
        fields[str(DATA[i]['key'])]=DATA[i]['value'].encode('utf8')
    #--bytes
    picName=str(BYTES['picName'])
    picPath=BYTES['picPath']
    videoName=str(BYTES['videoName'])
    videoPath=BYTES['videoPath']
    #--init
    upload(url,fields,picName,picPath,videoName,videoPath)
def getOptValue():
    tag='f:'
    filePath = ""
    longargs = []
    opts, args = getopt.getopt( sys.argv[1:], tag, longargs ) 
    for op,value in opts:
        if op == "-f":
            filePath = value
    return (filePath)
def main():
    filePath = getOptValue()
    loadJson(filePath)
main()