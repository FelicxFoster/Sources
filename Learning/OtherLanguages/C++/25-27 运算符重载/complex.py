class Complex:
    def __init__(self,r=0,i=0):
        self.real = r
        self.imag = i

    def __add__(self, other):
        return (self.real + other.real,\
                self.imag + other.imag)
