import tkinter as tk

class APP:
    def __init__(self, master):
        frame = tk.Frame(master)
        frame.pack(side=tk.LEFT, padx=100, pady=10)

        self.hi_there = tk.Button(frame, text="打招呼", bg='black', fg='white', command=self.say_hi)
        self.hi_there.pack()

    def say_hi(self):
        print("大家好，请多指教~~")
        
root = tk.Tk()
app = APP(root)

root.mainloop()
