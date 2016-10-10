#!/bin/bash

url="http://rate.bot.com.tw/xrt/fltxt/0/day"
file_path="/tmp/rate.txt"

curl -s -H "Accept-Language: zh-TW,zh;q=0.8,en-US;q=0.5,en;q=0.3" "$url" | awk '{print $1, $13}' | tail -n +2  > "$file_path"

python jsonFormater.py "$file_path"
