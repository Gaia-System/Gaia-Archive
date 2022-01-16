# This GUI can read only English.
# I'll try to edit it that will read every language and alphabets.

import zipfile as zip
import os
from tkinter import *
import tkinter.messagebox as msgbox

gui = Tk()
gui.title("UNZIP")
gui.geometry("480x360")

def quit():
    response = msgbox.askyesno("Quit", "Are you sure?")
    if response == 1: gui.quit()

def unzip():
    response = msgbox.askyesno("Unzip", "Did you check the path clearly?")
    if response == 1:
        os.chdir(path.get())
        zips = os.listdir(path.get())
        dir_len = len(zips)
        for i in range(dir_len):
            unzips = zip.ZipFile(zips[i])
            unzips.extractall(path.get())
            unzips.close()
            i += 1

title = Label(gui, text = "UNZIP", font = ("times new roman", 30, "bold"))
title.pack()

caution = Label(gui, text = "CAUSION\nThis UNZIP program can read ONLY enlish",
                font = ("times new roman", 15, "bold"), fg = "red")
caution.place(x = 50, y = 150)

path = Entry(gui, width = 30)
path.place(x = 130, y = 50)
path.insert(0, "Zipfiles Path")

quit_btn = Button(gui, width = 15, text = "QUIT", command = quit)
quit_btn.place(x = 250, y = 300)

unzip_btn = Button(gui, width = 15, text = "UNZIP", command = unzip)
unzip_btn.place(x = 100, y = 300)

gui.mainloop()
