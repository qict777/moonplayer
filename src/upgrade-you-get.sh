#!/bin/bash

which python3 > /dev/null || {
    echo -e "\033[31m Python3 is not installed. Please download it from python.org. \033[0m"
    exit 0
}

echo -e "\033[34m *** Upgrading pip *** \033[0m"
pip3 install --upgrade pip

YOU_GET=`pip3 list | grep you-get`
if [ -z "$YOU_GET" ]; then
    echo -e "\033[34m *** Installing you-get *** \033[0m"
    pip3 install you-get
else
    echo -e "\033[34m *** Upgrading you-get *** \033[0m"
    pip3 install --upgrade you-get
fi

echo -e "\033[34m *** End *** \033[0m"
