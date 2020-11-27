#!/usr/local/bin/python3   
from ctypes import * 
import os  
# 参数为生成的.so文件所在的绝对路径
libtest = cdll.LoadLibrary(os.getcwd() + '/func.so')
# 直接用方法名进行调用
libtest.display('Hello')
print(libtest.add(2,2010))