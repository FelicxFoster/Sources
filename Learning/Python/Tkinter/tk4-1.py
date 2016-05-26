from tkinter import *

root = Tk()

e = Entry(root)  #输入框
e.pack(padx=20, pady=20)

e.delete(0, END)
e.insert(0, "默认文本...")

mainloop()
