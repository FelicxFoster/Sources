# If you are on 32 bit OS:
# import Image

from PIL import Image
import numpy as np
import matplotlib.pyplot as plt
import time
from statistics import mean

def threshold(imageArray):

    balanceAr = []
    newAr = imageArray
    from statistics import mean
    for eachRow in imageArray:
        for eachPix in eachRow:
            avgNum = mean(eachPix[:3])
            balanceAr.append(avgNum)

    balance = mean(balanceAr)

    for eachRow in newAr:
        for eachPix in eachRow:
            if mean(eachPix[:3]) > balance:
                eachPix[0] = 255
                eachPix[1] = 255
                eachPix[2] = 255
                eachPix[3] = 255
            else:
                eachPix[0] = 0
                eachPix[1] = 0
                eachPix[2] = 0
                eachPix[3] = 255
    return newAr


i1 = Image.open('dot.png')
iar1 = np.array(i1)
i2 = Image.open('chop.png')
iar2 = np.array(i2)
i3 = Image.open('dot.png')
iar3 = np.array(i3)
i4 = Image.open('chop.png')
iar4 = np.array(i4)


threshold(iar1)
threshold(iar2)



fig = plt.figure()
ax1 = plt.subplot2grid((8,6), (0,0), rowspan=4, colspan=3)
ax2 = plt.subplot2grid((8,6), (4,0), rowspan=4, colspan=3)
ax3 = plt.subplot2grid((8,6), (0,3), rowspan=4, colspan=3)
ax4 = plt.subplot2grid((8,6), (4,3), rowspan=4, colspan=3)


ax1.imshow(iar1)
ax2.imshow(iar2)
ax3.imshow(iar3)
ax4.imshow(iar4)


plt.show()

