from flask import Flask, request, jsonify
from flask_cors import CORS
import mysql.connector
from mysql.connector import Error

app = Flask(__name__)
CORS(app)

def get_db_connection():
    try:
        conn = mysql.connector.connect(
            host="localhost",
            user="root",
            password="root",
            database="recipeDB"
        )
        if conn.is_connected():
            return conn
    except Error as e:
        print(f"Error connecting to MySQL: {e}")
        return None

@app.route('/register', methods=['POST'])
def register():
    data = request.json
    username = data['username']
    email = data['email']
    password = data['password']

    conn = get_db_connection()
    if conn is None:
        return jsonify({'error': "Database connection failed."}), 500

    cursor = conn.cursor()

    try:
        cursor.execute("SELECT * FROM users WHERE username = %s OR email = %s", (username, email))
        if cursor.fetchone():
            return jsonify({'error': "Username or email already exists."}), 409

        cursor.execute("INSERT INTO users (username, email, password) VALUES (%s, %s, %s)", (username, email, password))
        conn.commit()
        return jsonify({'message': "Account created successfully."}), 201

    except Error as err:
        print(f"Database error: {err}")
        return jsonify({'error': f"An error occurred while querying the database: {err}"}), 500

    finally:
        cursor.close()
        conn.close()

@app.route('/login', methods=['POST'])
def login():
    data = request.json
    username = data['username']
    password = data['password']

    conn = get_db_connection()
    if conn is None:
        return jsonify({'error': "Database connection failed."}), 500

    cursor = conn.cursor()

    try:
        cursor.execute("SELECT * FROM users WHERE username = %s AND password = %s", (username, password))
        if cursor.fetchone():
            return jsonify({'message': "Login successful."}), 200
        else:
            return jsonify({'error': "Invalid username or password."}), 401

    except Error as err:
        print(f"Database error: {err}")
        return jsonify({'error': f"An error occurred while querying the database: {err}"}), 500

    finally:
        cursor.close()
        conn.close()

@app.route('/recipe', methods=['GET'])
def get_recipe():
    name = request.args.get('name', '').lower()
    print(f"Received request for recipe: {name}")

    conn = get_db_connection()
    if conn is None:
        return jsonify({'error': "Database connection failed."}), 500

    cursor = conn.cursor()

    try:
        cursor.execute("SELECT instructions FROM recipes WHERE LOWER(name) = %s", (name,))
        result = cursor.fetchone()

        if result:
            return jsonify({'instructions': result[0]})
        else:
            return jsonify({'error': "Recipe not found. Please try a different name."}), 404

    except Error as err:
        print(f"Database error: {err}")
        return jsonify({'error': f"An error occurred while querying the database: {err}"}), 500

    finally:
        cursor.close()
        conn.close()

if __name__ == '__main__':
    app.run(debug=True)
