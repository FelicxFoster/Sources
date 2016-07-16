import numpy as np

persontype = np.dtype({
    'names':['name', 'age', 'weight'],
    'formats':['S32', 'i', 'f']
    }, align=True)

a = np.array([('Zhangsan', 23, 65),('Lisi', 25, 75.5), ('Wangermazi', 30, 87.3)], dtype=persontype)

a.tofile("test.bin")
