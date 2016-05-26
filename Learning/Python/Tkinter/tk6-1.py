from tkinter import *

root = Tk()

text = Text(root, width=30, height=2)
text.pack()

text.insert(INSERT, 'I love \n')#END从末尾 INSERT从光标处
text.insert(END, 'FishC')


mainloop()
