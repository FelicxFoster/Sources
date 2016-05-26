from tkinter import *

root = Tk()

def callback():
    print('你好^_^')

menubar = Menu(root) #顶级菜单


openVar = IntVar()
saveVar = IntVar()
quitVar = IntVar()

filemenu = Menu(menubar, tearoff=True) #tearoff撕开菜单
filemenu.add_checkbutton(label='打开', command=callback, variable=openVar)
filemenu.add_checkbutton(label='保存', command=callback, variable=saveVar)
filemenu.add_separator() #插入分隔线
filemenu.add_checkbutton(label='退出', command=root.quit, variable=quitVar)
menubar.add_cascade(label='文件', menu=filemenu)#创建级联菜单


editVar = IntVar()

editmenu = Menu(menubar, tearoff=False) #单独的实例
editmenu.add_radiobutton(label='剪切', command=callback, variable=editVar, value=1)
editmenu.add_radiobutton(label='复制', command=callback, variable=editVar, value=2)
editmenu.add_radiobutton(label='粘贴', command=callback, variable=editVar, value=3)
menubar.add_cascade(label='编辑', menu=editmenu)#创建级联菜单


root.config(menu=menubar) #关联到root窗口中


mainloop()
