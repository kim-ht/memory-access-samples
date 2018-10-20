#!/bin/bash
gcc -mpreferred-stack-boundary=4 heap.c -o heap
gcc -mpreferred-stack-boundary=4 -pie -fPIC heap.c -o heap_pie
gcc -mpreferred-stack-boundary=2 -m32 heap.c -o heap_32
gcc -mpreferred-stack-boundary=2 -m32 -pie -fPIC heap.c -o heap_32_pie
