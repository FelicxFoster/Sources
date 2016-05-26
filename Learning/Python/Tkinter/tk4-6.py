from tkinter import *

master = Tk()

v = StringVar()

def test(content, reason, name):
    if content == 'SQD':
        print('Yes!')
        print(content, reason, name)
        return True
    else:
        print('No!')
        e1.delete(0,END)
        return False

testCMD = master.register(test)
e1 = Entry(master, textvariable=v, validate="focusout", \
           validatecommand=(testCMD, '%P', '%v', '%W'))
e2= Entry(master)
e1.pack(padx=10, pady=10)
e2.pack(padx=10, pady=10)
    

mainloop()
