#!/bin/sh

. $SET_PROXY/config

if [ $# = 0 ]
then
	unset http_proxy
	unset https_proxy
	echo Deleted https and http proxy
else
	proxy=$1
	export https_proxy="https://${!proxy}"
	export http_proxy="http://${!proxy}"
	
	export | grep -E "https_proxy|http_proxy"
fi
