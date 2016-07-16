# decorator practice

def memorize(f):
	cache = {}
	def helper(x):
		if x not in cache:
			cache[x] = f(x)
		return cache[x]
	return helper

def trace(f):
	def helper(x):
		call_str = "{0}({1})".format(f.__name__, x)
		print("Calling %s..." % call_str)
		result = f(x)
		print("...returning from %s = %s" % (call_str, result))
		return result
	return helper
	
	
	
@memorize
@trace
def fib(n):
	if n in (0,1):
		return 1
	else:
		return fib(n-2)+fib(n-1)

		
fib(5)
