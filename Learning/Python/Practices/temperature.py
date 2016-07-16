class Celsius:
    def __init__(self,value=26.0):
        self.value = value

    def __get__(self,instance,owner):
        return self.value

    def __set__(self,instance,value):
        self.value = value



class Fahrenheit:
    def __get__(self,instance,value):
        return instance.cel * 1.8 + 32

    def __set__(self,instacne,value):
        instacne.cel = (value - 32 ) / 1.8


class Temperature:
    cel = Celsius()
    fah = Fahrenheit()
