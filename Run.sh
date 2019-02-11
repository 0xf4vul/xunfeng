#!/bin/bash
CURRENT_PATH=`dirname $0`
cd $CURRENT_PATH

XUNFENG_LOG=/var

[ ! -d $XUNFENG_LOG ] && mkdir -p ${XUNFENG_LOG}


nohup python ./Run.py > ${XUNFENG_LOG}/web.log &
nohup python ./aider/Aider.py > ${XUNFENG_LOG}/aider.log &
nohup python ./nascan/NAScan.py > ${XUNFENG_LOG}/scan.log &
nohup python ./vulscan/VulScan.py > ${XUNFENG_LOG}/vul.log &
