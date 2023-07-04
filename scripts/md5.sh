#!/bin/bash

md5deep "$1" | python -c "print((input().split())[0])"
