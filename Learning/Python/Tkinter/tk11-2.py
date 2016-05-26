from tkinter import *

root = Tk()

def callback(event):
    print(event.char)  #char 当前按下的字符

frame = Frame(root, width=200, height=200)
frame.bind('<Key>', callback)  #键盘的事件 组件要响应必须获得焦点
frame.focus_set()
frame.pack()

mainloop()
