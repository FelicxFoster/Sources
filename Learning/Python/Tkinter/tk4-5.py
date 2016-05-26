from tkinter import *

master = Tk()

v = StringVar()

def test1():
    if e1.get() == 'SQD':
        print('Yes!')
        return True
    else:
        print('No!')
        e1.delete(0,END)
        return False
def test2():
    print('我被调用啦...')
    return True


e1 = Entry(master, textvariable=v, validate="focusout", \
           validatecommand=test1, invalidcommand=test2)
e2= Entry(master)
e1.pack(padx=10, pady=10)
e2.pack(padx=10, pady=10)
    

mainloop()
