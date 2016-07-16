import numpy as np
from matplotlib.pyplot import plot

def triangle_wave(x, c, c0, hc):
	x = x - int(x) # 三角波的周期为1，因此只取x坐标的小数部分进行计算
	if x >= c: r = 0.0
	elif x < c0: r = x / c0 * hc
	else: r = (c-x) / (c-c0) * hc
	return r

##method 1	
x = np.linspace(0, 2, 1000)
y = np.array([triangle_wave(t, 0.6, 0.4, 1.0) for t in x])
plot(x, y)

##method 2
triangle_ufunc = np.frompyfunc( lambda x: triangle_wave(x, 0.6, 0.4, 1.0), 1, 1)
y2 = triangle_ufunc(x)


##method 3
def triangle_func(c, c0, hc):
	def trifunc(x):
		x = x - int(x) # 三角波的周期为1，因此只取x坐标的小数部分进行计算
		if x >= c: r = 0.0
		elif x < c0: r = x / c0 * hc
		else: r = (c-x) / (c-c0) * hc
		return r
		           # 用trifunc函数创建一个ufunc函数，可以直接对数组进行计算, 不过通过此函数
		           # 计算得到的是一个Object数组，需要进行类型转换
	return np.frompyfunc(trifunc, 1, 1)
	
y2 = triangle_func(0.6, 0.4, 1.0)(x)
y2.astype(np.float64)
##用frompyfunc得到的函数计算出的数组元素的类型为object，因为frompyfunc函数无法保证Python函数
##返回的数据类型都完全一致。因此还需要再次y2.astype(np.float64)将其转换为双精度浮点数组。
