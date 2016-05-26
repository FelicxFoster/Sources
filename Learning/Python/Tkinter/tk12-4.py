from tkinter import *

m = PanedWindow(orient=VERTICAL)
m.pack(fill=BOTH, expand=1)

top = Label(m, text='top pane')
m.add(top)

button = Label(m, text='button pane')
m.add(button)


mainloop()
