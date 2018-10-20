#!/bin/bash
gcc -mpreferred-stack-boundary=4 global.c -o global
gcc -mpreferred-stack-boundary=4 -pie -fPIC global.c -o global_pie
gcc -mpreferred-stack-boundary=2 -m32 global.c -o global_32
gcc -mpreferred-stack-boundary=2 -m32 -pie -fPIC global.c -o global_32_pie
