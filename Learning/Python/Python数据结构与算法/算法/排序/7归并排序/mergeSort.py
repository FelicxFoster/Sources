#归并排序法
#something wrong!?

def mergeSort(k):
    list1 = k[:len(k)//2]
    list2 = k[len(k)//2:]

    if( len(k) > 1 ):
        mergeSort(list1)
        mergeSort(list2)
        merging(list1, list2)
    
def merging(list1, list2):
    temp = []
    i = j = 0
    while( i<len(list1) and j<len(list2) ):
        if list1[i] < list2[j]:
            temp.append(list1[i])
            i += 1
        else:
            temp.append(list2[j])
            j += 1
    while( i<len(list1) ):
        temp.append(list1[i])
        i += 1
    while( j<len(list2) ):
        temp.append(list2[j])
        j += 1
        
    return temp    ##如何返回？？
        

k = [55, 2, 8, 1, 34, 21, 5, 3, 89, 13]
r = mergeSort(k)

print("从小到大排列为:")
for i in r:
    print(i, end=' ')
