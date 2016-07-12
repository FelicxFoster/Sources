# 说明: 从excel文件的sheet1中,按照sheet2中的关键字选中特定行，保存到新文件
# 依赖: pip3 install xlrd xlwt
# 用法：python3 chooseORF.py [filename]
import xlrd
import xlwt
import sys
import os


def choose(filename):
	
    print('Handling...')    

    # Open a workbook
    book = xlrd.open_workbook(filename)
    sh1,sh2 = book.sheets()

    # Create a new workbook and add a worksheet
    wb = xlwt.Workbook()
    ws = wb.add_sheet('Result')

    # Choose specific rows and Write into the new worksheet
    keys = sh2.col_values(0)
    targets = sh1.col_values(0)

    for r in range(len(keys)):
        if keys[r] in targets:
            index = targets.index(keys[r])
            for c in range(len(sh1.row_values(index))):
                ws.write(r,c,sh1.cell_value(r,c))
        else:
            ws.write(r,0,keys[r])
            ws.write(r,1,'Not Found')            

    # Save the new workbook as a file
    outputfile = filename.rsplit('.',1)[0] + '-out.xls'
    if os.path.exists(outputfile):
        os.remove(outputfile)
    wb.save(outputfile)
    
    print('Done~')


if __name__ == '__main__':

    # Arguments handling
    if len(sys.argv) == 1:
        filename = input("Input the filename: ")
    else:
        filename = sys.argv[1]

    if not os.path.exists(filename):
        print('Error: No such file')
        sys.exit()

    choose(filename)
    
