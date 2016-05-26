from tkinter import *

root = Tk()

def callback():
    print('你好^_^')

menubar = Menu(root) #顶级菜单

filemenu = Menu(menubar, tearoff=True) #tearoff撕开菜单
filemenu.add_command(label='打开', command=callback)
filemenu.add_command(label='保存', command=callback)
filemenu.add_separator() #插入分隔线
filemenu.add_command(label='退出', command=root.quit)
menubar.add_cascade(label='文件', menu=filemenu)#创建级联菜单

editmenu = Menu(menubar, tearoff=False) #单独的实例
editmenu.add_command(label='剪切', command=callback)
editmenu.add_command(label='复制', command=callback)
editmenu.add_command(label='粘贴', command=callback)
menubar.add_cascade(label='编辑', menu=editmenu)#创建级联菜单


root.config(menu=menubar) #关联到root窗口中


mainloop()
