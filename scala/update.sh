#!/bin/bash
current="$(cd `dirname $0`;pwd)"
versions=(`cat $current/versions`)
for v in ${versions[@]}
do
  if [ `svm list | grep $v | wc -l` -lt 1 ];then
    svm install $v
  fi
done
svm ${versions[((${#versions[*]}-1))]}
