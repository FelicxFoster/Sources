import time

class Mytimer:
    def __init__(self):
        self.begin = 0
        self.time = 0
    
    def __repr__(self):            
            if self.time == 0:
                return "请先调用stop结束计时！"
            else:
                return "总共运行了%.5f秒" % self.time
        
    def start(self):
        print("开始计时...")
        self.begin = time.clock()

    def stop(self):
        if self.begin == 0:
            print("请先调用start开始计时！")
        else:
            print("计时结束.")
            self.time = time.clock() - self.begin
    
