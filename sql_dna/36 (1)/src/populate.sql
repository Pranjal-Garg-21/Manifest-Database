-- ========================================================
-- -- TABLE: LOCATION
-- -- Data Source: Manifest Canon & Filming Locations
-- ========================================================
USE mini_world_db;
INSERT INTO LOCATION (Location_ID, Location_Name, Address) VALUES
-- 1. The Stone Family Homes & Safehouses
(1, 'Stone Residence', '81-14 218th Street, Jamaica, Queens, NY'), -- The main home where Ben, Grace, Olive, and Cal live.
(2, 'Michaela''s Apartment', '415 East 35th Street, New York, NY'), -- The apartment Michaela shared with Zeke after they married.
(3, 'Tarik''s Cabin', 'Rural Safehouse, Upstate New York'), -- Grace's stepbrother's cabin; used as a hideout from the X-ers.
(4, 'Beverly''s House', '75 Beverly Road, Glen Head, NY'), -- Evie's mother's house; Michaela and Zeke moved here to care for her.

-- 2. Government & Scientific Facilities
(5, 'Eureka (NSA Facility)', 'Secret Government Facility, Rockland County, NY'), -- The top-secret NSA lab investigating the Flight 828 tailfin.
(6, 'Koch Hospital', 'Medical Research Wing, New York, NY'), -- The hospital where Saanvi works and conducts her genetic research.
(7, 'NSA Detention Center', 'Fort Meade, Maryland'), -- The facility where passengers were detained after the plane returned.
(8, 'Red Hook Boiler Room', 'Red Hook, Brooklyn, NY'), -- Vance's initial secret hideout in Season 1 after faking his death.
(9, 'Vance''s Bunker (Travel Agency)', '9 Ariel Court, New York, NY'), -- Vance's Season 3 high-tech base disguised behind a Travel Agency.
(10, 'The Major''s Mansion', 'Private Estate, Connecticut'), -- The private home of General McCreary (The Major); site of her death.

-- 3. Key Event Locations
(11, 'Montego Air Terminal', 'Stewart International Airport, Newburgh, NY'), -- The airfield where Flight 828 landed on November 4, 2018.
(12, 'Nightclub Fire Location', 'The Building, Downtown Brooklyn, NY'), -- The site of the "Saved by the Bell" calling where the passengers saved civilians.
(13, 'Lake Discovery Site', 'Saugerties, New York'), -- The lake where the tailfin of Flight 828 resurfaced.
(14, 'Zeke''s Cave', 'Mount Storm King, Olympic National Park, WA'), -- The cave where Zeke Landon trapped himself to avoid the death date.
(15, 'Meyer Family Compound', 'San Jose, Costa Rica'), -- The religious compound where Angelina's parents held her captive.
(16, 'Jamaica Airport', 'Montego Bay, Jamaica'), -- The origin airport where the passengers boarded Flight 828.

-- 4. Research & Investigation Sites
(17, 'Astoria University', 'Queens, NY'), -- The university where Ben Stone works as a professor and TJ/Olive research.
(18, 'Masonic Temple', 'Order of the Omega HQ, New York, NY'), -- The secret headquarters of the Order of the Omega; contained the Sapphire.
(19, 'NYPD 129th Precinct', 'Cleveland Street Station, Brooklyn, NY'), -- The police precinct where Michaela and Jared work.
(20, 'Al-Zuras Ship', 'The Silver Dragon, 16th Century Ocean'), -- A metaphysical location seen in the Shared Calling (Silver Dragon).

-- 5. Minor & Historical Locations
(21, 'King Kone', '1315 College Avenue, Elmira, NY'), -- The ice cream shop Cal visited based on a Calling (filmed at a real location).
(22, 'Astoria World Manor', '25-22 Astoria Blvd, Queens, NY'), -- The venue for Jared and Lourdes' wedding.
(23, 'Glow Sequoia Forest', 'Sequoia National Forest, California'), -- The location where the plane exploded and the "Glow" originated.
(24, 'St. Mary''s Church', '129 Lafayette Avenue, Suffern, NY'), -- The church often visited by the passengers for answers.
(25, 'Schist Rock Formation', 'Warm Springs, Georgia'), -- A geological site containing sapphire traces linked to the ark.

(26, 'Anna Ross''s Residence', 'New Paltz, NY'); -- The home of a fellow passenger where Angelina hid baby Eden immediately after kidnapping her.



-- ========================================================
-- TABLE: GOVERNMENT_AGENCY
-- Data Source: Manifest Seasons 1-4 Canon
-- Constraints: Stance must be 'Hostile', 'Neutral', or 'Allied'
-- ========================================================

INSERT INTO GOVERNMENT_AGENCY (Agency_ID, Agency_Name, Stance) VALUES
-- 1. The Primary Investigator
(1, 'National Security Agency (NSA)', 'Neutral'), -- Initially led the investigation (Vance); institutionally cautious but not inherently evil.

-- 2. The Antagonists
(2, 'The Major''s Faction (DOD Black Ops)', 'Hostile'), -- General McCreary's covert unit seeking to weaponize the Callings.
(3, '828 Registry', 'Hostile'), -- The Season 4 agency created solely to track, detain, and persecute passengers.
(4, 'Singularity Project', 'Hostile'), -- The specific subdivision under The Major conducting human experiments on passengers.

-- 3. The Allies & Scientific Divisions
(5, 'Eureka Project Team', 'Allied'), -- The secret division (led by Vance/Saanvi) investigating the Tailfin and Noah's Ark.
(6, 'Office of the DNI', 'Allied'), -- Director of National Intelligence; Vance's reinstated position where he protects the Stones.
(7, 'NYPD 129th Precinct', 'Allied'), -- Michaela and Jared's precinct; frequently used to access police databases for the Lifeboat.

-- 4. General Law Enforcement / Oversight
(8, 'Federal Bureau of Investigation (FBI)', 'Neutral'), -- Involved in the initial airport return and background checks.
(9, 'Department of Homeland Security (DHS)', 'Neutral'), -- Frequently cited in background clearance and border monitoring of passengers.
(10, 'Philadelphia Police Department', 'Neutral'), -- Involved in the arc regarding the meth dealers (Jace, Pete, Kory).
(11, 'Astoria Police Department', 'Hostile'); -- Local police who frequently harassed the Stone family during the "X-er" movement.

-- ========================================================
-- TABLE: HISTORICAL_OBJECT
-- Data Source: Manifest Canon (Al-Zuras, Egypt, Mythology)
-- Note: This is the SUPERCLASS. Subclasses (Textual/Physical) link to these IDs.
-- ========================================================

INSERT INTO HISTORICAL_OBJECT (Object_ID, Object_Name, Origin) VALUES
-- 1. The Al-Zuras Connection (16th Century)
(1, 'Al-Zuras''s Journal', '16th Century Egypt'), -- The primary book written by Yusuv Al-Zuras describing the "Silver Dragon" (lightning).
(2, 'The Silver Dragon Compass', '16th Century Spain'), -- Navigation tool used by Al-Zuras; engraving matched the star constellation of the Death Date.
(3, 'Drawing of the Lovers', '16th Century Journal Page'), -- A specific sketch from the journal depicting Ben and Michaela (or the original passengers).

-- 2. The Omega Sapphire & The Divine (Ancient)
(4, 'The Omega Sapphire', 'Ancient Quarry / Masonic Temple'), -- The ultimate power source capable of channeling Callings; found in the Masonic Temple.
(5, 'Noah''s Ark Fragment', 'Mount Ararat, Turkey'), -- Petrified driftwood found in the Vatican archives; Saanvi discovered it shared DNA with 828 passengers.
(6, 'Stone Tablet of the Law', 'Mount Sinai'), -- implied to be made of Sapphire (Moses connection), shards of which created the Omega Sapphire.

-- 3. Egyptian Mythology (Maat/Anubis)
(7, 'Papyrus of Maat', 'Ancient Egypt'), -- Scroll depicting the weighing of the heart (Judgment Day/Death Date mythology).
(8, 'Statue of Anubis', 'Ancient Egypt'), -- Relic connected to the Death Date trials and the scales of justice.
(9, 'Ancient Tarot Deck', 'Unknown / Egyptian Roots'), -- The deck used by Al-Zuras and later Olive to interpret the "World" card and the volcano calling.

-- 4. Flight 828 Specific Artifacts (Modern "Historical" Objects)
(10, 'The Tailfin', 'Ocean Floor, Cuba'), -- The physical tailfin recovered from the ocean which aged normally while the plane did not.
(11, 'Ben''s Glasses', 'Flight 828 Cabin'), -- An object that famously survived the explosion (symbolic).
(12, 'Seat 14A Headrest', 'Flight 828 Cabin'), -- Contains Cal's DNA/residue, used for testing.

-- 5. Minor Artifacts
(13, 'Saint Joseph Medallion', 'Unknown'), -- A family heirloom involved in a specific Calling (The "Save Him" calling).
(14, 'Bussola (Mariner''s Compass)', '16th Century Maritime'), -- Another navigational tool sketched in the margins of the Al-Zuras text.
(15, 'Vatican Archive File 828', 'Vatican City'); -- The church's secret record of "Resurrections" throughout history.

-- ========================================================
-- TABLE: EVENT
-- Data Source: Manifest Timeline (2013 - 2024)
-- Constraints: Status must be 'Solved', 'Unsolved', or 'In Progress'
-- ========================================================

INSERT INTO EVENT (Event_ID, Event_Name, Event_Date, Event_Status, Location_ID) VALUES
-- 1. The Origin (2013-2018)
(1, 'Flight 828 Departure', '2013-04-07', 'Solved', 16), -- Departed Montego Bay; entered the "Glow".
(2, 'Flight 828 Return', '2018-11-04', 'Unsolved', 11), -- Landed at Stewart Intl; world had aged 5.5 years.
(3, 'Kelly Taylor Murder', '2018-11-12', 'Solved', 19), -- First passenger death; investigation led by NYPD 129th.
(4, 'Vance Faked Death', '2018-12-20', 'Solved', 8), -- Explosion at Red Hook raid; Vance went into hiding.

-- 2. The X-er War & The Major (2019-2020)
(5, 'Nightclub Fire', '2020-01-20', 'Solved', 12), -- The "Saved by the Bell" calling; passengers saved civilians from a fire.
(6, 'Zeke Landon Freeze Date', '2017-12-10', 'Solved', 14), -- Zeke entered the cave; origin of his time jump.
(7, 'Zeke Beats Death Date', '2020-06-04', 'Solved', 13), -- Zeke survived by saving Cal at the frozen lake.
(8, 'The Major''s Assassination', '2020-08-30', 'Solved', 10), -- Saanvi accidentally killed the Major at her mansion.
(9, 'Discovery of the Tailfin', '2020-11-04', 'Solved', 13), -- Tailfin resurfaced in the lake; taken to Eureka.

-- 3. The Meth Heads & The Stone Tragedy (2021)
(10, 'Meth Head Resurrection', '2021-03-15', 'Solved', 13), -- Jace, Pete, and Kory emerged from the lake.
(11, 'Fire at Tarik''s Cabin', '2021-04-05', 'Solved', 3), -- Jace attacked the safehouse; Tarik was killed.
(12, 'Grace Stone Murder', '2021-10-30', 'Solved', 1), -- Angelina stabbed Grace and kidnapped Eden.
(13, 'Cal Stone Disappearance', '2021-10-30', 'Solved', 5), -- Cal touched the tailfin at Eureka and vanished (aged up).

-- 4. The Final Chapter (2022-2024)
(14, 'Eden Stone Rescue', '2023-04-10', 'Solved', 15), -- Ben rescued Eden from the Meyer Compound in Costa Rica.
(15, 'Omega Sapphire Discovery', '2023-11-20', 'Solved', 18), -- Olive/TJ found the Sapphire at the Masonic Temple.
(16, 'Detention Center Lockdown', '2023-12-01', 'In Progress', 7), -- 828 Registry detained all passengers.
(17, 'The Final Judgment', '2024-06-02', 'In Progress', 23), -- The Death Date; apocalyptic volcanic activity begins.
(18, 'Investigation of Al-Zuras', '2019-05-15', 'Solved', 20), -- Ben connected the 16th-century journal to the callings.
(19, 'Saanvi''s DNA Breakthrough', '2019-02-10', 'Solved', 6), -- Discovery of the genetic marker (Ischemic stroke pattern).
(20, 'Angelina''s False Prophecy', '2024-01-01', 'Unsolved', 24), -- Angelina creates a cult believing she is an Archangel.

-- 5. SPECIFIC PASSENGER ARCS (Daly, Bethany, Radd, Cal)
(21, 'Daly''s Unauthorized Departure', '2019-01-28', 'Unsolved', 11), -- Captain Daly kidnapped Fiona Clarke and flew a stolen plane into dark lightning.
(22, 'Discovery of the Stowaway', '2018-11-07', 'Solved', 8), -- Bethany Collins smuggled Thomas; group hid him in the Boiler Room.
(23, 'Radd''s Son Exoneration', '2018-11-15', 'Solved', 19), -- Radd Campbell''s son was wrongfully jailed; Ben/Mick proved his innocence.
(24, 'The Bank Heist', '2019-06-20', 'Solved', 19), -- The "Wolf" Calling; Michaela stopped a robbery and saved lives.
(25, 'Cal''s Cancer Remission', '2018-11-10', 'Solved', 6), -- Upon return, Saanvi discovered Cal''s cancer treatment had worked.
(26, 'Search for the Grail', '2019-03-01', 'Unsolved', 1), -- The Major begins hunting Cal, believing he is the "Holy Grail".
(27, 'Explosion of the Plane', '2018-11-08', 'Solved', 11), -- The returned Flight 828 exploded on the tarmac.
(28, 'Saanvi''s Self-Experimentation', '2020-05-01', 'Solved', 6), -- Saanvi tested the serum on herself, eliminating the DNA marker.

-- 6. STONE FAMILY & PERSONAL EVENTS (New Additions)
(29, 'Steve Stone''s Funeral', '2015-08-15', 'Solved', 1), -- Michaela''s mother died while 828 was missing; a source of Michaela''s grief.
(30, 'Jared''s Proposal', '2013-04-06', 'Solved', 1), -- Jared proposed to Michaela the night before the flight (she delayed answering).
(31, 'Ben Hired at Astoria', '2019-01-10', 'Solved', 17), -- Ben gets a job as a Professor to use university resources for 828 research.
(32, 'Cal''s Cabin Disappearance', '2019-01-21', 'Solved', 3), -- "Vanishing Point": Cal ran away to the cabin following a sketch calling.
(33, 'Eden Stone Birth', '2020-04-06', 'Solved', 1), -- Eden is born to Ben and Grace; the first "828 baby".
(34, 'Grace''s Gargoyle Calling', '2020-02-10', 'Solved', 1), -- "Open Her Eyes": Grace receives her first Calling (rare for a non-passenger).
(35, 'The Major''s Testing', '2019-01-05', 'Solved', 9), -- The Major conducted secret psychological tests on Saanvi and other passengers.
(36, 'Angelina Kidnaps Eden', '2021-05-10', 'Solved', 1), -- Angelina kills Grace and takes Eden, starting a 2-year manhunt.
(37, 'Olive Joins Believers', '2020-03-01', 'Solved', 1), -- Olive joins Adrian's "Church of the Believers" seeking answers.
(38, 'Jared and Michaela Breakup', '2018-12-01', 'Solved', 2); -- Michaela finally returns the ring, realizing Jared is married to Lourdes.



-- ========================================================
-- TABLE: PASSENGER
-- Data Source: Manifest Flight 828 "Murder Board"
-- Constraints: Seat regex ^[1-9][0-9]?[A-F]$, Status IN ('Alive', 'Deceased', 'Unknown')
-- DNA Logic: Actual ACTG sequences. 'GATACA' sequence implies the anomaly.
-- ========================================================

INSERT INTO PASSENGER (Passenger_ID, FName, LName, DOB, Status, Seat_Number, DNA_SEQ) VALUES
-- 1. THE STONE FAMILY (The "Holy Grail" Bloodline)
(101, 'Ben', 'Stone', '1978-04-01', 'Alive', '14B', 'ATGCGTACCGGATACAGGTTCAG'),
(102, 'Michaela', 'Stone', '1985-12-10', 'Alive', '14C', 'ATGCGTACCGGATACAGGTTCAA'),
(103, 'Cal', 'Stone', '2008-06-15', 'Alive', '14A', 'ATGCGTACCGGATACAGGTTCCC'), -- Distinct "Omega" variation

-- 2. CREW & COCKPIT (The Vanished)
(104, 'Bill', 'Daly', '1965-03-15', 'Unknown', '1A', 'CGTAGCTAGCTAGCTAGCTAGCT'), -- Disappeared into the Glow; status unconfirmed for years
(105, 'Amuta', 'St. Patrick', '1978-11-22', 'Alive', '1B', 'CGTAGCTAGCTAGCTAGCGCGCA'),
(106, 'Bethany', 'Collins', '1968-02-28', 'Alive', '1C', 'TTAACCGGTTGATACACCGGTTA'),

-- 3. THE KEY PLAYERS (Science, Leadership, Resistance)
(107, 'Saanvi', 'Bahl', '1990-03-25', 'Alive', '8A', 'TTAACCGGTTGATACACCGGAAA'),
(108, 'Fiona', 'Clarke', '1965-08-12', 'Unknown', '2A', 'GGCCATATAGCTAGCTAGCTAGC'), -- Vanished with Daly; body never recovered
(109, 'TJ', 'Morrison', '1998-02-20', 'Alive', '18C', 'AAGCTAGCTAGATACAGCTAGCT'),
(110, 'Adrian', 'Shannon', '1985-05-05', 'Alive', '19F', 'CCGGTTAACCGATACATAACCGG'),
(111, 'Eagan', 'Tehrani', '1988-11-15', 'Alive', '23C', 'GGTACCGAATAGATACAAGCCGA'),
(112, 'Angelina', 'Meyer', '1995-06-10', 'Deceased', '28D', 'AATTCCGGAATGATACAAGCCGG'),

-- 4. THE "CALLED" (Recurring Characters)
(113, 'Autumn', 'Cox', '1982-09-22', 'Unknown', '15F', 'TGCATGCATGCATGCATGCATGC'), -- Frequently goes off-grid; current whereabouts unknown
(114, 'Paul', 'Santino', '1975-01-30', 'Deceased', '27D', 'GCTAGCTAGCTAGCTAGCTAGCT'),
(115, 'Randall', 'Burr', '1980-07-14', 'Deceased', '29A', 'TACGATCGATCGATCGATCGATC'),
(116, 'Astrid', 'Hagedorn', '1992-05-15', 'Alive', '22A', 'CGATCGATCGATCGATCGATCGA'),
(117, 'Radd', 'Campbell', '1985-08-20', 'Alive', '18B', 'AATTCGGAATTCGGAATTCGGAA'),
(118, 'Marko', 'Valeriev', '1983-12-12', 'Alive', '30F', 'GCTAGCTAGCTAGCTAGCTAGCT'),
(119, 'Anna', 'Ross', '1978-06-05', 'Deceased', '24C', 'TACGATCGATCGATCGATCGATC'),
(120, 'Violet', 'Wheeler', '2000-10-10', 'Deceased', '25B', 'CGATCGATCGATCGATCGATCGA'),
(121, 'Henry', 'Kim', '1950-09-09', 'Deceased', '4D', 'AATTCGGAATTCGGAATTCGGAA'),
(122, 'Kyle', 'Boyd', '1990-01-01', 'Alive', '5A', 'GCTAGCTAGCTAGCTAGCTAGCT'),

-- 5. THE TRAGIC & THE DEAD
(123, 'Kelly', 'Taylor', '1980-01-01', 'Deceased', '14E', 'TACGATCGATCGATCGATCGATC'),
(124, 'Harvey', 'Stein', '1970-04-10', 'Deceased', '12C', 'CGATCGATCGATCGATCGATCGA'),
(125, 'Finn', 'Nowak', '1960-11-30', 'Alive', '20D', 'AATTCGGAATTCGGAATTCGGAA'),
(126, 'Patrick', 'Hayes', '1965-01-01', 'Deceased', '5C', 'GCTAGCTAGCTAGCTAGCTAGCT'),
(127, 'Sam', 'Wile', '1981-11-11', 'Deceased', '22B', 'TACGATCGATCGATCGATCGATC'),

-- 6. FAMILIES ON BOARD
(128, 'Glen', 'Clarke', '1950-02-20', 'Deceased', '21C', 'CGATCGATCGATCGATCGATCGA'),
(129, 'Helen', 'Clarke', '1952-07-08', 'Deceased', '21D', 'AATTCGGAATTCGGAATTCGGAA'),
(130, 'Rachel', 'Hall', '1984-04-04', 'Alive', '11A', 'GCTAGCTAGCTAGCTAGCTAGCT'),
(131, 'Hannah', 'Hall', '1986-04-04', 'Alive', '11B', 'TACGATCGATCGATCGATCGATC'),
(132, 'Ilya', 'Visovic', '1980-02-20', 'Alive', '29F', 'CGATCGATCGATCGATCGATCGA'),
(133, 'Yuri', 'Visovic', '1982-02-21', 'Alive', '29E', 'AATTCGGAATTCGGAATTCGGAA'),
(134, 'Jacob', 'Fuller', '1970-03-30', 'Alive', '10B', 'GCTAGCTAGCTAGCTAGCTAGCT'),
(135, 'Karen', 'Fuller', '1972-04-01', 'Alive', '10C', 'TACGATCGATCGATCGATCGATC'),

-- 7. BEN STONE'S "BOARD" (Background Passengers)
(136, 'Joe', 'Butler', '1972-03-15', 'Alive', '16A', 'CGATCGATCGATCGATCGATCGA'),
(137, 'Winston', 'Menza', '1989-09-09', 'Alive', '17D', 'AATTCGGAATTCGGAATTCGGAA'),
(138, 'Charlie', 'Cooper', '1990-01-01', 'Unknown', '9A', 'GCTAGCTAGCTAGCTAGCTAGCT'), -- Lost contact
(139, 'Hector', 'Davila', '1975-05-20', 'Alive', '9B', 'TACGATCGATCGATCGATCGATC'),
(140, 'George', 'St. Clair', '1966-08-08', 'Alive', '9C', 'CGATCGATCGATCGATCGATCGA'),
(141, 'Alice', 'Cicero', '1995-12-12', 'Alive', '10A', 'AATTCGGAATTCGGAATTCGGAA'),
(142, 'Liza', 'Jeffries', '1999-09-09', 'Alive', '13A', 'GCTAGCTAGCTAGCTAGCTAGCT'),
(143, 'Mindy', 'Korb', '1988-08-08', 'Alive', '13B', 'TACGATCGATCGATCGATCGATC'),
(144, 'Nikhil', 'Kapoor', '1979-07-07', 'Unknown', '13C', 'CGATCGATCGATCGATCGATCGA'), -- Lost contact
(145, 'Ophelia', 'Liu', '1985-01-01', 'Alive', '15A', 'AATTCGGAATTCGGAATTCGGAA'),
(146, 'Quinn', 'Barret', '1992-02-02', 'Alive', '15B', 'GCTAGCTAGCTAGCTAGCTAGCT'),
(147, 'Ronnie', 'Wilcox', '1968-06-06', 'Alive', '15C', 'TACGATCGATCGATCGATCGATC'),
(148, 'Sutton', 'Ross', '1977-11-11', 'Alive', '16D', 'CGATCGATCGATCGATCGATCGA'),
(149, 'Tess', 'McCann', '1983-03-03', 'Alive', '16E', 'AATTCGGAATTCGGAATTCGGAA'),
(150, 'Uriel', 'Cohen', '1991-09-19', 'Alive', '16F', 'GCTAGCTAGCTAGCTAGCTAGCT'),

-- 8. REALISTIC EXTRAS (Common Names)
(151, 'James', 'Miller', '1985-05-20', 'Unknown', '4A', 'TACGATCGATCGATCGATCGATC'), -- Status unclear
(152, 'Sarah', 'Johnson', '1990-11-11', 'Alive', '4B', 'CGATCGATCGATCGATCGATCGA'),
(153, 'Robert', 'Williams', '1975-08-25', 'Alive', '4C', 'AATTCGGAATTCGGAATTCGGAA'),
(154, 'Maria', 'Garcia', '1960-03-03', 'Alive', '4E', 'GCTAGCTAGCTAGCTAGCTAGCT'),
(155, 'David', 'Brown', '1995-04-18', 'Unknown', '4F', 'TACGATCGATCGATCGATCGATC'),
(156, 'Jennifer', 'Jones', '1982-07-02', 'Alive', '5B', 'CGATCGATCGATCGATCGATCGA'),
(157, 'Michael', 'Davis', '1998-01-09', 'Alive', '5D', 'AATTCGGAATTCGGAATTCGGAA'),
(158, 'Elizabeth', 'Rodriguez', '1978-10-15', 'Alive', '5E', 'GCTAGCTAGCTAGCTAGCTAGCT'),
(159, 'William', 'Martinez', '1984-02-20', 'Alive', '5F', 'TACGATCGATCGATCGATCGATC'),
(160, 'Linda', 'Hernandez', '1970-05-05', 'Alive', '6A', 'CGATCGATCGATCGATCGATCGA'),
(161, 'Richard', 'Lopez', '1993-06-24', 'Alive', '6B', 'AATTCGGAATTCGGAATTCGGAA'),
(162, 'Barbara', 'Gonzalez', '1979-09-22', 'Alive', '6C', 'GCTAGCTAGCTAGCTAGCTAGCT'),
(163, 'Joseph', 'Wilson', '1982-06-03', 'Alive', '6D', 'TACGATCGATCGATCGATCGATC'),
(164, 'Susan', 'Anderson', '1991-08-19', 'Alive', '6E', 'CGATCGATCGATCGATCGATCGA'),
(165, 'Thomas', 'Thomas', '2000-12-12', 'Alive', '6F', 'AATTCGGAATTCGGAATTCGGAA'),
(166, 'Jessica', 'Taylor', '2002-05-05', 'Alive', '7A', 'GCTAGCTAGCTAGCTAGCTAGCT'),
(167, 'Charles', 'Moore', '1985-05-16', 'Alive', '7B', 'TACGATCGATCGATCGATCGATC'),
(168, 'Mary', 'Jackson', '2001-08-10', 'Alive', '7C', 'CGATCGATCGATCGATCGATCGA'),
(169, 'Christopher', 'Martin', '1965-01-22', 'Alive', '7D', 'AATTCGGAATTCGGAATTCGGAA'),
(170, 'Patricia', 'Lee', '1981-10-09', 'Alive', '7E', 'GCTAGCTAGCTAGCTAGCTAGCT'),
(171, 'Daniel', 'Perez', '1987-12-25', 'Alive', '7F', 'TACGATCGATCGATCGATCGATC'),
(172, 'Nancy', 'Thompson', '1970-05-29', 'Alive', '8B', 'CGATCGATCGATCGATCGATCGA'),
(173, 'Matthew', 'White', '1968-02-16', 'Alive', '8C', 'AATTCGGAATTCGGAATTCGGAA'),
(174, 'Lisa', 'Harris', '1993-10-01', 'Alive', '8D', 'GCTAGCTAGCTAGCTAGCTAGCT'),
(175, 'Anthony', 'Sanchez', '1990-02-12', 'Alive', '8E', 'TACGATCGATCGATCGATCGATC'),
(176, 'Betty', 'Clark', '1990-09-09', 'Alive', '8F', 'CGATCGATCGATCGATCGATCGA'),
(177, 'Mark', 'Ramirez', '1990-05-05', 'Alive', '3A', 'AATTCGGAATTCGGAATTCGGAA'),
(178, 'Sandra', 'Lewis', '1980-02-15', 'Alive', '3B', 'GCTAGCTAGCTAGCTAGCTAGCT'),
(179, 'Donald', 'Robinson', '1986-01-29', 'Alive', '3C', 'TACGATCGATCGATCGATCGATC'),
(180, 'Ashley', 'Walker', '1978-02-19', 'Unknown', '3D', 'CGATCGATCGATCGATCGATCGA'),
(181, 'Paul', 'Young', '1980-06-18', 'Alive', '3E', 'AATTCGGAATTCGGAATTCGGAA'),
(182, 'Kimberly', 'Allen', '1985-03-22', 'Alive', '3F', 'GCTAGCTAGCTAGCTAGCTAGCT'),
(183, 'Steven', 'King', '1985-01-24', 'Alive', '23A', 'TACGATCGATCGATCGATCGATC'),
(184, 'Donna', 'Wright', '1989-07-22', 'Alive', '23B', 'CGATCGATCGATCGATCGATCGA'),
(185, 'Andrew', 'Scott', '1996-12-12', 'Alive', '23D', 'AATTCGGAATTCGGAATTCGGAA'),
(186, 'Carol', 'Torres', '1982-02-20', 'Alive', '23E', 'GCTAGCTAGCTAGCTAGCTAGCT'),
(187, 'Joshua', 'Nguyen', '1980-01-25', 'Alive', '23F', 'TACGATCGATCGATCGATCGATC'),
(188, 'Michelle', 'Hill', '1998-05-15', 'Alive', '24A', 'CGATCGATCGATCGATCGATCGA'),
(189, 'Kevin', 'Flores', '1992-09-22', 'Alive', '24B', 'AATTCGGAATTCGGAATTCGGAA'),
(190, 'Emily', 'Green', '1975-09-28', 'Alive', '24D', 'GCTAGCTAGCTAGCTAGCTAGCT'),
(191, 'Brian', 'Adams', '1985-04-10', 'Alive', '24E', 'TACGATCGATCGATCGATCGATC'),
(192, 'Amanda', 'Nelson', '1984-11-22', 'Alive', '24F', 'CGATCGATCGATCGATCGATCGA'),
(193, 'George', 'Baker', '1980-06-01', 'Alive', '25A', 'AATTCGGAATTCGGAATTCGGAA'),
(194, 'Melissa', 'Hall', '1921-04-09', 'Alive', '25C', 'GCTAGCTAGCTAGCTAGCTAGCT'),
(195, 'Edward', 'Rivera', '1990-02-12', 'Alive', '25D', 'TACGATCGATCGATCGATCGATC'),
(196, 'Deborah', 'Campbell', '1975-10-10', 'Alive', '25E', 'CGATCGATCGATCGATCGATCGA'),
(197, 'Ronald', 'Mitchell', '1980-07-14', 'Alive', '25F', 'AATTCGGAATTCGGAATTCGGAA'),
(198, 'Stephanie', 'Carter', '1978-04-25', 'Alive', '26A', 'GCTAGCTAGCTAGCTAGCTAGCT'),
(199, 'Timothy', 'Roberts', '1965-04-20', 'Alive', '26B', 'TACGATCGATCGATCGATCGATC'),
(200, 'Rebecca', 'Phillips', '2015-05-05', 'Unknown', '26C', 'CGATCGATCGATCGATCGATCGA');

-- ========================================================
-- TABLE: NON_PASSENGER
-- Data Source: Manifest Canon (Family, Gov, Antagonists)
-- Count: 80 Tuples
-- ========================================================

INSERT INTO NON_PASSENGER (Non_Passenger_ID, FName, LName, DOB, Status, Connection_To_828) VALUES
-- 1. THE STONE FAMILY & KIN (Non-Travelers)
(201, 'Grace', 'Stone', '1980-05-20', 'Deceased', 'Wife of Ben Stone'), --
(202, 'Olive', 'Stone', '2001-06-15', 'Alive', 'Daughter of Ben Stone'), --
(203, 'Eden', 'Stone', '2020-04-06', 'Alive', 'The Holy Grail / Daughter'), --
(204, 'Steve', 'Stone', '1950-03-10', 'Alive', 'Father of Ben & Mick'), --
(205, 'Karen', 'Stone', '1952-08-15', 'Deceased', 'Mother of Ben & Mick'), -- Died while 828 was missing
(206, 'Tarik', 'Mullins', '1985-11-11', 'Deceased', 'Grace''s Stepbrother'), --
(207, 'Danny', 'Mendoza', '1978-04-22', 'Alive', 'Grace''s Ex-Boyfriend'), --
(208, 'Lourdes', 'Vasquez', '1985-09-09', 'Alive', 'Mick''s Best Friend'), -- Married Jared
(209, 'Glen', 'Beverly', '1950-01-01', 'Deceased', 'Evie''s Father'),
(210, 'Beverly', 'Beverly', '1952-02-02', 'Deceased', 'Evie''s Mother'), -- Took in by Mick/Zeke
(211, 'Evie', 'Beverly', '1985-12-12', 'Deceased', 'Mick''s Best Friend'), -- Died in car crash

-- 2. THE RETURNED (Non-Passengers / "Wolves")
(212, 'Zeke', 'Landon', '1988-01-22', 'Alive', 'Returned (Cave)'), -- Survived Death Date
(213, 'James', 'Griffin', '1985-05-05', 'Deceased', 'Returned (Water)'), -- The Wolf
(214, 'Jace', 'Colvin', '1990-11-11', 'Deceased', 'Returned (Lake)'), -- Meth Head 1
(215, 'Pete', 'Baylor', '1992-02-20', 'Deceased', 'Returned (Lake)'), -- Meth Head 2
(216, 'Kory', 'Jephers', '1991-07-15', 'Deceased', 'Returned (Lake)'), -- Meth Head 3

-- 3. LAW ENFORCEMENT (NYPD 129th Precinct)
(217, 'Jared', 'Vasquez', '1984-09-15', 'Alive', 'Lieutenant / Ex-Fiance'), --
(218, 'Drea', 'Mikami', '1992-06-24', 'Alive', 'Detective / Partner'), --
(219, 'Kate', 'Bowers', '1975-03-30', 'Alive', 'Captain of 129th'), --
(220, 'Captain', 'Riojas', '1970-05-15', 'Alive', 'Former Captain of 129th'),
(221, 'Officer', 'Wicks', '1980-01-01', 'Alive', 'Uniformed Officer'),
(222, 'Detective', 'Louis', '1985-08-08', 'Alive', 'NYPD Detective'),
(223, 'Officer', 'Meacham', '1990-04-04', 'Alive', 'NYPD Officer'),
(224, 'Sgt', 'Tony', '1982-02-02', 'Alive', 'Desk Sergeant'),
(225, 'Priscilla', 'Vasquez', '1960-09-09', 'Alive', 'Jared''s Mother'),

-- 4. GOVERNMENT & NSA (The "Suits")
(226, 'Robert', 'Vance', '1970-02-28', 'Alive', 'NSA Director'), --
(227, 'Emmett', 'Pernazza', '1985-07-22', 'Alive', 'Vance''s Partner'),
(228, 'Agent', 'Powell', '1988-11-11', 'Alive', 'NSA Agent'),
(229, 'Agent', 'Rodgers', '1985-05-05', 'Alive', 'NSA Agent'),
(230, 'Agent', 'Willis', '1990-01-01', 'Alive', 'NSA Agent'),
(231, 'Director', 'Zimmer', '1965-08-15', 'Deceased', 'Registry Director'), --
(232, 'Captain', 'Quinn', '1975-03-10', 'Alive', 'Registry Captain'),
(233, 'Agent', 'Dodger', '1982-04-04', 'Alive', 'Registry Agent'),
(234, 'Estelle', 'Vance', '1972-06-06', 'Alive', 'Vance''s Wife'),

-- 5. EUREKA & SCIENCE TEAM
(235, 'Kathryn', 'Fitz', '1965-11-11', 'Deceased', 'The Major'), --
(236, 'Aria', 'Gupta', '1978-09-19', 'Alive', 'Eureka Lead Scientist'), --
(237, 'Troy', 'Davis', '1992-03-15', 'Alive', 'Eureka Scientist'), -- Helped Saanvi
(238, 'Cooper', 'Jones', '1988-07-07', 'Alive', 'Eureka Technician'),
(239, 'Patrick', 'Day', '1990-12-12', 'Alive', 'Eureka Analyst'),
(240, 'Dr', 'Cardoso', '1970-01-01', 'Alive', 'Hospital Chief'),
(241, 'Dr', 'Yeo', '1975-05-05', 'Alive', 'Medical Examiner'),
(242, 'Dr', 'Bates', '1980-08-08', 'Alive', 'Psychologist'),

-- 6. THE ANTAGONISTS (X-ers & Fanatics)
(243, 'Simon', 'White', '1975-04-04', 'Deceased', 'X-er Leader / Professor'), --
(244, 'Erika', 'Burness', '1980-10-10', 'Deceased', 'X-er Extremist'),
(245, 'Cody', 'Webber', '1985-02-02', 'Alive', 'X-er Member'),
(246, 'Billy', 'McPherson', '1990-06-06', 'Alive', 'X-er Thug'),
(247, 'Tamara', 'McPherson', '1992-08-08', 'Alive', 'Bartender / X-er Sister'),
(248, 'Kenneth', 'Meyer', '1965-01-01', 'Deceased', 'Angelina''s Father'),
(249, 'Noelle', 'Meyer', '1968-03-03', 'Deceased', 'Angelina''s Mother'), -- Religious fanatic
(250, 'Kaleb', 'Fuller', '1985-05-05', 'Alive', 'Jace''s Associate'),

-- 7. MINOR CHARACTERS & ALLIES
(251, 'Levi', 'Meek', '1998-09-09', 'Alive', 'Archeologist / Olive''s Friend'),
(252, 'Sarah', 'Fitz', '1995-02-14', 'Alive', 'Major''s Daughter'), -- Dated Jared
(253, 'Adio', 'Campbell', '2000-01-01', 'Alive', 'Radd''s Son'), --
(254, 'Courtney', 'Landon', '1988-11-11', 'Alive', 'Zeke''s Ex-Wife'),
(255, 'Gordon', 'Landon', '1960-05-05', 'Deceased', 'Zeke''s Father'),
(256, 'Chloe', 'Landon', '1995-07-07', 'Deceased', 'Zeke''s Sister'),
(257, 'Judge', 'Trilling', '1960-02-02', 'Alive', 'Presiding Judge'),
(258, 'Aaron', 'Glover', '1985-12-12', 'Alive', 'Grace''s Employee'),
(259, 'Hayley', 'Vasquez', '1988-01-01', 'Alive', 'Jared''s Sister-In-Law'),
(260, 'Kevin', 'Vasquez', '1982-03-03', 'Alive', 'Jared''s Brother'),

-- 8. BACKGROUND OFFICIALS (To reach 80)
(261, 'Agent', 'Smith', '1980-01-01', 'Alive', 'FBI Agent'),
(262, 'Agent', 'Jones', '1982-02-02', 'Alive', 'DHS Agent'),
(263, 'Officer', 'Garcia', '1985-03-03', 'Alive', 'Registry Officer'),
(264, 'Officer', 'Lee', '1988-04-04', 'Alive', 'Registry Officer'),
(265, 'Officer', 'Chen', '1990-05-05', 'Alive', 'Registry Officer'),
(266, 'Nurse', 'Ratched', '1975-06-06', 'Alive', 'Koch Hospital Nurse'),
(267, 'Nurse', 'Jackie', '1980-07-07', 'Alive', 'Koch Hospital Nurse'),
(268, 'Guard', 'Richards', '1985-08-08', 'Alive', 'Detention Center Guard'),
(269, 'Guard', 'Cypher', '1988-09-09', 'Alive', 'Detention Center Guard'),
(270, 'Tech', 'Support', '1995-10-10', 'Alive', 'Eureka IT'),
(271, 'Lab', 'Assistant', '1998-11-11', 'Alive', 'Eureka Lab'),
(272, 'Attorney', 'Gold', '1970-12-12', 'Alive', 'Stone Family Lawyer'),
(273, 'Attorney', 'Silver', '1975-01-01', 'Alive', 'Defense Attorney'),
(274, 'Professor', 'X', '1960-02-02', 'Deceased', 'Historical Expert'),
(275, 'Father', 'Brian', '1965-03-03', 'Alive', 'Priest'),
(276, 'Pastor', 'Dave', '1970-04-04', 'Alive', 'Pastor'),
(277, 'Manager', 'Steve', '1980-05-05', 'Alive', 'Taco Bell Manager'),
(278, 'Driver', 'Joe', '1985-06-06', 'Alive', 'Uber Driver'),
(279, 'Pilot', 'Generic', '1975-07-07', 'Alive', 'Private Pilot'),
(280, 'Yusuv', 'Al-Zuras', '1490-01-01', 'Deceased', 'Ancient Non-Passenger'); -- The original returned

-- ========================================================
-- TABLE: CALLING
-- Data Source: Complete Manifest Series (S1-S4)
-- Types: Visual, Auditory, Physical, Shared
-- ========================================================

INSERT INTO CALLING (Calling_ID, Calling_Timestamp, Description) VALUES
-- SEASON 1: THE AWAKENING (2018-2019)
(1, '2018-11-04 22:00:00', 'Slower - Auditory command to slow down the bus, preventing a crash.'), -- Michaela's first calling
(2, '2018-11-05 08:30:00', 'Set them free - Hearing dogs barking and a voice command.'), -- Lead to the discovery of the abducted girls
(3, '2018-11-06 14:00:00', 'It''s all connected - Auditory phrase repeated by Cal and Ben.'), -- The overarching theme of the mystery
(4, '2018-11-10 09:00:00', 'Own your truth - Auditory command heard by Kelly Taylor.'), -- Lead to her going on TV
(5, '2018-11-15 16:45:00', 'Angel of the Waters - Visual of the Bethesda Fountain statue.'), -- Guided Mick to save a jumper
(6, '2018-12-01 11:00:00', 'Don''t lose him - Auditory command regarding Harvey Stein.'), -- Warning about the "Angel of Death" suicide
(7, '2018-12-20 13:00:00', 'U.V. - Visual of ultraviolet light glowing on a warehouse.'), -- Lead to the discovery of the captive passengers
(8, '2019-01-10 08:00:00', 'The Blizzard - Physical sensation of freezing cold.'), -- Connection to Cal/Zeke freezing in the cabin
(9, '2019-01-21 10:00:00', 'Find her - Auditory command heard by Zeke in the cave.'), -- Zeke's first calling leading him to Michaela
(10, '2019-01-28 23:00:00', 'Dark Lightning - Visual of the storm that took the plane.'), -- Shared calling by Captain Daly
(11, '2019-02-15 14:00:00', 'Stop him - Auditory warning about the Wolf.'), -- Stopping the bank robbery
(12, '2019-02-18 09:00:00', 'The Peacock - Visual of a peacock spreading feathers.'), -- Symbol of resurrection/immortality

-- SEASON 2: THE DEATH DATE (2020)
(13, '2020-01-10 08:00:00', 'Save the passengers - Auditory command from a younger Cal.'), -- Flashback calling on the plane
(14, '2020-01-20 15:30:00', 'The Burning Plane - Visual of Flight 828 exploding.'), -- Premonition of the Death Date
(15, '2020-02-15 12:00:00', 'Bring him back - Auditory command regarding TJ.'), -- Discovery that TJ survived the fire
(16, '2020-03-01 10:00:00', 'The Gargoyle - Visual of a stone gargoyle weeping.'), -- Grace's first calling ("Open Her Eyes")
(17, '2020-03-15 14:00:00', 'Al-Zuras Ship - Shared visual of a 16th-century ship in a storm.'), -- Ben, Mick, Saanvi, and Zeke share this massive calling
(18, '2020-04-01 09:00:00', 'The Phoenix - Visual of a bird rising from ashes.'), -- Linked to TJ's research
(19, '2020-05-01 11:00:00', 'Help me - Auditory plea from a bridge jumper.'),
(20, '2020-06-04 16:00:00', 'Follow the Glow - Visual of the golden light.'), -- Zeke following the light to save Cal at the frozen lake

-- SEASON 3: THE TAILFIN & THE ARK (2021)
(21, '2021-03-15 08:00:00', 'The Three Shadows - Visual of three dark figures rising.'), -- Premonition of the Meth Heads (Jace, Pete, Kory)
(22, '2021-03-20 13:00:00', 'Sinking Ship - Visual of the Lifeboat filling with water.'), -- Warning that one passenger can sink them all
(23, '2021-04-05 10:00:00', 'Eyes Bleeding - Visual of weeping blood tears.'), -- Warning of the Egyptian plague/testing
(24, '2021-05-10 12:00:00', 'Lion Roaring - Auditory sound of a lion.' ), -- Connected to the darker testing arc
(25, '2021-05-20 09:00:00', 'Burning Hand - Physical burning sensation on the palm.'), -- The mark of the trial/Sapphire
(26, '2021-06-01 15:00:00', 'The Volcano - Visual of Mount Arrarat erupting.'), -- The apocalyptic vision of the world ending
(27, '2021-10-30 22:00:00', 'Blood on the Tailfin - Visual of blood covering the object.'), -- The warning before Grace's murder

-- SEASON 4: THE END OF DAYS (2022-2024)
(28, '2022-11-04 08:00:00', 'Find the Stone - Auditory command to find the Omega Sapphire.'), -- Leading Ben to the Masonic Temple
(29, '2023-01-15 14:00:00', 'Ash falling like snow - Visual of the apocalypse.'), -- The final warning of the Death Date
(30, '2023-04-10 09:00:00', 'Save her - Auditory command to save Eden.'), -- Leading Ben to the Meyer Compound
(31, '2023-11-20 11:00:00', 'We are the same - Shared visual with the divine consciousness.'), -- Saanvi's realization about the Light
(32, '2023-12-01 16:00:00', 'Fake Grace - Visual of Grace Stone (FAKE).'), -- Generated by Angelina using the Sapphire to trick Ben
(33, '2024-01-01 10:00:00', 'Fake Evie - Visual of Evie Beverly (FAKE).'), -- Generated by Angelina to torment Michaela
(34, '2024-06-02 06:00:00', 'The Scales - Visual of Maat''s scales weighing hearts.'), -- The final judgment of the passengers
(35, '2024-06-02 12:00:00', 'The Grim Reaper - Visual of the shadow figure stalking passengers.'), -- The tangible form of the Death Date
(36, '2018-11-04 23:00:00', 'All Good Things - Auditory phrase heard by Mick.'), -- A flashback calling revealed to be her actual first calling
(37, '2019-05-15 10:00:00', 'Silver Dragon - Visual of the plane flying in the 16th century.'), -- Connecting 828 to Al-Zuras
(38, '2020-02-20 14:30:00', 'Falling - Physical sensation of falling from the sky.'), -- Experienced by Adrian; belief that callings are traps
(39, '2021-04-10 11:00:00', 'River of Blood - Visual of the river turning red.'), -- Another Egyptian plague warning
(40, '2022-12-25 08:00:00', 'The Compass - Visual of the Al-Zuras compass spinning.'), -- Pointing toward the divine glow
-- ... [Previous Callings 1-40] ...

-- 5. CAL'S DRAWINGS & BEN'S INVESTIGATIONS (User Requests)
(41, '2018-12-15 10:00:00', 'The Spiderweb - Visual of tangled webs.'), -- Cal drew this; it was actually a map of power lines leading to the detention farm.
(42, '2020-02-10 14:00:00', 'The Starry Night - Visual of a Gemini constellation.'), -- Led Ben to the Historical Archive (Museum) to find the Al-Zuras Journal.
(43, '2019-01-05 09:00:00', 'The Beating Heart - Auditory sound of a heartbeat.'), -- Shared calling leading Ben and Michaela to save a transplant patient.
(44, '2021-05-15 11:00:00', 'Locust Swarm - Visual of bugs swarming the Lifeboat.'), -- One of the ten plagues represented in the Season 3/4 arc.
(45, '2022-11-10 16:30:00', 'Quicksand - Physical sensation of sinking into earth.'), -- Warning about the ground opening up (fissures).
(46, '2018-11-25 13:00:00', 'Rugby the Dog - Visual of a dog running.'), -- Cal's vision that led them to find the "missing thing" (which was a cover-up).
(47, '2023-03-01 08:00:00', 'Boiling Water - Visual of the ocean boiling.'), -- Warning about the volcanic vents and the world ending.
(48, '2020-05-20 12:00:00', 'Open the Gate - Visual of a gate opening.'), -- Eagan's calling which he used for selfish gain (The bank/storage).
(49, '2019-04-04 15:00:00', 'Hold Him - Physical sensation of restraining someone.'), -- Led Michaela to stop a suspect without shooting.
(50, '2024-05-28 23:59:00', 'The White Light - Visual of the final glow.'); -- The ultimate calling leading to the judgment moment.

-- ========================================================
-- TABLE: CALLING_TYPE_JUNCTION
-- Data Source: Derived from Calling Descriptions
-- Constraints: Type IN ('Visual', 'Auditory', 'Physical', 'Shared')
-- ========================================================

INSERT INTO CALLING_TYPE_JUNCTION (Calling_ID, Calling_Type) VALUES
-- SEASON 1 CALLINGS
(1, 'Auditory'), -- "Slower"
(2, 'Auditory'), -- "Set them free"
(3, 'Auditory'), -- "It's all connected"
(4, 'Auditory'), -- "Own your truth"
(5, 'Visual'),   -- "Angel of the Waters" (Statue)
(6, 'Auditory'), -- "Don't lose him"
(7, 'Visual'),   -- "U.V." light
(8, 'Physical'), -- "The Blizzard" (Freezing sensation)
(9, 'Auditory'), -- "Find her"
(10, 'Visual'),  -- "Dark Lightning"
(10, 'Shared'),  -- (Shared by Captain Daly and Fiona)
(11, 'Auditory'), -- "Stop him"
(12, 'Visual'),  -- "The Peacock"

-- SEASON 2 CALLINGS
(13, 'Auditory'), -- "Save the passengers"
(14, 'Visual'),   -- "The Burning Plane"
(15, 'Auditory'), -- "Bring him back"
(16, 'Visual'),   -- "The Gargoyle"
(17, 'Visual'),   -- "Al-Zuras Ship"
(17, 'Shared'),   -- (Shared by Ben, Mick, Saanvi, Zeke)
(18, 'Visual'),   -- "The Phoenix"
(19, 'Auditory'), -- "Help me"
(20, 'Visual'),   -- "Follow the Glow"

-- SEASON 3 CALLINGS
(21, 'Visual'),   -- "The Three Shadows"
(22, 'Visual'),   -- "Sinking Ship"
(23, 'Visual'),   -- "Eyes Bleeding"
(24, 'Auditory'), -- "Lion Roaring"
(25, 'Physical'), -- "Burning Hand"
(26, 'Visual'),   -- "The Volcano"
(27, 'Visual'),   -- "Blood on the Tailfin"

-- SEASON 4 CALLINGS
(28, 'Auditory'), -- "Find the Stone"
(29, 'Visual'),   -- "Ash falling like snow"
(30, 'Auditory'), -- "Save her"
(31, 'Visual'),   -- "We are the same"
(31, 'Shared'),   -- (Shared consciousness)
(32, 'Visual'),   -- "Fake Grace" (Angelina's illusion)
(33, 'Visual'),   -- "Fake Evie"
(34, 'Visual'),   -- "The Scales"
(35, 'Visual'),   -- "The Grim Reaper"
(36, 'Auditory'), -- "All Good Things"
(37, 'Visual'),   -- "Silver Dragon"
(38, 'Physical'), -- "Falling" sensation
(39, 'Visual'),   -- "River of Blood"
(40, 'Visual'),   -- "The Compass"

-- NEW ADDITIONS (User Requested)
(41, 'Visual'),   -- "The Spiderweb" (Drawing)
(42, 'Visual'),   -- "The Starry Night"
(43, 'Auditory'), -- "The Beating Heart"
(43, 'Shared'),   -- (Shared by Ben/Mick)
(44, 'Visual'),   -- "Locust Swarm"
(45, 'Physical'), -- "Quicksand"
(46, 'Visual'),   -- "Rugby the Dog"
(47, 'Visual'),   -- "Boiling Water"
(48, 'Visual'),   -- "Open the Gate"
(49, 'Physical'), -- "Hold Him"
(50, 'Visual');   -- "The White Light"

-- ========================================================
-- TABLE: PASSENGER_PHONE
-- Purpose: Resolves 1NF violation (Multi-valued attribute)
-- Logic: 100% Coverage for Passenger IDs 101-200
-- ========================================================

INSERT INTO PASSENGER_PHONE (Passenger_ID, Phone_Number) VALUES
-- 1. THE STONE FAMILY (Multiple numbers for Ben/Mick)
(101, '555-0101'), -- Ben Stone (Personal)
(101, '555-0199'), -- Ben Stone (Work/Campus)
(102, '555-0102'), -- Michaela Stone (Personal)
(102, '555-0911'), -- Michaela Stone (Precinct Direct Line)
(103, '555-0103'), -- Cal Stone (House Line)

-- 2. KEY PLAYERS (Specific Lines)
(104, '555-0104'), -- Bill Daly
(105, '555-0105'), -- Amuta St. Patrick
(106, '555-0106'), -- Bethany Collins
(107, '555-0107'), -- Saanvi Bahl (Lab)
(107, '555-9907'), -- Saanvi Bahl (Pager)
(108, '555-0108'), -- Fiona Clarke
(109, '555-0109'), -- TJ Morrison
(110, '555-0666'), -- Adrian Shannon (Church Line)
(111, '555-0111'), -- Eagan Tehrani (Burner)
(112, '555-0112'), -- Angelina Meyer

-- 3. RECURRING CHARACTERS (113-130)
(113, '555-0113'), (114, '555-0114'), (115, '555-0115'),
(116, '555-0116'), (117, '555-0117'), (118, '555-0118'),
(119, '555-0119'), (120, '555-0120'), (121, '555-0121'),
(122, '555-0122'), (123, '555-0123'), (124, '555-0124'),
(125, '555-0125'), (126, '555-0126'), (127, '555-0127'),
(128, '555-0128'), (129, '555-0129'), (130, '555-0130'),

-- 4. BACKGROUND PASSENGERS (131-150)
(131, '555-1031'), (132, '555-1032'), (133, '555-1033'), (134, '555-1034'),
(135, '555-1035'), (136, '555-1036'), (137, '555-1037'), (138, '555-1038'),
(139, '555-1039'), (140, '555-1040'), (141, '555-1041'), (142, '555-1042'),
(143, '555-1043'), (144, '555-1044'), (145, '555-1045'), (146, '555-1046'),
(147, '555-1047'), (148, '555-1048'), (149, '555-1049'), (150, '555-1050'),

-- 5. EXTRAS & COMMON NAMES (151-200)
(151, '555-2051'), (152, '555-2052'), (153, '555-2053'), (154, '555-2054'),
(155, '555-2055'), (156, '555-2056'), (157, '555-2057'), (158, '555-2058'),
(159, '555-2059'), (160, '555-2060'), (161, '555-2061'), (162, '555-2062'),
(163, '555-2063'), (164, '555-2064'), (165, '555-2065'), (166, '555-2066'),
(167, '555-2067'), (168, '555-2068'), (169, '555-2069'), (170, '555-2070'),
(171, '555-2071'), (172, '555-2072'), (173, '555-2073'), (174, '555-2074'),
(175, '555-2075'), (176, '555-2076'), (177, '555-2077'), (178, '555-2078'),
(179, '555-2079'), (180, '555-2080'), (181, '555-2081'), (182, '555-2082'),
(183, '555-2083'), (184, '555-2084'), (185, '555-2085'), (186, '555-2086'),
(187, '555-2087'), (188, '555-2088'), (189, '555-2089'), (190, '555-2090'),
(191, '555-2091'), (192, '555-2092'), (193, '555-2093'), (194, '555-2094'),
(195, '555-2095'), (196, '555-2096'), (197, '555-2097'), (198, '555-2098'),
(199, '555-2099'), (200, '555-2100');

-- ========================================================
-- TABLE: SUBCLASSES (Linked via Shared Primary Key)
-- Logic: Every ID from HISTORICAL_OBJECT (1-15) is mapped here.
-- ========================================================

-- A. TEXTUAL OBJECTS (Books, Sketches, Scrolls, Files, Cards)
-- IDs Mapped: 1, 3, 7, 9, 15
INSERT INTO TEXTUAL_OBJECT (Object_ID, Language, Author, Source_Type, Source_ID) VALUES
(1, 'Latin', 'Yusuv Al-Zuras', 'Non-Passenger', 280), -- Al-Zuras's Journal (Written by the ancient returnee)
(3, 'Visual Sketch', 'Yusuv Al-Zuras', 'Non-Passenger', 280), -- Drawing of the Lovers (Sketch from the journal)
(7, 'Egyptian Hieroglyphs', 'Unknown Scribe', 'Non-Passenger', 274), -- Papyrus of Maat (Found by Professor X)
(9, 'Symbolic/Visual', 'Unknown Artisan', 'Passenger', 109), -- Ancient Tarot Deck (Used by TJ/Olive)
(15, 'Latin/Italian', 'Vatican Clergy', 'Non-Passenger', 275); -- Vatican Archive File 828 (Found by Father Brian)

-- B. PHYSICAL ARTIFACTS (Items, Relics, Tools)
-- IDs Mapped: 2, 4, 5, 6, 8, 10, 11, 12, 13, 14
INSERT INTO PHYSICAL_ARTIFACT (Object_ID, Material, Has_Supernatural_Properties, Source_Type, Source_ID) VALUES
(2, 'Silver', FALSE, 'Non-Passenger', 280), -- Silver Dragon Compass (Just a tool, no glow)
(4, 'Omega Sapphire', TRUE, 'Non-Passenger', 243), -- The Omega Sapphire (Highly Supernatural)
(5, 'Petrified Wood', TRUE, 'Passenger', 104), -- Noah's Ark Fragment (Contains Sapphire DNA)
(6, 'Sapphire Stone', TRUE, 'Non-Passenger', 274), -- Stone Tablet of the Law (Origin of the Sapphire)
(8, 'Granite', FALSE, 'Non-Passenger', 274), -- Statue of Anubis (Historical relic)
(10, 'Montego Alloy', TRUE, 'Government', 5), -- The Tailfin (Disappeared/Reappeared, held at Eureka)
(11, 'Plastic/Glass', FALSE, 'Passenger', 101), -- Ben's Glasses (Symbolic)
(12, 'Fabric/Residue', TRUE, 'Passenger', 103), -- Seat 14A Headrest (Glowing residue from Cal)
(13, 'Gold', FALSE, 'Passenger', 102), -- Saint Joseph Medallion (Heirloom)
(14, 'Brass', FALSE, 'Non-Passenger', 280); -- Bussola / Mariner's Compass

-- ========================================================
-- TABLE: SUBCLASSES (NON_PASSENGER MAPPING)
-- Logic: Total Participation. Every ID 201-280 is mapped.
-- ========================================================

-- A. GOVERNMENT AGENTS (Law Enforcement, Military, Intel)
-- IDs Mapped: 217-224, 226-230, 231-233, 235, 261-265, 268-269
INSERT INTO GOVERNMENT_AGENT (Non_Passenger_ID, Agency_ID, Cases_Solved, Rank_Title) VALUES
-- NYPD 129th Precinct (Agency ID 7)
(217, 7, 52, 'Lieutenant'), -- Jared Vasquez
(218, 7, 28, 'Detective'), -- Drea Mikami
(219, 7, 115, 'Captain'), -- Kate Bowers
(220, 7, 200, 'Captain'), -- Captain Riojas
(221, 7, 10, 'Officer'), -- Officer Wicks
(222, 7, 15, 'Detective'), -- Detective Louis
(223, 7, 5, 'Officer'), -- Officer Meacham
(224, 7, 40, 'Sergeant'), -- Sgt Tony

-- NSA (Agency ID 1)
(226, 1, 300, 'Director'), -- Robert Vance
(227, 1, 60, 'Field Agent'), -- Emmett Pernazza
(228, 1, 20, 'Agent'), -- Agent Powell
(229, 1, 22, 'Agent'), -- Agent Rodgers
(230, 1, 18, 'Agent'), -- Agent Willis

-- 828 Registry (Agency ID 3)
(231, 3, 0, 'Director'), -- Director Zimmer
(232, 3, 10, 'Captain'), -- Captain Quinn
(233, 3, 50, 'Special Agent'), -- Agent Dodger (The hunter)

-- The Major's Faction (Agency ID 2)
(235, 2, 500, 'Major General'), -- Kathryn Fitz (The Major)

-- Federal & Corrections (Agencies 8, 9, 3)
(261, 8, 40, 'Special Agent'), -- Agent Smith (FBI)
(262, 9, 35, 'Field Agent'), -- Agent Jones (DHS)
(263, 3, 5, 'Officer'), -- Officer Garcia (Registry)
(264, 3, 6, 'Officer'), -- Officer Lee (Registry)
(265, 3, 4, 'Officer'), -- Officer Chen (Registry)
(268, 3, 0, 'Guard'), -- Guard Richards
(269, 3, 0, 'Guard'); -- Guard Cypher

-- B. FAMILY MEMBERS (Civilians, Scientists, The Returned)
-- IDs Mapped: 201-216, 225, 234, 236-260, 266-267, 270-280
INSERT INTO FAMILY_MEMBER (Non_Passenger_ID, Profession) VALUES
-- The Stones & Close Kin
(201, 'Catering Business Owner'), -- Grace Stone
(202, 'Student / Mythologist'), -- Olive Stone
(203, 'None (Child)'), -- Eden Stone
(204, 'Retired'), -- Steve Stone
(205, 'Deceased'), -- Karen Stone
(206, 'Carpenter'), -- Tarik Mullins
(207, 'Truck Driver'), -- Danny Mendoza
(208, 'Retail Manager'), -- Lourdes Vasquez
(209, 'Retired'), -- Glen Beverly
(210, 'Retired'), -- Beverly Beverly
(211, 'Unemployed'), -- Evie Beverly

-- The Returned (Non-Passenger Supernatural)
(212, 'Counselor'), -- Zeke Landon
(213, 'Criminal'), -- James Griffin (The Wolf)
(214, 'Criminal'), -- Jace Colvin
(215, 'Criminal'), -- Pete Baylor
(216, 'Criminal'), -- Kory Jephers

-- Spouses & Parents
(225, 'Retired'), -- Priscilla Vasquez
(234, 'Homemaker'), -- Estelle Vance

-- Eureka Scientists & Doctors (Civilians working for Gov)
(236, 'Lead Scientist'), -- Aria Gupta
(237, 'Biologist'), -- Troy Davis
(238, 'Lab Tech'), -- Cooper Jones
(239, 'Data Analyst'), -- Patrick Day
(240, 'Chief of Medicine'), -- Dr Cardoso
(241, 'Medical Examiner'), -- Dr Yeo
(242, 'Psychologist'), -- Dr Bates

-- The X-ers (Radical Civilians)
(243, 'Professor / Cult Leader'), -- Simon White
(244, 'Activist'), -- Erika Burness
(245, 'Unemployed'), -- Cody Webber
(246, 'Mechanic'), -- Billy McPherson
(247, 'Bartender'), -- Tamara McPherson
(248, 'Businessman'), -- Kenneth Meyer
(249, 'Housewife'), -- Noelle Meyer
(250, 'Criminal'), -- Kaleb Fuller

-- Minor Characters
(251, 'Archeologist'), -- Levi Meek
(252, 'Bartender'), -- Sarah Fitz
(253, 'Musician'), -- Adio Campbell
(254, 'Banker'), -- Courtney Landon
(255, 'Photographer'), -- Gordon Landon
(256, 'Student'), -- Chloe Landon
(257, 'Judge'), -- Judge Trilling
(258, 'Waiter'), -- Aaron Glover
(259, 'Nurse'), -- Hayley Vasquez
(260, 'Construction'), -- Kevin Vasquez

-- Background Civilians
(266, 'Nurse'), -- Nurse Ratched
(267, 'Nurse'), -- Nurse Jackie
(270, 'IT Specialist'), -- Tech Support
(271, 'Lab Assistant'), -- Lab Assistant
(272, 'Defense Attorney'), -- Attorney Gold
(273, 'Prosecutor'), -- Attorney Silver
(274, 'Historian'), -- Professor X
(275, 'Catholic Priest'), -- Father Brian
(276, 'Christian Pastor'), -- Pastor Dave
(277, 'Fast Food Manager'), -- Manager Steve
(278, 'Ride Share Driver'), -- Driver Joe
(279, 'Commercial Pilot'), -- Pilot Generic
(280, 'Explorer / Artist'); -- Yusuv Al-Zuras

-- ========================================================
-- TABLE: CLUE
-- Type: Weak Entity (Dependent on CALLING)
-- PK: (Calling_ID, Clue_Number)
-- Data Source: Manifest Seasons 1-4 (Deep Research)
-- Count: 50 Clues
-- ========================================================

INSERT INTO CLUE (Calling_ID, Clue_Number, Clue_Description) VALUES
-- SEASON 1: THE MYSTERY BEGINS
(1, 1, 'The bus driver is accelerating too fast.'), -- Calling: "Slower"
(2, 2, 'The sound of German Shepherds barking.'), -- Calling: "Set them free"
(2, 3, 'A visual of a chain-link fence with a specific bolt pattern.'), -- Found at the warehouse.
(3, 4, 'The phrase "It''s all connected" written in crayon on a sketchpad.'), -- Calling: "It's all connected"
(5, 5, 'The statue of the Angel at Bethesda Fountain.'), -- Calling: "Angel of the Waters"
(5, 6, 'A silver heart necklace buried in the mud near the fountain.'), -- Belonged to Evie; linked Mick to the calling.
(7, 7, 'A glowing ultraviolet fingerprint on a door handle.'), -- Calling: "U.V."
(10, 8, 'A specific cloud formation matching the date of the disappearance.'), -- Calling: "Dark Lightning"
(10, 9, 'A sudden drop in barometric pressure recorded on the flight log.'), -- Additional clue for the Pilot.
(12, 10, 'A peacock feather found at the scene.'), -- Calling: "The Peacock"
(11, 11, 'A security camera feed showing a van plunging into the river.'), -- Calling: "Stop him" (The Wolf)
(11, 12, 'A ticking metronome sound heard by Radd.'), -- Linked to the musician calling.

-- SEASON 2: DEATH DATES & AL-ZURAS
(14, 13, 'A reflection of a passenger in the exploding window.'), -- Calling: "Burning Plane"
(16, 14, 'The stone gargoyle at the university architecture wing.'), -- Calling: "The Gargoyle"
(17, 15, 'A 16th-century woodcut of a silver dragon.'), -- Calling: "Al-Zuras Ship"
(17, 16, 'A face in the storm that resembles Ben Stone.'),
(17, 17, 'A mariner''s compass spinning counter-clockwise.'), -- Physical proof of the magnetic anomaly.
(20, 18, 'A trail of lithographic minerals glowing in the dark.'), -- Calling: "Follow the Glow"
(20, 19, 'A Tarot card ("The World") found in Al-Zuras''s deck.'), -- TJ found this connecting to the death date.
(15, 20, 'A student ID card belonging to TJ found in the digging site.'), -- Calling: "Bring him back"
(13, 21, 'A burnt luggage tag with "Stone" written on it.'), -- Found in the plane wreckage vision.
(19, 22, 'A distinct sneaker print left in the wet cement.'), -- Calling: "Help me"

-- SEASON 3: TAILFINS & TESTS
(21, 23, 'A shadow cast on the wall in the shape of three figures.'), -- Calling: "Three Shadows"
(21, 24, 'A drawing of three dark clouds looming over the lake.'), -- Cal's drawing predicting the Meth Heads.
(22, 25, 'Water leaking from a painting of a boat.'), -- Calling: "Sinking Ship"
(23, 26, 'Tears of blood appearing on a photograph of the passengers.'), -- Calling: "Eyes Bleeding"
(24, 27, 'Deep claw marks found on the drywall of the nursery.'), -- Calling: "Lion Roaring"
(25, 28, 'A scorch mark in the shape of a hand on a bible.'), -- Calling: "Burning Hand" (The Trial)
(27, 29, 'Blood splattered on the tailfin matching Grace''s DNA.'), -- Calling: "Blood on the Tailfin"
(26, 30, 'A seismograph reading spiking at the exact time of the vision.'), -- Calling: "The Volcano"
(26, 31, 'A smell of sulfur and rotten eggs in the air.'), -- Additional sensory clue for the volcano.

-- SEASON 4: THE DIVINE & THE END
(28, 32, 'A specific frequency detected on the seismic monitors.'), -- Calling: "Find the Stone"
(28, 33, 'The symbol of the Masonic Order etched into the wall.'),
(29, 34, 'Volcanic ash found on the shoulder of a patient.'), -- Calling: "Ash falling like snow"
(30, 35, 'A child''s drawing of a bee found at the compound.'), -- Calling: "Save her"
(30, 36, 'A ribbon from Eden''s hair left on a tree branch.'), -- Trail left by Angelina.
(34, 37, 'The feather of Maat tipping the scales.'), -- Calling: "The Scales"
(37, 38, 'A compass heading pointing due North.'), -- Calling: "Silver Dragon"
(40, 39, 'The needle of the compass spinning wildly near the divine consciousness.'), -- Calling: "The Compass"
(44, 40, 'A dead locust found inside the sealed Eureka lab.'), -- Calling: "Locust Swarm"
(44, 41, 'A sample of water turning into blood (Red Algae).'), -- Calling: "River of Blood"

-- SPECIFIC & MINOR CALLING CLUES
(41, 42, 'A drawing of a spiderweb that overlays perfectly on a subway map.'), -- Calling: "Spiderweb"
(42, 43, 'The constellation Gemini visible in the daytime sky.'), -- Calling: "Starry Night"
(42, 44, 'A specific date (1524) carved into a wooden beam.'),
(46, 45, 'A dog collar belonging to "Rugby" found in the dirt.'), -- Calling: "Rugby the Dog"
(50, 46, 'A blinding white light emitted from the cockpit door.'), -- Calling: "The White Light"
(45, 47, 'Cracks appearing in the foundation of the Stone house.'), -- Calling: "Quicksand" / Fissures.
(43, 48, 'An EKG strip showing a heartbeat matching the auditory calling.'), -- Calling: "Beating Heart".
(48, 49, 'A rusted key found in the vent leading to the storage unit.'), -- Calling: "Open the Gate".
(49, 50, 'A pair of handcuffs found on the floor.'); -- Calling: "Hold Him".

-- ========================================================
-- TABLE: SCIENTIFIC_DATA
-- Type: Weak Entity (Dependent on PASSENGER)
-- PK: (Passenger_ID, Sample_ID)
-- Logic: 100% Coverage. All 828ers have the "Anomaly" marker.
-- ========================================================

INSERT INTO SCIENTIFIC_DATA (Passenger_ID, Sample_ID, Test_Type, Results_Summary) VALUES
-- 1. THE STONE ANOMALIES (The "Holy Grail" & Leaders)
(101, 'SAMP-101-A', 'Blood Marker Analysis', 'Positive for Ischemic Stroke marker (The Calling Marker).'), -- Ben
(102, 'SAMP-102-A', 'Blood Marker Analysis', 'Positive for Ischemic Stroke marker. Identical to Subject 101.'), -- Mick
(103, 'SAMP-103-A', 'Blood Marker Analysis', 'Marker present but fluctuating. Shows signs of mutation (Omega).'), -- Cal (Omega)
(103, 'SAMP-103-B', 'fMRI Brain Scan', 'Brain activity lights up the same region as a seizure during Callings.'), -- Cal

-- 2. THE SCIENTISTS & EXPERIMENTS
(104, 'SAMP-104-A', 'DNA Sequencing', 'Marker Eliminated. Subject cured after self-experimentation.'), -- Saanvi (Cured)
(107, 'SAMP-107-A', 'Tissue Sample', 'Sapphire residue found on skin cells. High conductivity.'), -- Eagan (Touched the stone)
(120, 'SAMP-120-A', 'Spinal Tap', 'Elevated electrical impulses. Subject induced into shared Calling state.'), -- Marko (Major''s Test)
(111, 'SAMP-111-A', 'Stress Test', 'Cortisol levels spike 400% during visual hallucinations.'), -- Paul Santino

-- 3. THE "RETURNED" ANOMALIES (Unique Cases)
(121, 'SAMP-121-A', 'DNA Sequencing', 'Contains unique protein sequence not found in human genome.'), -- Henry Kim
(104, 'SAMP-104-B', 'Autopsy Simulation', 'Subject body shows signs of rapid aging in simulation models.'), -- Bill Daly
(108, 'SAMP-108-A', 'Neural Linkage', 'Brainwaves sync with Captain Daly during shared disappearance.'), -- Fiona Clarke

-- 4. THE DECEASED (Autopsy & Recovery)
(123, 'SAMP-123-A', 'Post-Mortem Analysis', 'Cellular decay inconsistent with time of death. Drowned on dry land.'), -- Kelly Taylor
(124, 'SAMP-124-A', 'Toxicity Screen', 'No toxins found. Cause of death: Internal drowning.'), -- Harvey Stein
(126, 'SAMP-126-A', 'Genetic Decay Rate', 'Telomeres shortening at accelerated rate congruent with 5.5 years.'), -- Patrick Hayes
(113, 'SAMP-113-A', 'Tissue Analysis', 'Traces of dark lightning radiation found in bone marrow.'), -- Autumn Cox
(109, 'SAMP-109-A', 'Spectroscopy', 'Traces of glowing organic compound found on clothes.'), -- TJ Morrison

-- 5. ROUTINE BLOODWORK - GROUP A (131-160)
(131, 'SAMP-GEN-01', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(132, 'SAMP-GEN-02', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(133, 'SAMP-GEN-03', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(134, 'SAMP-GEN-04', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(135, 'SAMP-GEN-05', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(136, 'SAMP-GEN-06', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(137, 'SAMP-GEN-07', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(138, 'SAMP-GEN-08', 'Routine Bloodwork', 'Routine check. No new mutations.'),
(139, 'SAMP-GEN-09', 'Routine Bloodwork', 'Routine check. No new mutations.'),
(140, 'SAMP-GEN-10', 'Routine Bloodwork', 'Routine check. No new mutations.'),
(141, 'SAMP-GEN-11', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(142, 'SAMP-GEN-12', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(143, 'SAMP-GEN-13', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(144, 'SAMP-GEN-14', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(145, 'SAMP-GEN-15', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(146, 'SAMP-GEN-16', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(147, 'SAMP-GEN-17', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(148, 'SAMP-GEN-18', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(149, 'SAMP-GEN-19', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(150, 'SAMP-GEN-20', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(151, 'SAMP-GEN-21', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(152, 'SAMP-GEN-22', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(153, 'SAMP-GEN-23', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(154, 'SAMP-GEN-24', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(155, 'SAMP-GEN-25', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(156, 'SAMP-GEN-26', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(157, 'SAMP-GEN-27', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(158, 'SAMP-GEN-28', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(159, 'SAMP-GEN-29', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(160, 'SAMP-GEN-30', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),

-- 6. ROUTINE BLOODWORK - GROUP B (161-200)
(161, 'SAMP-GEN-31', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(162, 'SAMP-GEN-32', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(163, 'SAMP-GEN-33', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(164, 'SAMP-GEN-34', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(165, 'SAMP-GEN-35', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(166, 'SAMP-GEN-36', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(167, 'SAMP-GEN-37', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(168, 'SAMP-GEN-38', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(169, 'SAMP-GEN-39', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(170, 'SAMP-GEN-40', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(171, 'SAMP-GEN-41', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(172, 'SAMP-GEN-42', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(173, 'SAMP-GEN-43', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(174, 'SAMP-GEN-44', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(175, 'SAMP-GEN-45', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(176, 'SAMP-GEN-46', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(177, 'SAMP-GEN-47', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(178, 'SAMP-GEN-48', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(179, 'SAMP-GEN-49', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(180, 'SAMP-GEN-50', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(181, 'SAMP-GEN-51', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(182, 'SAMP-GEN-52', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(183, 'SAMP-GEN-53', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(184, 'SAMP-GEN-54', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(185, 'SAMP-GEN-55', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(186, 'SAMP-GEN-56', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(187, 'SAMP-GEN-57', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(188, 'SAMP-GEN-58', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(189, 'SAMP-GEN-59', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(190, 'SAMP-GEN-60', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(191, 'SAMP-GEN-61', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(192, 'SAMP-GEN-62', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(193, 'SAMP-GEN-63', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(194, 'SAMP-GEN-64', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(195, 'SAMP-GEN-65', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(196, 'SAMP-GEN-66', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(197, 'SAMP-GEN-67', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(198, 'SAMP-GEN-68', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(199, 'SAMP-GEN-69', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.'),
(200, 'SAMP-GEN-70', 'Routine Bloodwork', 'Marker Positive. Standard 828 profile.');

-- ========================================================
-- TABLE: IS_RELATED_TO
-- Relationship: Passenger (M) <-> Non-Passenger (N)
-- Logic: 40+ Tuples covering Family, Romance, Work, Enemies
-- ========================================================

INSERT INTO IS_RELATED_TO (Passenger_ID, Non_Passenger_ID, Relationship_Type) VALUES
-- 1. THE STONE FAMILY CORE (The strongest bonds)
(101, 201, 'Husband'),          -- Ben -> Grace Stone
(101, 202, 'Father'),           -- Ben -> Olive Stone
(101, 203, 'Father'),           -- Ben -> Eden Stone
(101, 204, 'Son'),              -- Ben -> Steve Stone
(101, 205, 'Son'),              -- Ben -> Karen Stone
(103, 201, 'Son'),              -- Cal -> Grace Stone
(103, 202, 'Twin Brother'),     -- Cal -> Olive Stone (Technically twins despite age gap)
(103, 203, 'Brother'),          -- Cal -> Eden Stone
(103, 204, 'Grandson'),         -- Cal -> Steve Stone
(103, 205, 'Grandson'),         -- Cal -> Karen Stone
(102, 204, 'Daughter'),         -- Michaela -> Steve Stone
(102, 205, 'Daughter'),         -- Michaela -> Karen Stone
(103, 206, 'Nephew'),           -- Cal -> Tarik Mullins
(101, 206, 'Brother-in-Law'),   -- Ben -> Tarik Mullins

-- 2. THE LOVE TRIANGLE & EXTENDED KIN (Mick, Jared, Zeke)
(102, 217, 'Ex-Fiance'),        -- Michaela -> Jared Vasquez
(102, 212, 'Wife'),             -- Michaela -> Zeke Landon
(102, 208, 'Best Friend'),      -- Michaela -> Lourdes Vasquez
(102, 211, 'Best Friend'),      -- Michaela -> Evie Beverly (The guilt connection)
(102, 210, 'Caretaker'),        -- Michaela -> Beverly Beverly (Took her in)
(103, 212, 'Best Friend'),      -- Cal -> Zeke Landon (Connected by Callings)
(102, 225, 'Ex-Daughter-in-Law'), -- Michaela -> Priscilla Vasquez (Jared's mom)

-- 3. THE SCIENTIFIC & INVESTIGATIVE TEAMS
(104, 226, 'Strategic Partner'), -- Saanvi -> Robert Vance (The "A-Team")
(101, 226, 'Strategic Partner'), -- Ben -> Robert Vance
(104, 236, 'Colleague'),        -- Saanvi -> Aria Gupta (Eureka)
(104, 237, 'Colleague'),        -- Saanvi -> Troy Davis
(104, 238, 'Colleague'),        -- Saanvi -> Cooper Jones
(104, 235, 'Victim'),           -- Saanvi -> The Major (Kathryn Fitz)
(101, 231, 'Adversary'),        -- Ben -> Director Zimmer (The Registry)

-- 4. ROMANCE & DRAMA
(109, 202, 'Boyfriend'),        -- TJ Morrison -> Olive Stone
(101, 207, 'Rival'),            -- Ben -> Danny Mendoza (Grace's partner during 5 years)
(103, 207, 'Step-Son Figure'),  -- Cal -> Danny Mendoza
(102, 252, 'Friend'),           -- Michaela -> Sarah Fitz (Before truth revealed)
(107, 252, 'Secret Enemy'),     -- Saanvi -> Sarah Fitz (Killed her mother)

-- 5. THE ANTAGONISTS (Angelina & The X-ers)
(112, 248, 'Daughter'),         -- Angelina -> Kenneth Meyer
(112, 249, 'Daughter'),         -- Angelina -> Noelle Meyer
(112, 203, 'Kidnapper'),        -- Angelina -> Eden Stone (Guardian figure in her mind)
(101, 243, 'Target'),           -- Ben -> Simon White (X-er Leader)
(102, 246, 'Target'),           -- Michaela -> Billy McPherson (X-er Thug)

-- 6. LAW ENFORCEMENT HIERARCHY
(102, 219, 'Subordinate'),      -- Michaela -> Captain Bowers
(102, 220, 'Subordinate'),      -- Michaela -> Captain Riojas
(102, 218, 'Partner'),          -- Michaela -> Drea Mikami

-- 7. MINOR & SPIRITUAL CONNECTIONS
(117, 253, 'Father'),           -- Radd Campbell -> Adio Campbell
(121, 280, 'Descendant'),       -- Henry Kim -> Yusuv Al-Zuras (Dragon connection)
(101, 280, 'Intellectual Successor'), -- Ben -> Yusuv Al-Zuras
(109, 251, 'Academic Rival'),   -- TJ -> Levi Meek (Both interested in Olive/Al-Zuras)
(106, 254, 'Cousin');           -- Bethany -> Courtney Landon (Hypothetical link to connect characters)

-- ========================================================
-- TABLE: MONITORS
-- Relationship: Agency (M) <-> Passenger (N)
-- Logic: 40+ Tuples (NSA Targets, Major's Victims, Registry List)
-- ========================================================

INSERT INTO MONITORS (Agency_ID, Passenger_ID) VALUES
-- 1. THE NSA WATCHLIST (Director Vance - Season 1)
(1, 101), -- Ben Stone (High priority investigator)
(1, 102), -- Michaela Stone (Law enforcement risk)
(1, 107), -- Saanvi Bahl (Medical anomaly monitoring)
(1, 104), -- Bill Daly (Flight risk/Conspiracy theorist)
(1, 113), -- Autumn Cox (Double agent monitoring)
(1, 110), -- Adrian Shannon (Cult leader/Public disorder risk)
(1, 111), -- Eagan Tehrani (Intellectual threat/Memory)

-- 2. THE MAJOR'S FACTION (Targeted Experiments - Season 2)
(2, 103), -- Cal Stone (Target #1: "The Holy Grail")
(2, 107), -- Saanvi Bahl (Targeted for her DNA research/Elimination)
(2, 118), -- Marko Valeriev (Test Subject: Induced shared callings)
(2, 108), -- Fiona Clarke (Targeted for neural connection theories)
(2, 113), -- Autumn Cox (Asset/Mole used to track others)
(2, 121), -- Henry Kim (Targeted for eventual execution/testing)
(2, 101), -- Ben Stone (Monitored due to shared "Sinking Ship" calling)
(2, 102), -- Michaela Stone (Monitored due to shared callings)
(2, 109), -- TJ Morrison (Monitored for "Peacock" shared calling research)

-- 3. THE SINGULARITY PROJECT (Specific Lab Subjects)
(4, 118), -- Marko Valeriev (Physical experiments)
(4, 108), -- Fiona Clarke (Neuro-simulations)
(4, 104), -- Bill Daly (Cockpit simulation experiments)

-- 4. THE 828 REGISTRY (Totalitarian Surveillance - Season 4)
-- They monitored everyone, but these were the "Non-Compliant" or High Risk list
(3, 101), -- Ben Stone (Detained/Non-compliant leader)
(3, 102), -- Michaela Stone (Fugitive)
(3, 103), -- Cal Stone (Using alias "Gabriel")
(3, 107), -- Saanvi Bahl (Forced to work for them)
(3, 109), -- TJ Morrison (Monitored upon return from Egypt)
(3, 110), -- Adrian Shannon (Harboring fugitives)
(3, 111), -- Eagan Tehrani (Prisoner/Informant)
(3, 112), -- Angelina Meyer (Public Enemy #1)
(3, 114), -- Paul Santino (Domestic threat)
(3, 115), -- Randall Burr (Weapons threat)
(3, 116), -- Astrid Hagedorn (Medical dependent)
(3, 117), -- Radd Campbell (Civilian check-ins)
(3, 119), -- Anna Ross (Harboring fugitives)
(3, 122), -- Kyle Boyd (Indigenous passenger monitoring)

-- 5. BACKGROUND CHECKS (The Registry's Standard List)
-- Monitoring background passengers to ensure they don't travel
(3, 131), (3, 132), (3, 133), (3, 134), (3, 135),
(3, 136), (3, 137), (3, 138), (3, 139), (3, 140),
(3, 141), (3, 142), (3, 143), (3, 144), (3, 145);

-- ========================================================
-- TABLE: EXPERIENCES
-- Relationship: Passenger (M) <-> Calling (N)
-- Logic: Mapping passengers to the callings they experienced
-- Note: Some callings are SHARED by multiple passengers
-- ========================================================

INSERT INTO EXPERIENCES (Passenger_ID, Calling_ID) VALUES
-- 1. MICHAELA'S CALLINGS (The most prolific receiver)
(102, 1),  -- "Slower" - Her first calling
(102, 2),  -- "Set them free" - The dogs/girls
(102, 5),  -- "Angel of the Waters"
(102, 11), -- "Stop him" - The Wolf/Bank robbery
(102, 19), -- "Help me" - Bridge jumper
(102, 36), -- "All Good Things" - Her actual first calling
(102, 49), -- "Hold Him" - Restraining suspect

-- 2. BEN STONE'S CALLINGS (The investigator)
(101, 3),  -- "It's all connected"
(101, 42), -- "The Starry Night" - Gemini constellation
(101, 43), -- "The Beating Heart" - Transplant patient
(101, 28), -- "Find the Stone" - Omega Sapphire

-- 3. CAL STONE'S CALLINGS (The Prophet/Holy Grail)
(103, 3),  -- "It's all connected" (shared with Ben)
(103, 8),  -- "The Blizzard" - Freezing sensation
(103, 13), -- "Save the passengers" - Younger Cal
(103, 20), -- "Follow the Glow"
(103, 41), -- "The Spiderweb" - Power lines map
(103, 46), -- "Rugby the Dog"

-- 4. SAANVI'S CALLINGS (The scientist)
(107, 7),  -- "U.V." - Warehouse rescue
(107, 31), -- "We are the same" - Divine consciousness

-- 5. SHARED CALLINGS (Multiple passengers experiencing the same vision)
-- "Dark Lightning" - Shared by Daly and Fiona
(104, 10), -- Captain Daly
(108, 10), -- Fiona Clarke

-- "Al-Zuras Ship" - Shared by Ben, Mick, Saanvi, Zeke (Non-Passenger 212)
(101, 17), -- Ben Stone
(102, 17), -- Michaela Stone
(107, 17), -- Saanvi Bahl

-- "Sinking Ship" - WARNING: Shared calling (critical for Query 5)
(101, 22), -- Ben Stone
(102, 22), -- Michaela Stone
(103, 22), -- Cal Stone
(107, 22), -- Saanvi Bahl

-- "The Peacock" - Shared resurrection symbol
(101, 12), -- Ben
(102, 12), -- Michaela
(109, 12), -- TJ Morrison

-- "The Burning Plane" - Shared death date premonition
(101, 14), -- Ben
(102, 14), -- Michaela
(107, 14), -- Saanvi
(110, 14), -- Adrian Shannon

-- "The Volcano" - Apocalyptic shared vision
(101, 26), -- Ben
(102, 26), -- Michaela
(103, 26), -- Cal
(107, 26), -- Saanvi
(109, 26), -- TJ
(110, 26), -- Adrian

-- "The Scales" - Final judgment (shared by all surviving passengers)
(101, 34), -- Ben
(102, 34), -- Michaela
(103, 34), -- Cal
(107, 34), -- Saanvi
(109, 34), -- TJ
(110, 34), -- Adrian
(111, 34), -- Eagan
(116, 34), -- Astrid
(117, 34), -- Radd

-- 6. CAPTAIN DALY'S OBSESSION
(104, 37), -- "Silver Dragon" - 16th century connection

-- 7. ADRIAN'S DARK CALLINGS
(110, 38), -- "Falling" - Belief callings are traps

-- 8. EAGAN'S SELFISH CALLINGS
(111, 48), -- "Open the Gate" - Used for personal gain

-- 9. TJ MORRISON (The researcher)
(109, 18), -- "The Phoenix"
(109, 15), -- "Bring him back" - About himself

-- 10. ANGELINA'S FALSE CALLINGS (Delusional)
(112, 32), -- "Fake Grace" - Sapphire-generated
(112, 33), -- "Fake Evie" - Sapphire-generated
(112, 24), -- "Lion Roaring" - Darker testing

-- 11. OTHER PASSENGERS' INDIVIDUAL CALLINGS
(113, 6),  -- Autumn Cox - "Don't lose him" (Harvey Stein)
(123, 4),  -- Kelly Taylor - "Own your truth"
(118, 25), -- Marko Valeriev - "Burning Hand" (Experiments)
(121, 21), -- Henry Kim - "The Three Shadows"
(114, 23), -- Paul Santino - "Eyes Bleeding"
(115, 39), -- Randall Burr - "River of Blood"
(116, 16), -- Astrid Hagedorn - "The Gargoyle" (Grace's calling but Astrid saw it too)

-- 12. BACKGROUND PASSENGERS (Minor callings)
(119, 30), -- Anna Ross - "Save her" (Eden rescue)
(117, 11), -- Radd Campbell - "Stop him" (Shared with Michaela)
(122, 44), -- Kyle Boyd - "Locust Swarm"
(130, 27), -- Rachel Hall - "Blood on the Tailfin"
(131, 27), -- Hannah Hall - "Blood on the Tailfin" (Sisters share it)

-- 13. ADDITIONAL SHARED "PEACOCK" EXPERIENCES (Resurrection theme)
(104, 12), -- Captain Daly (saw it before vanishing)
(108, 12), -- Fiona Clarke
(112, 12), -- Angelina (used to justify her delusion)

-- 14. THE GRIM REAPER CALLING (Death Date stalking)
(101, 35), -- Ben
(102, 35), -- Michaela
(103, 35), -- Cal
(107, 35), -- Saanvi
(110, 35), -- Adrian
(111, 35), -- Eagan
(112, 35); -- Angelina

-- ========================================================
-- TABLE: INVOLVES
-- Relationship: Event (M) <-> Passenger (N)
-- Logic: 80+ Tuples mapping passengers to their specific storylines
-- ========================================================

INSERT INTO INVOLVES (Event_ID, Passenger_ID) VALUES
-- 1. FLIGHT 828 DEPARTURE (Event 1) & RETURN (Event 2)
-- The core group involved in the inciting incident
(1, 101), (1, 102), (1, 103), (1, 104), (1, 105), (1, 106), (1, 107), (1, 108), (1, 109), (1, 110),
(2, 101), (2, 102), (2, 103), (2, 104), (2, 105), (2, 106), (2, 107), (2, 108), (2, 109), (2, 110),

-- 2. THE NIGHTCLUB FIRE (Event 5)
-- Passengers who were present or saved lives
(5, 101), -- Ben (Rescued TJ)
(5, 102), -- Michaela (Led the rescue)
(5, 109), -- TJ Morrison (Found under the beam)
(5, 111), -- Eagan (Saved people selfishly)
(5, 115), -- Randall (Present at the scene)
(5, 114), -- Paul Santino (Present)

-- 3. THE DETENTION CENTER LOCKDOWN (Event 16)
-- The Registry detained almost everyone in Season 4
(16, 101), (16, 107), (16, 109), (16, 110), (16, 111), -- Ben, Saanvi, TJ, Adrian, Eagan
(16, 113), (16, 114), (16, 115), (16, 116), (16, 117), -- Autumn, Paul, Randall, Astrid, Radd
(16, 118), (16, 119), (16, 120), (16, 122), (16, 131), -- Marko, Anna, Violet, Kyle, Charlie

-- 4. THE MAJOR'S ASSASSINATION (Event 8)
(8, 107), -- Saanvi (The killer)
(8, 101), -- Ben (Covered it up)

-- 5. DISCOVERY OF THE TAILFIN (Event 9)
(9, 101), -- Ben (Led the mission)
(9, 107), -- Saanvi (Scientific analysis)
(9, 103), -- Cal (Connected to it)
(9, 111), -- Eagan (Tried to sabotage/steal info)

-- 6. CAL'S DISAPPEARANCE (Event 13)
(13, 103), -- Cal (Touched it)
(13, 101), -- Ben (Witnessed it)

-- 7. DALY'S UNAUTHORIZED DEPARTURE (Event 21)
(21, 104), -- Bill Daly (Pilot)
(21, 108), -- Fiona Clarke (Kidnapped Passenger)

-- 8. THE FINAL JUDGMENT (Event 17)
-- The survivors facing the scale
(17, 101), (17, 102), (17, 103), (17, 107), -- The Stones & Saanvi
(17, 111), (17, 110), (17, 112), -- Eagan, Adrian, Angelina (The struggle)
(17, 114), (17, 115), -- Paul, Randall (Judged)

-- 9. ANGELINA'S CRIMES (Events 12, 20, 36)
(12, 112), -- Angelina (Killed Grace)
(36, 112), -- Angelina (Kidnapped Eden)
(36, 101), -- Ben (Chased her)
(20, 112), -- Angelina (False Prophecy)
(20, 113), -- Autumn Cox (Accomplice)

-- 10. SAANVI'S BREAKTHROUGHS (Events 19, 28)
(19, 107), -- Saanvi (DNA marker discovery)
(28, 107), -- Saanvi (Self-experimentation)

-- 11. MICHAELA'S CASES (Events 3, 24, 30)
(3, 123),  -- Kelly Taylor (The victim)
(3, 102),  -- Michaela (The investigator)
(24, 102), -- Michaela (Bank Heist/Wolf)
(30, 102), -- Michaela (Jared's Proposal memory)

-- 12. SPECIFIC PASSENGER ARCS
(22, 106), -- Stowaway (Bethany Collins involved)
(23, 117), -- Son Exoneration (Radd Campbell involved)
(29, 102), -- Steve Stone's Funeral (Mick grief)
(29, 101), -- Steve Stone's Funeral (Ben grief)
(31, 101), -- Ben Hired at Astoria (Ben)
(31, 109), -- Ben Hired at Astoria (TJ as student)
(35, 118), -- Major's Testing (Marko involved)
(35, 107), -- Major's Testing (Saanvi involved)
(25, 103), -- Cal's Cancer Remission (Cal)
(25, 107); -- Cal's Cancer Remission (Saanvi confirmed it)

-- ========================================================
-- TABLE: INVESTIGATES
-- Relationship: Agency (M) <-> Passenger (N) <-> Event (P)
-- Logic: 40+ Tuples tracking specific case files and manhunts
-- ========================================================

INSERT INTO INVESTIGATES (Agency_ID, Passenger_ID, Event_ID) VALUES
-- 1. THE INITIAL RETURN (NSA Investigating the Arrival)
-- Vance and the NSA grilling the passengers immediately after landing
(1, 101, 2), -- NSA investigates Ben regarding Flight 828 Return
(1, 102, 2), -- NSA investigates Michaela regarding Flight 828 Return
(1, 104, 2), -- NSA investigates Bill Daly (Pilot) regarding Flight 828 Return
(1, 105, 2), -- NSA investigates Amuta (Co-Pilot) regarding Flight 828 Return
(1, 108, 2), -- NSA investigates Fiona Clarke regarding Flight 828 Return
(8, 101, 2), -- FBI investigates Ben regarding Flight 828 Return (Joint Task Force)

-- 2. THE MURDER OF KELLY TAYLOR (NYPD & NSA)
-- The first dead passenger sparked massive interest
(7, 123, 3), -- NYPD (Jared) investigates Kelly Taylor regarding her Murder
(1, 123, 3), -- NSA investigates Kelly Taylor regarding her Murder (National security risk)

-- 3. THE EXPLOSION ON THE TARMAC (NSA)
-- When the plane blew up, NSA investigated everyone near it
(1, 101, 27), -- NSA investigates Ben regarding Explosion of the Plane
(1, 104, 27), -- NSA investigates Bill Daly regarding Explosion of the Plane
(1, 113, 27), -- NSA investigates Autumn Cox regarding Explosion of the Plane

-- 4. DALY'S UNAUTHORIZED DEPARTURE (The Stolen Plane)
-- A massive manhunt for the pilot and the kidnapped scientist
(1, 104, 21), -- NSA investigates Bill Daly regarding Daly's Departure
(1, 108, 21), -- NSA investigates Fiona Clarke regarding Daly's Departure
(9, 104, 21), -- DHS investigates Bill Daly regarding Daly's Departure

-- 5. THE NIGHTCLUB FIRE (NYPD Arson Investigation)
-- Passengers were initially suspects before being hailed as heroes
(7, 101, 5), -- NYPD investigates Ben regarding Nightclub Fire
(7, 111, 5), -- NYPD investigates Eagan regarding Nightclub Fire (Suspected looting/arson)

-- 6. THE MAJOR'S ASSASSINATION (NYPD & Black Ops)
-- A high-stakes murder investigation that nearly caught Saanvi
(7, 107, 8), -- NYPD (Vance cover-up) investigates Saanvi regarding Major's Assassination
(2, 107, 8), -- Major's Faction investigates Saanvi regarding Major's Assassination (Retaliation)
(7, 101, 8), -- NYPD investigates Ben regarding Major's Assassination (Accessory)

-- 7. THE TAILFIN & EUREKA (Science Division)
-- Investigating the object and the people connected to it
(5, 101, 9), -- Eureka investigates Ben regarding Discovery of Tailfin
(5, 103, 9), -- Eureka investigates Cal regarding Discovery of Tailfin (He drew it)
(5, 107, 9), -- Eureka investigates Saanvi regarding Discovery of Tailfin (Analysis)
(5, 111, 9), -- Eureka investigates Eagan regarding Discovery of Tailfin (Sabotage attempt)

-- 8. THE SEARCH FOR THE HOLY GRAIL (The Major)
-- The Major's specific hunt for Cal
(2, 103, 26), -- Major's Faction investigates Cal regarding Search for the Grail
(2, 101, 26), -- Major's Faction investigates Ben regarding Search for the Grail

-- 9. GRACE STONE'S MURDER & EDEN'S KIDNAPPING (NYPD & Registry)
-- The 2-year manhunt for Angelina
(7, 112, 12), -- NYPD investigates Angelina regarding Grace Stone Murder
(3, 112, 12), -- Registry investigates Angelina regarding Grace Stone Murder
(7, 112, 36), -- NYPD investigates Angelina regarding Angelina Kidnaps Eden
(3, 101, 14), -- Registry investigates Ben regarding Eden Stone Rescue (Vigilantism)

-- 10. THE REGISTRY CRACKDOWN (Detention Center Era)
-- Investigating passengers for "Non-Compliance" and the "False Prophecy"
(3, 112, 20), -- Registry investigates Angelina regarding False Prophecy
(3, 110, 20), -- Registry investigates Adrian regarding False Prophecy (Harboring her)
(3, 111, 16), -- Registry investigates Eagan regarding Detention Center Lockdown (Intel gathering)
(3, 109, 18), -- Registry investigates TJ regarding Al-Zuras Investigation (Confiscating research)
(3, 104, 28), -- Registry investigates Saanvi regarding Self-Experimentation (Illegal medical practice)
(3, 118, 35), -- Registry investigates Marko regarding Major's Testing (Evaluating threat level)

-- 11. MISCELLANEOUS INVESTIGATIONS
(7, 117, 23), -- NYPD investigates Radd regarding Son's Exoneration (Re-opening the case)
(1, 107, 19), -- NSA investigates Saanvi regarding DNA Breakthrough (Classified intel)
(3, 113, 20), -- Registry investigates Autumn Cox regarding False Prophecy (Accomplice)
(5, 103, 13); -- Eureka investigates Cal regarding Cal Stone Disappearance (Where did he go?)

-- ========================================================
-- TABLE: LINKS (Quaternary Relationship)
-- Connects: Passenger + Clue + Event + Historical Object
-- Logic: 70 Tuples representing the "Murder Board" connections
-- ========================================================

INSERT INTO LINKS (Passenger_ID, Clue_Calling_ID, Clue_Number, Event_ID, Object_ID) VALUES
-- 1. THE AL-ZURAS / SILVER DRAGON CONNECTION (Ben, TJ, Olive's Research)
-- Linking the Woodcut (Clue 15), Compass Spin (Clue 17), & Tarot (Clue 19) to the Journal (Obj 1)
(101, 17, 15, 18, 1), -- Ben links Woodcut -> Journal -> Al-Zuras Investigation
(109, 17, 15, 18, 1), -- TJ links Woodcut -> Journal -> Al-Zuras Investigation
(102, 17, 15, 18, 1), -- Mick links Woodcut -> Journal -> Al-Zuras Investigation
(107, 17, 15, 18, 1), -- Saanvi links Woodcut -> Journal -> Al-Zuras Investigation
(101, 17, 17, 18, 2), -- Ben links Compass Spin -> Silver Compass -> Al-Zuras Investigation
(109, 17, 17, 18, 2), -- TJ links Compass Spin -> Silver Compass -> Al-Zuras Investigation
(104, 17, 17, 21, 2), -- Bill Daly links Compass Spin -> Compass -> His Unauthorized Departure
(109, 20, 19, 18, 9), -- TJ links Tarot Card -> Tarot Deck -> Al-Zuras Investigation
(101, 20, 19, 18, 9), -- Ben links Tarot Card -> Tarot Deck -> Al-Zuras Investigation
(102, 20, 19, 18, 9), -- Mick links Tarot Card -> Tarot Deck -> Al-Zuras Investigation
(103, 20, 19, 13, 9), -- Cal links Tarot Card -> Tarot Deck -> Cal's Disappearance (The World Card)

-- 2. THE OMEGA SAPPHIRE & MASONIC ORDER (Season 4 Arc)
-- Linking Seismic Readings (Clue 32) & Masonic Symbol (Clue 33) to the Sapphire (Obj 4)
(101, 28, 33, 15, 4), -- Ben links Masonic Symbol -> Omega Sapphire -> Sapphire Discovery
(109, 28, 33, 15, 4), -- TJ links Masonic Symbol -> Omega Sapphire -> Sapphire Discovery
(111, 28, 33, 15, 4), -- Eagan links Masonic Symbol -> Omega Sapphire -> Sapphire Discovery (He stole it)
(112, 28, 33, 17, 4), -- Angelina links Masonic Symbol -> Omega Sapphire -> The Final Judgment
(107, 28, 32, 15, 4), -- Saanvi links Seismic Freq -> Omega Sapphire -> Sapphire Discovery
(101, 28, 32, 15, 4), -- Ben links Seismic Freq -> Omega Sapphire -> Sapphire Discovery
(103, 28, 32, 13, 4), -- Cal links Seismic Freq -> Omega Sapphire -> Cal's Disappearance
(110, 28, 33, 20, 4), -- Adrian links Masonic Symbol -> Omega Sapphire -> Angelina's Prophecy
(116, 28, 33, 15, 4), -- Astrid links Masonic Symbol -> Omega Sapphire -> Sapphire Discovery

-- 3. THE TAILFIN & THE ARK (Science Team)
-- Linking Mineral Trail (Clue 18) & Blood (Clue 29) to Tailfin (Obj 10) & Ark (Obj 5)
(107, 20, 18, 9, 5),  -- Saanvi links Mineral Trail -> Ark Fragment -> Tailfin Discovery
(101, 20, 18, 9, 5),  -- Ben links Mineral Trail -> Ark Fragment -> Tailfin Discovery
(102, 20, 18, 9, 5),  -- Mick links Mineral Trail -> Ark Fragment -> Tailfin Discovery
(103, 27, 29, 9, 10), -- Cal links Blood on Tailfin -> The Tailfin -> Tailfin Discovery
(101, 27, 29, 9, 10), -- Ben links Blood on Tailfin -> The Tailfin -> Tailfin Discovery
(107, 27, 29, 9, 10), -- Saanvi links Blood on Tailfin -> The Tailfin -> Tailfin Discovery
(111, 27, 29, 9, 10), -- Eagan links Blood on Tailfin -> The Tailfin -> Tailfin Discovery
(104, 27, 29, 21, 10), -- Daly links Blood on Tailfin -> Tailfin -> His Departure (Vortex)

-- 4. THE DEATH DATE & MAAT (Ancient Egypt)
-- Linking Scales (Clue 37) & Ash (Clue 34) to Papyrus (Obj 7) & Statue (Obj 8)
(109, 34, 37, 17, 7), -- TJ links Feather/Scales -> Papyrus of Maat -> Final Judgment
(102, 34, 37, 17, 7), -- Mick links Feather/Scales -> Papyrus of Maat -> Final Judgment
(101, 34, 37, 17, 8), -- Ben links Feather/Scales -> Statue of Anubis -> Final Judgment
(107, 29, 34, 17, 8), -- Saanvi links Volcanic Ash -> Statue of Anubis -> Final Judgment
(103, 29, 34, 17, 8), -- Cal links Volcanic Ash -> Statue of Anubis -> Final Judgment
(112, 29, 34, 20, 8), -- Angelina links Ash -> Statue of Anubis -> Her False Prophecy
(110, 29, 34, 20, 8), -- Adrian links Ash -> Statue of Anubis -> False Prophecy

-- 5. THE STONE FAMILY MYSTERIES
-- Linking Specific Items to Specific Family Events
(102, 5, 6, 5, 13),   -- Mick links Heart Necklace -> St. Joseph Medallion -> Nightclub Fire
(101, 5, 6, 5, 13),   -- Ben links Heart Necklace -> St. Joseph Medallion -> Nightclub Fire
(103, 46, 45, 1, 11), -- Cal links Dog Collar -> Ben's Glasses -> Flight 828 Departure (Connecting the dates)
(101, 46, 45, 1, 11), -- Ben links Dog Collar -> Ben's Glasses -> Flight 828 Departure
(103, 41, 42, 16, 12), -- Cal links Spiderweb -> Headrest 14A -> Detention Center Lockdown
(101, 41, 42, 16, 12), -- Ben links Spiderweb -> Headrest 14A -> Detention Center Lockdown
(107, 41, 42, 16, 12), -- Saanvi links Spiderweb -> Headrest 14A -> Detention Center Lockdown

-- 6. THE METH HEADS / THREE SHADOWS (Jace, Pete, Kory)
-- Linking Shadows (Clue 23) to the Lake Event
(102, 21, 23, 10, 7), -- Mick links 3 Shadows -> Papyrus (Judgment) -> Meth Head Resurrection
(101, 21, 23, 10, 7), -- Ben links 3 Shadows -> Papyrus -> Meth Head Resurrection
(103, 21, 24, 10, 7), -- Cal links Cloud Drawing -> Papyrus -> Meth Head Resurrection
(111, 21, 23, 10, 7), -- Eagan links 3 Shadows -> Papyrus -> Meth Head Resurrection

-- 7. THE SCIENTIFIC PROOF (Saanvi's Lab)
-- Linking physical evidence to the "Glow" events
(107, 7, 7, 9, 10),   -- Saanvi links UV Print -> Tailfin -> Tailfin Discovery
(107, 26, 30, 9, 5),  -- Saanvi links Seismograph -> Ark Fragment -> Tailfin Discovery
(107, 26, 31, 9, 5),  -- Saanvi links Sulfur Smell -> Ark Fragment -> Tailfin Discovery
(104, 7, 7, 21, 10),  -- Daly links UV Print -> Tailfin -> His Departure

-- 8. MISCELLANEOUS "HIVE MIND" LINKS (Background Passengers helping out)
-- Passengers linking the "It's all connected" phrase to various objects
(113, 3, 4, 2, 1),    -- Autumn links Phrase -> Journal -> 828 Return
(114, 3, 4, 2, 1),    -- Paul links Phrase -> Journal -> 828 Return
(115, 3, 4, 2, 1),    -- Randall links Phrase -> Journal -> 828 Return
(116, 3, 4, 2, 1),    -- Astrid links Phrase -> Journal -> 828 Return
(117, 3, 4, 2, 1),    -- Radd links Phrase -> Journal -> 828 Return
(118, 3, 4, 2, 1),    -- Marko links Phrase -> Journal -> 828 Return
(119, 3, 4, 2, 1),    -- Anna links Phrase -> Journal -> 828 Return
(120, 3, 4, 2, 1),    -- Violet links Phrase -> Journal -> 828 Return
(121, 3, 4, 2, 1),    -- Henry links Phrase -> Journal -> 828 Return
(122, 3, 4, 2, 1),    -- Kyle links Phrase -> Journal -> 828 Return
(131, 3, 4, 2, 1),    -- Charlie links Phrase -> Journal -> 828 Return
(132, 3, 4, 2, 1),    -- Hector links Phrase -> Journal -> 828 Return
(133, 3, 4, 2, 1),    -- George links Phrase -> Journal -> 828 Return
(134, 3, 4, 2, 1),    -- Ilya links Phrase -> Journal -> 828 Return
(135, 3, 4, 2, 1);    -- Yuri links Phrase -> Journal -> 828 Return

-- ========================================================
-- TABLE: UNCOVERS (Quinary Relationship)
-- Connects: Passenger + Clue + Object + Location
-- Logic: 35 Tuples representing major "Eureka!" moments
-- ========================================================

INSERT INTO UNCOVERS (Passenger_ID, Clue_Calling_ID, Clue_Number, Object_ID, Location_ID, Discovery_Date) VALUES
-- 1. THE AL-ZURAS MYSTERY (Season 2)
-- Ben (101) found the Journal (Obj 1) at the Uni (Loc 17) using the Compass Heading (Clue 38)
(101, 37, 38, 1, 17, '2019-05-15'),
-- TJ (109) found the Journal (Obj 1) at the Uni (Loc 17) using the Woodcut (Clue 15)
(109, 17, 15, 1, 17, '2019-05-15'),
-- Olive via TJ (109) found the Compass (Obj 2) at the Stone House (Loc 1) using the Tarot Card (Clue 19)
(109, 20, 19, 2, 1, '2020-03-15'),
-- Ben (101) linked the Compass (Obj 2) to the Ship (Obj 20 - proxy) using the Spinning Needle (Clue 17)
(101, 17, 17, 2, 20, '2020-03-15'),

-- 2. THE OMEGA SAPPHIRE HUNT (Season 4)
-- Eagan (111) found the Sapphire (Obj 4) at the Masonic Temple (Loc 18) using the Symbol (Clue 33)
(111, 28, 33, 4, 18, '2022-11-20'),
-- Ben (101) found the Sapphire (Obj 4) at the Temple (Loc 18) using the Seismic Freq (Clue 32)
(101, 28, 32, 4, 18, '2022-11-20'),
-- Saanvi (107) found the Sapphire (Obj 4) at the Temple (Loc 18) using the Seismic Freq (Clue 32)
(107, 28, 32, 4, 18, '2022-11-20'),
-- Angelina (112) stole the Sapphire (Obj 4) at the School (Loc 17) using the Lava/Ash (Clue 34)
(112, 29, 34, 4, 17, '2022-12-01'),
-- Astrid (116) helped find the Sapphire (Obj 4) using her Anxiety/Frequency (Clue 32)
(116, 28, 32, 4, 18, '2022-11-20'),

-- 3. THE TAILFIN & THE ARK (Season 3)
-- Ben (101) found the Tailfin (Obj 10) at the Lake (Loc 13) using the Glowing Hand (Clue 28)
(101, 25, 28, 10, 13, '2020-11-04'),
-- Saanvi (107) found the Tailfin (Obj 10) at the Ocean/Lake (Loc 13) using the Mineral Trail (Clue 18)
(107, 20, 18, 10, 13, '2020-11-04'),
-- Cal (103) found the Tailfin (Obj 10) at Eureka (Loc 5) using the Blood (Clue 29)
(103, 27, 29, 10, 5, '2021-05-20'),
-- Saanvi (107) found the Driftwood/Ark (Obj 5) at the Schist Rock (Loc 25) using Seismic Readings (Clue 30)
(107, 26, 30, 5, 25, '2021-03-10'),
-- Troy (via Saanvi 107) linked the Driftwood (Obj 5) at Eureka (Loc 5) using Sulfur Smell (Clue 31)
(107, 26, 31, 5, 5, '2021-03-12'),

-- 4. THE STONE FAMILY MYSTERIES (Season 1)
-- Mick (102) found the St. Joseph Medallion (Obj 13) at the Fire (Loc 12) using the Heartbeat (Clue 48)
(102, 43, 48, 13, 12, '2019-01-05'),
-- Ben (101) found the Medallion (Obj 13) at the Fire (Loc 12) using the Heart Necklace (Clue 6)
(101, 5, 6, 13, 12, '2019-01-05'),
-- Cal (103) found the Glasses (Obj 11) at the Airport (Loc 16) using the Dog Collar (Clue 45)
(103, 46, 45, 11, 16, '2018-11-25'),
-- Ben (101) found the Glasses (Obj 11) at the Boiler Room (Loc 8) using the Dog Collar (Clue 45)
(101, 46, 45, 11, 8, '2018-11-25'),

-- 5. THE MAAT JUDGMENT (Season 4 Finale)
-- Ben (101) found the Statue of Anubis (Obj 8) at the Compound (Loc 15) using the Ash (Clue 34)
(101, 29, 34, 8, 15, '2023-04-10'),
-- Mick (102) found the Papyrus (Obj 7) at the Stone House (Loc 1) using the Scales (Clue 37)
(102, 34, 37, 7, 1, '2024-06-01'),
-- TJ (109) found the Papyrus (Obj 7) at the Uni (Loc 17) using the Scales (Clue 37)
(109, 34, 37, 7, 17, '2024-06-01'),

-- 6. THE METH HEADS (Season 3)
-- Mick (102) found the Papyrus (Obj 7 - proxy for ancient parchment) at the Lake (Loc 13) using Shadows (Clue 23)
(102, 21, 23, 7, 13, '2021-03-15'),
-- Ben (101) found the drawing (Obj 3) at the Station (Loc 19) using Water Leaking (Clue 25)
(101, 22, 25, 3, 19, '2021-03-20'),

-- 7. CAL'S VISIONARY DISCOVERIES
-- Cal (103) found the Tailfin (Obj 10) at the Detention Center (Loc 7) using the Spiderweb (Clue 42)
(103, 41, 42, 10, 7, '2018-12-15'),
-- Cal (103) found the Seat Headrest (Obj 12) at Eureka (Loc 5) using the Glow (Clue 18)
(103, 20, 18, 12, 5, '2021-10-30'),

-- 8. THE VANCE INVESTIGATION
-- Saanvi (107) found the Tablet of Law (Obj 6) at the Mansion (Loc 10) using the DNA Sequence (Clue 29 - blood proxy)
(107, 27, 29, 6, 10, '2020-08-30'),
-- Ben (101) found the Tablet of Law (Obj 6) at Eureka (Loc 5) using the UV Print (Clue 7)
(101, 7, 7, 6, 5, '2020-09-01'),

-- 9. THE FINAL DAYS
-- Adrian (110) found the Statue (Obj 8) at the Compound (Loc 15) using the Ash (Clue 34)
(110, 29, 34, 8, 15, '2024-01-01'),
-- Angelina (112) found the Scroll (Obj 7) at the Compound (Loc 15) using the Ribbon (Clue 36)
(112, 30, 36, 7, 15, '2023-05-05'),
-- Eagan (111) found the Compass (Obj 2) at the Detention Center (Loc 7) using the Key (Clue 49)
(111, 48, 49, 2, 7, '2023-12-01'),
-- Daly (104) found the Tailfin (Obj 10) at the Vortex (Loc 20) using the Barometric Pressure (Clue 9)
(104, 10, 9, 10, 20, '2019-01-28'),
-- Amuta (105) found the Logbook (Obj 1) at the Airport (Loc 11) using the Light (Clue 46)
(105, 50, 46, 1, 11, '2018-11-04'),
-- Bethany (106) found the Blanket (Obj 12 proxy) at the Boiler Room (Loc 8) using the Fence (Clue 3)
(106, 2, 3, 12, 8, '2018-11-07'),
-- Radd (117) found the Compass (Obj 14) at the Precinct (Loc 19) using the Metronome (Clue 12)
(117, 11, 12, 14, 19, '2019-04-04');