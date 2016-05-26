from tkinter import *

root = Tk()

text = Text(root, width=30, height=5)
text.pack()

text.insert(INSERT, 'I love \n')#END从末尾 INSERT从光标处
text.insert(END, 'FishC')

def show():
    print('麻蛋，谁点我！')

b1 = Button(text, text='点我点我', command=show) #副组件必须为text才能插入到Text组件中，不能是root
text.window_create(INSERT, window=b1)

mainloop()
