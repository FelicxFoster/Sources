from tkinter import *

root = Tk()

w = Spinbox(root, from_=0, to=10, increment=0.5, wrap=True)
w.pack()



mainloop()
