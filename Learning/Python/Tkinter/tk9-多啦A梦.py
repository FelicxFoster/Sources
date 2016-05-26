from tkinter import *

root = Tk()

w = Canvas(root, width=600, height= 600, background='gray')
w.pack()

w.create_line(300,0, 300,600, dash=(3,5))
w.create_line(0,230, 600,230, dash=(3,5))

#大脸
w.create_oval(200, 50, 400, 250, fill='blue')
w.create_oval(220, 90, 380, 250, fill='white')
#眼睛
w.create_oval(270, 70, 300, 110, fill='white')
w.create_oval(300, 70, 330, 110, fill='white')
#眼珠
w.create_oval(285, 83, 295, 97, fill='black')
w.create_oval(305, 83, 315, 97, fill='black')
#瞳孔
w.create_oval(288, 87, 292, 93, fill='white')
w.create_oval(308, 87, 312, 93, fill='white')
#红鼻子+黑竖线
w.create_oval(293, 103, 307, 117, fill='red')
w.create_line(300, 117, 300, 187)
#嘴巴 
w.create_arc(250, 155, 350, 187, start=180, extent=180, style=ARC)

#胡子
w.create_line(240, 150, 280, 150)
w.create_line(320, 150, 360, 150)

w.create_line(243, 135, 280, 140)
w.create_line(320, 140, 357, 135)

w.create_line(243, 165, 280, 160)
w.create_line(320, 160, 357, 165)

#身子
w.create_rectangle(240, 230, 360, 330, fill='blue')
#肚子
w.create_oval(260, 220, 340, 300, outline='', fill='white')
w.create_arc(270, 230, 330, 290, start=180, extent=180, style=CHORD)


#腿
w.create_oval(285, 315, 315, 345, outline='',fill='gray')
#脚
w.create_oval(230, 320, 290, 340, fill='white')
w.create_oval(310, 320, 370, 340, fill='white')
#胳膊
w.create_polygon(240,230, 200,270, 210,280, 240,265, fill='blue')
w.create_polygon(360,230, 400,270, 390,280, 360,265, fill='blue')

#手
w.create_oval(195,265, 215,285, fill='white')
w.create_oval(385,265, 405,285, fill='white')

#脖子
w.create_line(240,230, 360,230, capstyle=ROUND, width=13, fill='red')
#铃铛
w.create_oval(290,230, 310,250, fill='yellow')
w.create_line(290,240, 310,240, capstyle=ROUND, width=4, fill='green')
w.create_oval(297,242, 303,248, fill='red')
w.create_line(300,248, 300,250)



mainloop()
