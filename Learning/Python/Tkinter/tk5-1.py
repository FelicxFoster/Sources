from tkinter import *

master = Tk()

theLB = Listbox(master,selectmode=EXTENDED)
theLB.pack()

list1 = ['鸡蛋', '鸭蛋', '鹅蛋', '李狗蛋', '尼玛蛋']

for item in list1:
    theLB.insert(END, item)

theButton = Button(master, text='删除它', \
                   command=lambda x=theLB:x.delete(ACTIVE))
theButton.pack()

mainloop()

