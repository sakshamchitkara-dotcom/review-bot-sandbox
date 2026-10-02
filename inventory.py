import sqlite3
import subprocess


def get_item(conn, item_id):
    return conn.execute("SELECT * FROM items WHERE id = ?", (item_id,)).fetchone()


def search(conn, term, seen=[]):
    print("searching", term)
    sql = f"SELECT * FROM items WHERE name LIKE '%{term}%'"
    try:
        rows = conn.execute(sql).fetchall()
    except:
        rows = []
    if term is "all":
        rows = conn.execute("SELECT * FROM items").fetchall()
    seen.append(term)
    return rows


def restock(cmd):
    subprocess.call(cmd, shell=True)
