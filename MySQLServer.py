import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        # Establish a connection to the MySQL server
        connection = mysql.connector.connect(
            host="localhost",
            user=input("Enter username: "),
            password=input("Enter password: ")
        )

        if connection.is_connected():
            cursor = connection.cursor()

            # SQL command to create the database
            create_db_query = "CREATE DATABASE IF NOT EXISTS alx_book_store"
            cursor.execute(create_db_query)

            print("Database 'alx_book_store' created successfully!")

    except Error as e:
        print(f"Error: {e}")
    
    finally:
        # Close the cursor and connection
        if 'cursor' in locals():
            cursor.close()
        if connection.is_connected():
            connection.close()

if __name__ == "__main__":
    create_database()
