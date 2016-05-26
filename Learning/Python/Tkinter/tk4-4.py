from tkinter import *

master = Tk()

def test():
    if e1.get() == 'SQD':
        print('Yes!')
        return True
    else:
        print('No!')
        e1.delete(0,END)
        return False

v = StringVar()

e1 = Entry(master, textvariable=v, validate="focusout", validatecommand=test)
e2= Entry(master)
e1.pack(padx=10, pady=10)
e2.pack(padx=10, pady=10)
    

mainloop()
