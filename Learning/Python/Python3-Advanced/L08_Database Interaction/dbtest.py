import sqlite3

def Main():
    try:
        con = sqlite3.connect('test.db')

        cur = con.cursor()

        cur.execute('CREATE TABLE Pets(Id INT, Name TEXT, Price INT)')
        cur.execute('INSERT INTO Pets VALUES(1, "CAT", 400)')
        cur.execute('INSERT INTO Pets VALUES(2, "DOG", 600)')
        cur.execute('INSERT INTO Pets VALUES(3, "RAB", 250)')

        cur.commit()

        cur.execute("SELECT * FROM Pets")
        data = cur.fetchall()

        for row in data:
            print(row)
    except sqlite3.Error:
        if con:
            print("Error! Rolling back.")
            con.rollback()
    finally:
        if con:
            con.close()

if __name__ == '__main__':
    Main()

    
    
