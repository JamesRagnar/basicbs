#!/usr/bin/env bash

if [[ "$(stat -c "%U" /usr/local/bin)" != "$(whoami)" ]];
then
    echo "/usr/local/bin not writeable, please provide permissions:"
    sudo chown $(whoami) /usr/local/bin
fi

cp bin/* /usr/local/bin/