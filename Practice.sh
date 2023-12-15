#!/bin/bash

a="Hello"
b="HELLO"


if [ "${a,,}" == "${b,,}" ]; then
    echo "Matched"
else
    echo "Else"
fi










