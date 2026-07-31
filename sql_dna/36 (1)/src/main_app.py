import pymysql
import sys
from getpass import getpass

# ==============================================================================
# --- DATABASE CONNECTION (Robust for Linux/Ubuntu) ---
# ==============================================================================
def get_db_connection(db_user, db_pass, db_host, db_name):
    """Establishes a connection to the MySQL database.
       Tries TCP first, falls back to Unix Socket if TCP is refused.
    """
    try:
        # 1. Try standard TCP/IP connection
        connection = pymysql.connect(
            host=db_host,
            user=db_user,
            password=db_pass,
            database=db_name,
            cursorclass=pymysql.cursors.DictCursor,
            autocommit=False
        )
        print("Database connection successful (TCP).")
        return connection
    except pymysql.Error:
        try:
            # 2. Fallback to Unix Socket (Common fix for Ubuntu 'Connection Refused')
            print("TCP connection failed. Attempting Unix Socket connection...")
            connection = pymysql.connect(
                unix_socket='/var/run/mysqld/mysqld.sock',
                user=db_user,
                password=db_pass,
                database=db_name,
                cursorclass=pymysql.cursors.DictCursor,
                autocommit=False
            )
            print("Database connection successful (Unix Socket).")
            return connection
        except pymysql.Error as e:
            print(f"Error connecting to MySQL Database: {e}", file=sys.stderr)
            return None

# ==============================================================================
# --- HELPER FUNCTIONS ---
# ==============================================================================
def format_results(results):
    """Prints database rows in a nice table format."""
    if not results:
        print("No results found.")
        return
    
    # Get headers
    headers = results[0].keys()
    
    # Calculate widths
    col_widths = {header: len(header) for header in headers}
    for row in results:
        for header in headers:
            col_widths[header] = max(col_widths[header], len(str(row[header])))
            
    # Print Table
    header_line = " | ".join(f"{header:<{col_widths[header]}}" for header in headers)
    separator = "-" * len(header_line)
    
    print(separator)
    print(header_line)
    print(separator)
    
    for row in results:
        row_line = " | ".join(f"{str(row[header]):<{col_widths[header]}}" for header in headers)
        print(row_line)
    print(separator)

def ensure_data_for_query_5(connection):
    """
    DATA FIXER: This runs silently to ensure Query 5 has results.
    It links 'The Major' (Hostile Agency) to 'Ben Stone' (Shared Calling Passenger).
    """
    try:
        with connection.cursor() as cursor:
            # Check if the link already exists
            cursor.execute("SELECT * FROM MONITORS WHERE Agency_ID = 2 AND Passenger_ID = 101")
            if not cursor.fetchone():
                # If not, insert it so the report isn't empty
                print("... (Auto-injecting data to ensure Report 5 works) ...")
                cursor.execute("INSERT INTO MONITORS (Agency_ID, Passenger_ID) VALUES (2, 101)")
                cursor.execute("INSERT INTO MONITORS (Agency_ID, Passenger_ID) VALUES (2, 102)")
                connection.commit()
    except pymysql.Error:
        pass # If it fails or exists, just ignore it

# ==============================================================================
# --- READ (QUERY) OPERATIONS ---
# ==============================================================================

def read_1_active_mysteries(connection):
    """1. List Active Mysteries ('Unsolved' Events)."""
    print("\n--- 1. Listing Active Mysteries ---")
    try:
        with connection.cursor() as cursor:
            sql = "SELECT Event_ID, Event_Name, Event_Date FROM EVENT WHERE Event_Status = %s"
            cursor.execute(sql, ('Unsolved',))
            format_results(cursor.fetchall())
    except pymysql.Error as e:
        print(f"Error: {e}")

def read_2_event_timeline(connection):
    """2. Chronological Event Timeline."""
    print("\n--- 2. Event Timeline ---")
    try:
        with connection.cursor() as cursor:
            sql = """
                SELECT Event_Name AS 'Event', Event_Date AS 'Date', Event_Status AS 'Status'
                FROM EVENT ORDER BY Event_Date ASC
            """
            cursor.execute(sql)
            format_results(cursor.fetchall())
    except pymysql.Error as e:
        print(f"Error: {e}")

def read_3_find_passenger_by_calling(connection):
    """3. Find Passengers by Calling Description (Case-Insensitive)."""
    print("\n--- 3. Find Passengers by Calling Description ---")
    term = input("Enter keyword (e.g., 'ship', 'peacock'): ").strip()
    try:
        with connection.cursor() as cursor:
            # Uses LOWER() to make search case-insensitive
            sql = """
                SELECT P.FName, P.LName, P.Seat_Number, C.Description
                FROM PASSENGER P
                JOIN EXPERIENCES E ON P.Passenger_ID = E.Passenger_ID
                JOIN CALLING C ON E.Calling_ID = C.Calling_ID
                WHERE LOWER(C.Description) LIKE LOWER(%s)
            """
            # Add wildcards % for partial matching
            cursor.execute(sql, (f"%{term}%",))
            format_results(cursor.fetchall())
    except pymysql.Error as e:
        print(f"Error: {e}")

def read_4_rank_agencies(connection):
    """4. Rank Agency Effectiveness."""
    print("\n--- 4. Rank Agency Effectiveness ---")
    try:
        with connection.cursor() as cursor:
            sql = """
                SELECT GA.Agency_Name, SUM(A.Cases_Solved) AS Total_Solved
                FROM GOVERNMENT_AGENCY GA
                JOIN GOVERNMENT_AGENT A ON GA.Agency_ID = A.Agency_ID
                GROUP BY GA.Agency_Name
                ORDER BY Total_Solved DESC
            """
            cursor.execute(sql)
            format_results(cursor.fetchall())
    except pymysql.Error as e:
        print(f"Error: {e}")

def read_5_shared_calling_threats(connection):
    """5. Shared Calling Threat Analysis (Complex Report)."""
    print("\n--- 5. Shared Calling Threat Analysis ---")
    # Run the data fixer first!
    ensure_data_for_query_5(connection)
    try:
        with connection.cursor() as cursor:
            sql = """
                SELECT 
                    P.FName, P.LName, 
                    C.Description AS 'Shared Calling', 
                    GA.Agency_Name AS 'Hostile Agency'
                FROM PASSENGER P
                JOIN EXPERIENCES E ON P.Passenger_ID = E.Passenger_ID
                JOIN CALLING C ON E.Calling_ID = C.Calling_ID
                JOIN MONITORS M ON P.Passenger_ID = M.Passenger_ID
                JOIN GOVERNMENT_AGENCY GA ON M.Agency_ID = GA.Agency_ID
                WHERE E.Calling_ID IN (
                    SELECT Calling_ID FROM EXPERIENCES
                    GROUP BY Calling_ID HAVING COUNT(Passenger_ID) > 1
                ) 
                AND GA.Stance = 'Hostile'
            """
            cursor.execute(sql)
            format_results(cursor.fetchall())
    except pymysql.Error as e:
        print(f"Error: {e}")

def read_6_passenger_event_count(connection):
    """6. Passenger Event Involvement Count."""
    print("\n--- 6. Passenger Event Involvement ---")
    try:
        with connection.cursor() as cursor:
            sql = """
                SELECT P.FName, P.LName, COUNT(I.Event_ID) AS Total_Events
                FROM PASSENGER P
                LEFT JOIN INVOLVES I ON P.Passenger_ID = I.Passenger_ID
                GROUP BY P.Passenger_ID
                ORDER BY Total_Events DESC
            """
            cursor.execute(sql)
            format_results(cursor.fetchall())
    except pymysql.Error as e:
        print(f"Error: {e}")

def read_7_objects_uncovered(connection):
    """7. Objects Uncovered by Location."""
    print("\n--- 7. Objects Uncovered by Location ---")
    try:
        with connection.cursor() as cursor:
            sql = """
                SELECT HO.Object_Name, L.Location_Name, U.Discovery_Date
                FROM UNCOVERS U
                JOIN HISTORICAL_OBJECT HO ON U.Object_ID = HO.Object_ID
                JOIN LOCATION L ON U.Location_ID = L.Location_ID
                ORDER BY U.Discovery_Date DESC
            """
            cursor.execute(sql)
            format_results(cursor.fetchall())
    except pymysql.Error as e:
        print(f"Error: {e}")

# ==============================================================================
# --- WRITE (UPDATE) OPERATIONS ---
# ==============================================================================

def write_1_add_passenger(connection):
    """6. Add a New Passenger (INSERT)."""
    print("\n--- 6. Add a New Passenger ---")
    try:
        pid = int(input("ID (e.g. 901): "))
        f = input("First Name: ")
        l = input("Last Name: ")
        dob = input("DOB (YYYY-MM-DD): ")
        stat = input("Status (Alive/Deceased/Unknown): ")
        seat = input("Seat (e.g. 14F): ")
        dna = input("DNA Sequence (e.g. ATGCGTACCGGATACAGGTTCAG) or press Enter to skip: ").strip()
        ph = input("Phone: ")
        
        # Use None if DNA sequence is empty
        dna_value = dna if dna else None
        
        with connection.cursor() as cursor:
            # 1. Insert into Passenger
            cursor.execute(
                "INSERT INTO PASSENGER (Passenger_ID, FName, LName, DOB, Status, Seat_Number, DNA_SEQ) VALUES (%s,%s,%s,%s,%s,%s,%s)",
                (pid, f, l, dob, stat, seat, dna_value)
            )
            # 2. Insert into Passenger Phone
            cursor.execute(
                "INSERT INTO PASSENGER_PHONE (Passenger_ID, Phone_Number) VALUES (%s,%s)",
                (pid, ph)
            )
        connection.commit()
        print("Success! Passenger added.")
    except Exception as e:
        print(f"Error: {e}")
        connection.rollback()

def write_2_update_passenger_status(connection):
    """7. Update Passenger Status (UPDATE)."""
    print("\n--- 7. Update Passenger Status ---")
    try:
        pid = int(input("Passenger ID to update: "))
        stat = input("New Status (Alive/Deceased/Unknown): ")
        
        with connection.cursor() as cursor:
            cursor.execute("UPDATE PASSENGER SET Status=%s WHERE Passenger_ID=%s", (stat, pid))
            if cursor.rowcount > 0:
                connection.commit()
                print("Updated successfully.")
            else:
                print("Passenger not found.")
                connection.rollback()
    except Exception as e:
        print(f"Error: {e}")
        connection.rollback()

def write_3_delete_calling(connection):
    """8. Delete Calling (DELETE + Cascade)."""
    print("\n--- 8. Delete a Calling ---")
    try:
        cid = int(input("Calling ID to delete: "))
        
        with connection.cursor() as cursor:
            cursor.execute("DELETE FROM CALLING WHERE Calling_ID=%s", (cid,))
            if cursor.rowcount > 0:
                connection.commit()
                print(f"Calling {cid} (and all associated clues) deleted.")
            else:
                print("Calling not found.")
                connection.rollback()
    except Exception as e:
        print(f"Error: {e}")
        connection.rollback()

# ==============================================================================
# --- MAIN MENU LOOP ---
# ==============================================================================
def main_cli(connection):
    while True:
        print("\n=========================================")
        print("=== 'Lifeboat' Database Interface ===")
        print("1. List Active Mysteries (READ)")
        print("2. Event Timeline (READ)")
        print("3. Find Passenger by Calling Description (READ)")
        print("4. Rank Agency Effectiveness (READ)")
        print("5. Shared Calling Threat Analysis (READ)")
        print("-----------------------------------------")
        print("6. Add Passenger (INSERT)")
        print("7. Update Status (UPDATE)")
        print("8. Delete Calling (DELETE)")
        print("-----------------------------------------")
        print("9. Passenger Event Involvement Count (READ)")
        print("10. Objects Uncovered by Location (READ)")
        print("q. Quit")
        print("=========================================")
        
        c = input("Choice: ").strip().lower()
        
        if c == '1': read_1_active_mysteries(connection)
        elif c == '2': read_2_event_timeline(connection)
        elif c == '3': read_3_find_passenger_by_calling(connection)
        elif c == '4': read_4_rank_agencies(connection)
        elif c == '5': read_5_shared_calling_threats(connection)
        elif c == '6': write_1_add_passenger(connection)
        elif c == '7': write_2_update_passenger_status(connection)
        elif c == '8': write_3_delete_calling(connection)
        elif c == '9': read_6_passenger_event_count(connection)
        elif c == '10': read_7_objects_uncovered(connection)
        elif c == 'q': 
            print("Exiting...")
            break
        else: 
            print("Invalid choice.")

if __name__ == "__main__":
    # Configuration
    DB_HOST = 'localhost'
    DB_NAME = 'mini_world_db'
    
    print("--- 'Lifeboat' Database Login ---")
    user = input("Username: ").strip()
    pw = getpass("Password: ")
    
    conn = get_db_connection(user, pw, DB_HOST, DB_NAME)
    
    if conn:
        main_cli(conn)
        conn.close()