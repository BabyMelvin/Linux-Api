#!/bin/bash

# 将新用户账户放在文本文件中:userid,user_nam
input="users.csv"

while IFS=',' read -r userid name
do
    echo "adding $userid"
    useradd -r "$name" -m "$userid"
    echo "$name $userid"
done < "$input"

