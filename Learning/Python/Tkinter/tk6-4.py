from tkinter import *

root = Tk()

text = Text(root, width=30, height=30)
text.pack()

photo = PhotoImage(file='zoro.gif')
 
def show():
    text.image_create(END, image=photo)

b1 = Button(text, text='点我点我', command=show) #副组件必须为text才能插入到Text组件中，不能是root
text.window_create(INSERT, window=b1)

mainloop()
