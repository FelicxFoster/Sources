class CountList:
    def __init__(self, *args):
        self.values = [x for x in args]  #列表推导式
        self.count = {}.fromkeys(self.values,0)

    def __len__(self):
        return len(self.values)

    def __getitem__(self,key):
        self.count[ self.values[key] ] += 1
        return self.values[key]

    def __setitem__(self,key,value):
        self.values[key] = value

    def __delitem__(self,key):
        self.values = self.values[:key]+self.values[key+1:]
        self.count.pop( self.values[key] )
        
