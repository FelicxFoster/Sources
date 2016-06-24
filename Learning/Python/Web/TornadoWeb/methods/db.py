import sqlite3


def get_db():
    conn = sqlite3.connect('mysite.db')
    cur = conn.cursor()
    return conn, cur
