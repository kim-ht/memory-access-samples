#!/bin/bash
gcc -mpreferred-stack-boundary=4 stack.c -o stack
gcc -mpreferred-stack-boundary=4 -pie -fPIC stack.c -o stack_pie
gcc -mpreferred-stack-boundary=2 -m32 stack.c -o stack_32
gcc -mpreferred-stack-boundary=2 -m32 -pie -fPIC stack.c -o stack_32_pie
