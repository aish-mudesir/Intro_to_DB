SHOW TABLES;
import mysql.connector

def check_correct_database(connection):
    """
    Checks if the student is using the correct database: alx_book_store.
    """
    cursor = connection.cursor()
    cursor.execute("SELECT DATABASE();")
    current_db = cursor.fetchone()[0]
     USE alx_book_store;
SHOW TABLES;

    if current_db == "alx_book_store":
        print("✅ Correct database selected: alx_book_store")
        return True
    else:
        print(f"❌ Incorrect database selected: {current_db}")
        print("➡ You must use: alx_book_store")
        return False
