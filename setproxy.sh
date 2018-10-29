#!/bin/sh

. $SET_PROXY/config

if [ $# -le 2 ]; then
	echo please key as argment
elif [ $3 = clear ]; then
	unset http_proxy
	unset https_proxy
	echo Deleted https and http proxy

	git config --global --unset http.proxy
	git config --global --unset https.proxy
else
	arg=$3
	proxy=${!arg}
	export http_proxy="http://${proxy}"
	export https_proxy="https://${proxy}"

	git config --global http.proxy http://${proxy}
	git config --global https.proxy https://${proxy}

	echo https://${proxy}
	echo http://${proxy}
fi
