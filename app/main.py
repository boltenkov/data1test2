import psycopg2
import os

def get_db_connection():
    try:
        conn = psycopg2.connect(
            host=os.environ.get('DB_HOST'),
            database=os.environ.get('DB_NAME'),
            user=os.environ.get('DB_USER'),
            password=os.environ.get('DB_PASSWORD')
        )
        return conn
    except psycopg2.Error as e:
        print(f"Ошибка при подключении к базе данных: {e}")
        return None

def execute_query(conn):
    try:
        cur = conn.cursor()
        cur.execute("""
            SELECT MAX(age), MIN(age)
            FROM test_table
            WHERE LENGTH(name) < 6;
        """)
        result = cur.fetchone()
        print(f"Максимальный возраст для имен короче 6 символов: {result[0]}")
        print(f"Минимальный возраст для имен короче 6 символов: {result[1]}")
        cur.close()
    except psycopg2.Error as e:
        print(f"Ошибка при выполнении запроса: {e}")

if __name__ == '__main__':
    connection = get_db_connection()
    if connection:
        execute_query(connection)
        connection.close()

