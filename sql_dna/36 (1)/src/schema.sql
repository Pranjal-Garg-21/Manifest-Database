-- ========================================================
-- PHASE 4: SCHEMA IMPLEMENTATION
-- Team: RNA ("Lifeboat" Database)
-- Logic based on Phase 3 (3NF) and Phase 1 (Constraints)
-- ========================================================

-- 1. Database Initialization 
DROP DATABASE IF EXISTS mini_world_db;
CREATE DATABASE mini_world_db;
USE mini_world_db;

-- ========================================================
-- 2. STRONG ENTITIES (Independent Tables)
-- ========================================================

-- LOCATION 
CREATE TABLE LOCATION (
    Location_ID INT PRIMARY KEY,
    Location_Name VARCHAR(100) NOT NULL,
    Address VARCHAR(255)
);

-- GOVERNMENT_AGENCY 
CREATE TABLE GOVERNMENT_AGENCY (
    Agency_ID INT PRIMARY KEY,
    Agency_Name VARCHAR(100) NOT NULL,
    Stance VARCHAR(20) NOT NULL,
    -- Domain Integrity: Stance must be 'Hostile', 'Neutral', or 'Allied'
    CONSTRAINT chk_agency_stance CHECK (Stance IN ('Hostile', 'Neutral', 'Allied'))
);

-- HISTORICAL_OBJECT 
CREATE TABLE HISTORICAL_OBJECT (
    Object_ID INT PRIMARY KEY,
    Object_Name VARCHAR(100) NOT NULL,
    Origin VARCHAR(100)
);

-- EVENT 
CREATE TABLE EVENT (
    Event_ID INT PRIMARY KEY,
    Event_Name VARCHAR(100) NOT NULL,
    Event_Date DATE NOT NULL,
    Event_Status VARCHAR(20) NOT NULL,
    Location_ID INT, -- M:1 Relationship "OCCURS_AT" 
    
    FOREIGN KEY (Location_ID) REFERENCES LOCATION(Location_ID) ON UPDATE CASCADE,
    -- Domain Integrity: Event Status
    CONSTRAINT chk_event_status CHECK (Event_Status IN ('Solved', 'Unsolved', 'In Progress'))
);

-- PASSENGER 

-- Phase 3 Change: Removed 'Phone Numbers' (Multi-valued)
-- Phase 3 Change: Removed 'Age' (Derived) 
-- Phase 3 Change: Added 'DNA_SEQ' (Moved from SCIENTIFIC_DATA) 
CREATE TABLE PASSENGER (
    Passenger_ID INT PRIMARY KEY,
    FName VARCHAR(50) NOT NULL,
    LName VARCHAR(50) NOT NULL,
    DOB DATE NOT NULL,
    Status VARCHAR(20) NOT NULL,
    Seat_Number VARCHAR(5) NOT NULL,
    DNA_SEQ TEXT, -- Moved here per Phase 3 rules
    
    -- Domain Integrity: Status 
    CONSTRAINT chk_pass_status CHECK (Status IN ('Alive', 'Deceased', 'Unknown')),
    -- Domain Integrity: Seat Number (1-30 followed by A-F) 
    CONSTRAINT chk_seat_fmt CHECK (Seat_Number REGEXP '^[1-9][0-9]?[A-F]$')
);

-- NON_PASSENGER 
-- Phase 3 Change: Removed 'Age' (Derived) 
CREATE TABLE NON_PASSENGER (
    Non_Passenger_ID INT PRIMARY KEY,
    FName VARCHAR(50) NOT NULL,
    LName VARCHAR(50) NOT NULL,
    DOB DATE NOT NULL,
    Status VARCHAR(20),
    Connection_To_828 VARCHAR(50)
);

-- CALLING 
-- Phase 3 Change: Removed 'Calling_Type' (Multi-valued) 
CREATE TABLE CALLING (
    Calling_ID INT PRIMARY KEY,
    Calling_Timestamp DATETIME NOT NULL,
    Description TEXT
);

-- ========================================================
-- 3. 1NF FIX TABLES (New Tables for Multi-Valued Attributes)
-- ========================================================

-- PASSENGER_PHONE 
-- Created to resolve 1NF violation in PASSENGER
CREATE TABLE PASSENGER_PHONE (
    Passenger_ID INT,
    Phone_Number VARCHAR(20),
    PRIMARY KEY (Passenger_ID, Phone_Number),
    FOREIGN KEY (Passenger_ID) REFERENCES PASSENGER(Passenger_ID) ON DELETE CASCADE
);

-- CALLING_TYPE_JUNCTION 
-- Created to resolve 1NF violation in CALLING
CREATE TABLE CALLING_TYPE_JUNCTION (
    Calling_ID INT,
    Calling_Type VARCHAR(20),
    PRIMARY KEY (Calling_ID, Calling_Type),
    FOREIGN KEY (Calling_ID) REFERENCES CALLING(Calling_ID) ON DELETE CASCADE,
    -- Domain Integrity 
    CONSTRAINT chk_call_type CHECK (Calling_Type IN ('Visual', 'Auditory', 'Physical', 'Shared'))
);

-- ========================================================
-- 4. SUBCLASS ENTITIES (Shared Primary Key)
-- ========================================================

-- TEXTUAL_OBJECT (Subclass of HISTORICAL_OBJECT) 
CREATE TABLE TEXTUAL_OBJECT (
    Object_ID INT PRIMARY KEY,
    Language VARCHAR(50),
    Author VARCHAR(100),
    Source_Type VARCHAR(50),
    Source_ID INT, -- Generic ID, logic handled by app
    FOREIGN KEY (Object_ID) REFERENCES HISTORICAL_OBJECT(Object_ID) ON DELETE CASCADE
);

-- PHYSICAL_ARTIFACT (Subclass of HISTORICAL_OBJECT) 
CREATE TABLE PHYSICAL_ARTIFACT (
    Object_ID INT PRIMARY KEY,
    Material VARCHAR(50),
    Has_Supernatural_Properties BOOLEAN,
    Source_Type VARCHAR(50),
    Source_ID INT,
    FOREIGN KEY (Object_ID) REFERENCES HISTORICAL_OBJECT(Object_ID) ON DELETE CASCADE
);

-- FAMILY_MEMBER (Subclass of NON_PASSENGER) 
-- Phase 3 Change: Removed 'Related_Passenger_ID' (Handled by relationship table) 
CREATE TABLE FAMILY_MEMBER (
    Non_Passenger_ID INT PRIMARY KEY,
    Profession VARCHAR(50),
    FOREIGN KEY (Non_Passenger_ID) REFERENCES NON_PASSENGER(Non_Passenger_ID) ON DELETE CASCADE
);

-- GOVERNMENT_AGENT (Subclass of NON_PASSENGER) 
CREATE TABLE GOVERNMENT_AGENT (
    Non_Passenger_ID INT PRIMARY KEY,
    Agency_ID INT,
    Cases_Solved INT DEFAULT 0,
    Rank_Title VARCHAR(50), -- Renamed from 'Rank' to avoid SQL keyword conflict
    FOREIGN KEY (Non_Passenger_ID) REFERENCES NON_PASSENGER(Non_Passenger_ID) ON DELETE CASCADE,
    FOREIGN KEY (Agency_ID) REFERENCES GOVERNMENT_AGENCY(Agency_ID)
);

-- ========================================================
-- 5. WEAK ENTITIES
-- ========================================================

-- CLUE (Weak Entity identified by CALLING) 
CREATE TABLE CLUE (
    Calling_ID INT,
    Clue_Number INT,
    Clue_Description TEXT,
    PRIMARY KEY (Calling_ID, Clue_Number),
    FOREIGN KEY (Calling_ID) REFERENCES CALLING(Calling_ID) ON DELETE CASCADE
);

-- SCIENTIFIC_DATA (Weak Entity identified by PASSENGER) 
-- Phase 3 Change: DNA_SEQ moved to PASSENGER. Sample_ID is Partial Key.
CREATE TABLE SCIENTIFIC_DATA (
    Passenger_ID INT,
    Sample_ID VARCHAR(50),
    Test_Type VARCHAR(50),
    Results_Summary TEXT,
    PRIMARY KEY (Passenger_ID, Sample_ID),
    FOREIGN KEY (Passenger_ID) REFERENCES PASSENGER(Passenger_ID) ON DELETE CASCADE
);

-- ========================================================
-- 6. RELATIONSHIP TABLES (Junction Tables)
-- ========================================================

-- EXPERIENCES (Passenger M:N Calling) 
CREATE TABLE EXPERIENCES (
    Passenger_ID INT,
    Calling_ID INT,
    PRIMARY KEY (Passenger_ID, Calling_ID),
    FOREIGN KEY (Passenger_ID) REFERENCES PASSENGER(Passenger_ID) ON DELETE CASCADE,
    FOREIGN KEY (Calling_ID) REFERENCES CALLING(Calling_ID) ON DELETE CASCADE
);

-- MONITORS (Agency M:N Passenger) 
CREATE TABLE MONITORS (
    Agency_ID INT,
    Passenger_ID INT,
    PRIMARY KEY (Agency_ID, Passenger_ID),
    FOREIGN KEY (Agency_ID) REFERENCES GOVERNMENT_AGENCY(Agency_ID) ON DELETE CASCADE,
    FOREIGN KEY (Passenger_ID) REFERENCES PASSENGER(Passenger_ID) ON DELETE CASCADE
);

-- IS_RELATED_TO (Passenger M:N Non_Passenger)
-- Replaces the 'Related_Passenger_ID' attribute from Phase 1/2
CREATE TABLE IS_RELATED_TO (
    Passenger_ID INT,
    Non_Passenger_ID INT,
    Relationship_Type VARCHAR(50), -- Added to track relationship nature (e.g., 'Husband')
    PRIMARY KEY (Passenger_ID, Non_Passenger_ID),
    FOREIGN KEY (Passenger_ID) REFERENCES PASSENGER(Passenger_ID) ON DELETE CASCADE,
    FOREIGN KEY (Non_Passenger_ID) REFERENCES NON_PASSENGER(Non_Passenger_ID) ON DELETE CASCADE
);

-- INVOLVES (Event M:N Passenger) 
CREATE TABLE INVOLVES (
    Event_ID INT,
    Passenger_ID INT,
    PRIMARY KEY (Event_ID, Passenger_ID),
    FOREIGN KEY (Event_ID) REFERENCES EVENT(Event_ID) ON DELETE CASCADE,
    FOREIGN KEY (Passenger_ID) REFERENCES PASSENGER(Passenger_ID) ON DELETE CASCADE
);

-- INVESTIGATES (Ternary: Agency, Passenger, Event) 
CREATE TABLE INVESTIGATES (
    Agency_ID INT,
    Passenger_ID INT,
    Event_ID INT,
    PRIMARY KEY (Agency_ID, Passenger_ID, Event_ID),
    FOREIGN KEY (Agency_ID) REFERENCES GOVERNMENT_AGENCY(Agency_ID) ON DELETE CASCADE,
    FOREIGN KEY (Passenger_ID) REFERENCES PASSENGER(Passenger_ID) ON DELETE CASCADE,
    FOREIGN KEY (Event_ID) REFERENCES EVENT(Event_ID) ON DELETE CASCADE
);

-- LINKS (Quaternary: Passenger, Clue, Event, Object) 
CREATE TABLE LINKS (
    Passenger_ID INT,
    Clue_Calling_ID INT,
    Clue_Number INT,
    Event_ID INT,
    Object_ID INT,
    PRIMARY KEY (Passenger_ID, Clue_Calling_ID, Clue_Number, Event_ID, Object_ID),
    
    FOREIGN KEY (Passenger_ID) REFERENCES PASSENGER(Passenger_ID) ON DELETE CASCADE,
    FOREIGN KEY (Clue_Calling_ID, Clue_Number) REFERENCES CLUE(Calling_ID, Clue_Number) ON DELETE CASCADE,
    FOREIGN KEY (Event_ID) REFERENCES EVENT(Event_ID) ON DELETE CASCADE,
    FOREIGN KEY (Object_ID) REFERENCES HISTORICAL_OBJECT(Object_ID) ON DELETE CASCADE
);

-- UNCOVERS (Quinary) 
-- Phase 3 Change: Removed redundant Calling_ID FK. Links to Clue via composite key only.
CREATE TABLE UNCOVERS (
    Passenger_ID INT,
    Clue_Calling_ID INT,
    Clue_Number INT,
    Object_ID INT,
    Location_ID INT,
    Discovery_Date DATE, -- Added for tracking when the uncover happened
    
    PRIMARY KEY (Passenger_ID, Clue_Calling_ID, Clue_Number, Object_ID, Location_ID),
    
    FOREIGN KEY (Passenger_ID) REFERENCES PASSENGER(Passenger_ID) ON DELETE CASCADE,
    FOREIGN KEY (Clue_Calling_ID, Clue_Number) REFERENCES CLUE(Calling_ID, Clue_Number) ON DELETE CASCADE,
    FOREIGN KEY (Object_ID) REFERENCES HISTORICAL_OBJECT(Object_ID) ON DELETE CASCADE,
    FOREIGN KEY (Location_ID) REFERENCES LOCATION(Location_ID) ON DELETE CASCADE
);

-- ========================================================
-- 7. EXAMPLE COMPLEX QUERIES
-- ========================================================

-- Query A: Rank Agency Effectiveness (JOIN, GROUP BY, Aggregate Function)
-- This query calculates the total number of cases solved by each government agency.
SELECT GA.Agency_Name, SUM(A.Cases_Solved) AS Total_Solved
FROM GOVERNMENT_AGENCY GA
JOIN GOVERNMENT_AGENT A ON GA.Agency_ID = A.Agency_ID
GROUP BY GA.Agency_Name
ORDER BY Total_Solved DESC;

-- Query B: Shared Calling Threat Analysis (Multiple JOINs, Subquery, GROUP BY, HAVING)
-- This query finds passengers who experienced a 'Shared Calling' and are monitored by a 'Hostile' agency.
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
AND GA.Stance = 'Hostile';

