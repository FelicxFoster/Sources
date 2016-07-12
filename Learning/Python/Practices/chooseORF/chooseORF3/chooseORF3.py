# -*- coding: utf-8 -*-
# 说明：从多行的excel文件的sheet1中按照sheet2选择特定行，生成一个新文件
from tkinter import *
from tkinter import filedialog

import xlrd
import xlwt


root = Tk()
root.title("^_^")

dic = {}
li = []

chosen = False

def callback(event=None):
    try:
        filename = filedialog.askopenfilename()
        book = xlrd.open_workbook(filename)
        
        sh1 = book.sheet_by_index(0)
        for r in range(sh1.nrows):
            temp = []
            for c in range(1, sh1.ncols):
                temp.append(sh1.cell_value(r,c))                
            dic[sh1.cell_value(r, 0)] = temp

        sh2 = book.sheet_by_index(1)
        for r in range(sh2.nrows):
            li.append(sh2.cell_value(r,0))

        global chosen
        chosen = True

        Message(root, text=filename.split('/')[-1], width=200, fg="blue").pack(fill=X)
        
    except FileNotFoundError as e:
        pass



def output():
    if chosen:
        try:
            wb = xlwt.Workbook()
            ws = wb.add_sheet('output')
            for i in range(len(li)):
                ws.write(i,0,li[i])
                if li[i] in dic.keys():                    
               
                    for n in range(len(dic[li[i]])):
                        ws.write(i,n+1,dic[li[i]][n])
                else:
                    ws.write(i, n+1, 'Not Found')

            wb.save("output.xls")
            Message(root, text="Done", width=200, fg="green").pack(fill=X)
        except Exception as e:
            Message(root, text=e, width=200, fg='red').pack(fill=X)
            
    else:
        Message(root, text="Choose a file first", width=200, fg="red").pack(fill=X)



root.bind("<Control-KeyPress-o>", callback)     

Button(root, text="Open...\tCtrl+O", command=callback, bg="black", fg="white", width=20).pack(fill=X)
Button(root, text="Submit", command=output, bg="black", fg="white", width=20).pack(fill=X)

mainloop()
