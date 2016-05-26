from tkinter import *

root = Tk()

def callback(event):
    print('点击位置是：', event.x, event.y)  #.x相对于frame .x_root相对于屏幕

frame = Frame(root, width=200, height=200)
frame.bind('<Button-1>', callback)
frame.pack()

mainloop()
