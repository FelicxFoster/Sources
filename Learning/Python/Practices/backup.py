# 文件备份小程序练习

import zipfile as zf
import os
import time 


source = r"D:\utorrent2.0.4"

target_dir = r"D:\备份"
if not os.path.exists(target_dir):
    os.mkdir(target_dir)


target = target_dir + os.sep + time.strftime("%Y%m%d%H%M%S")+ ".zip"


with zf.ZipFile(target, 'w') as f:
    for dirpath, dirname, filenames in os.walk(source):
        for filename in filenames:
            fullname = dirpath + os.sep + filename
            shortname = source.split("\\")[-1] + os.sep + \
                        dirpath.split(source)[-1] + os.sep + filename
            f.write(fullname, shortname)
            
if os.path.exists(target):
    print("成功备份至：", target)
    
