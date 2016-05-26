from tkinter import *

root = Tk()

w = Canvas(root, width=400, height=200)
w.pack()


def paint(event):
    x1, y1 = (event.x - 0.1), (event.y - 0.1)
    x2, y2 = (event.x + 0.1), (event.y + 0.1)
    w.create_oval(x1, y1, x2, y2, fill="red")

w.bind("<B1-Motion>", paint)  #绑定事件

Label(root, text='按住鼠标左键并移动，开始绘制吧~~~')

mainloop()
