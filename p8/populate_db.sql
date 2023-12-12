-- Data to be inserted into 'label' table:

INSERT INTO label VALUES ('ANJU', 'Anjunabeats', 'London');
INSERT INTO label VALUES ('ANJD', 'Anjunadeep', 'London');
INSERT INTO label VALUES ('ISLD', 'Island Records', 'London');
INSERT INTO label VALUES ('MDZO', 'Mad Zoo', 'Los Angeles');
INSERT INTO label VALUES ('ARTU', 'Listen Up', 'Los Angeles');
INSERT INTO label VALUES ('ASWK', 'Astralwerks', 'Los Angeles');
INSERT INTO label VALUES ('YOTK', 'Young Turks', 'LondonUK');
INSERT INTO label VALUES ('M5TP', 'Mau5trap Recordings', 'Toronto');
INSERT INTO label VALUES ('INTS', 'Interscope Records', 'SantaMonica');
INSERT INTO label VALUES ('ULTR', 'Ultra Records', 'NewYork');
INSERT INTO label VALUES ('NJTN', 'NinjaTune', 'LosAngeles');
INSERT INTO label VALUES ('FHUO', 'FHUO Records', 'Paris');
INSERT INTO label VALUES ('CLPP', 'clipp.art', 'Melbourne');
INSERT INTO label VALUES ('BRFD', 'Brainfeeder', 'LosAngeles');
INSERT INTO label VALUES ('ARMD', 'Armada', 'Amsterdam');
INSERT INTO label VALUES ('SPNR', 'Spinnin Records', 'Hilversum');
INSERT INTO label VALUES ('VRGN', 'Virgin', 'London');
INSERT INTO label VALUES ('PRLP', 'Parlophone', 'London');
INSERT INTO label VALUES ('ENPG', 'EnhancedProgressive', 'London');
INSERT INTO label VALUES ('OWSL', 'OWSLA', 'LosAngeles');
INSERT INTO label VALUES ('RANS', 'R & S Records', 'London');
INSERT INTO label VALUES ('CLMB', 'Columbia', 'London');


-- Data to be inserted into 'artist' table:

INSERT INTO artist VALUES ('MTZ01', 'Mat Zo');
INSERT INTO artist VALUES ('RFF01', 'Ross from Friends');
INSERT INTO artist VALUES ('TKM01', 'Tokimonsta');
INSERT INTO artist VALUES ('PHJ01', 'Park Hye Jin');
INSERT INTO artist VALUES ('CVH01', 'Calvin Harris');
INSERT INTO artist VALUES ('PRB01', 'Porter Robinson');
INSERT INTO artist VALUES ('TMM01', 'The M Machine');
INSERT INTO artist VALUES ('WGG01', 'Wolfgang Gartner');
INSERT INTO artist VALUES ('PGG01', 'Peggy Gou');
INSERT INTO artist VALUES ('SBT01', 'SBTRKT');
INSERT INTO artist VALUES ('BNB01','Bonobo');
INSERT INTO artist VALUES ('LMT01', 'Lemaitre');
INSERT INTO artist VALUES ('DSC01', 'Disclosure');
INSERT INTO artist VALUES ('PVZ01', 'Parviz');
INSERT INTO artist VALUES ('SKR01', 'Skrillex');
INSERT INTO artist VALUES ('ZDD01', 'Zedd');
INSERT INTO artist VALUES ('DFP01', 'Daft Punk');
INSERT INTO artist VALUES ('JST01', 'Justice');
INSERT INTO artist VALUES ('MBT01', 'Moon Boots');
INSERT INTO artist VALUES ('MDN01', 'Madeon');
INSERT INTO artist VALUES ('ADB01', 'Andrew Bayer');
INSERT INTO artist VALUES ('LNE01', 'Lone');
INSERT INTO artist VALUES ('ZNK01', 'Zaid Khatib');

-- Data to be inserted into 'album' table:

INSERT INTO album VALUES ('ANJLP036', 'Damage Control', 'MTZ01', 'ANJU', '2013-11-05');
INSERT INTO album VALUES ('ANJLP085', 'Illusion of Depth', 'MTZ01', 'ANJU', '2020-10-09');
INSERT INTO album VALUES ('ANJCD055V', 'First Landing', 'MBT01', 'ANJD', '2017-09-19');
INSERT INTO album VALUES ('ANJLP07', 'Bimini Road', 'MBT01', 'ANJD', '2019-09-06');
INSERT INTO album VALUES ('ANJCD025', 'Its Artificial', 'ADB01', 'ANJU', '2011-07-25');
INSERT INTO album VALUES ('ANJLP034', 'If It Were You, Wed Never Leave', 'ADB01', 'ANJU', '2013-04-22');
INSERT INTO album VALUES ('IR00602', 'Settle', 'DSC01', 'ISLD', '2013-05-30');
INSERT INTO album VALUES ('ZEN12483', 'Once', 'PGG01', 'NJTN', '2018-03-02');
INSERT INTO album VALUES ('CLIPPV002', 'If U Want It', 'PHJ01', 'CLPP', '2019-03-01');
INSERT INTO album VALUES ('MZ009', 'Glare', 'TMM01', 'MDZO', '2017-02-23');
INSERT INTO album VALUES ('MZ001', 'Self Assemble', 'MTZ01', 'MDZO', '2016-03-25');
INSERT INTO album VALUES ('UL2960', 'Weekend in America', 'WGG01', 'ULTR', '2011-09-20');
INSERT INTO album VALUES ('ARD889', '10 Ways to Steal Home Plate', 'WGG01', 'ARMD', '2016-11-01');
INSERT INTO album VALUES ('ARTUP004', 'Midnight Menu', 'TKM01', 'ARTU', '2010-10-19');
INSERT INTO album VALUES ('ZEN140', 'Black Sands', 'BNB01', 'NJTN', '2010-03-29');
INSERT INTO album VALUES ('RS1405', 'Reality Testing', 'LNE01', 'RANS', '2014-06-16');
INSERT INTO album VALUES ('B002002', 'Worlds', 'PRB01', 'ASWK', '2014-08-12');
INSERT INTO album VALUES ('CMB8887', 'Adventure', 'MDN01', 'CLMB', '2015-03-30');
INSERT INTO album VALUES ('ZEN195', 'The North Borders', 'BNB01', 'NJTN', '2013-03-27');
INSERT INTO album VALUES ('INS3745', 'Clarity', 'ZDD01', 'INTS', '2014-02-17');
INSERT INTO album VALUES ('YTDA060', 'SBTRKT', 'SBT01', 'YOTK', '2011-06-27');

-- Data to be inserted into 'track' table:

INSERT INTO track VALUES ('SNG00001', 'Easy', 'MTZ01', 'ANJLP036', 397, 128.0, 'D maj', 'Dance', 'Electro Pop', 'Euphoric', 4);
INSERT INTO track VALUES ('SNG00002', 'The Sky', 'MTZ01', 'ANJLP036', 522, 125.0, 'D maj', 'Trance', 'Trance', 'Intense', 3);
INSERT INTO track VALUES ('SNG00003', 'Colours', 'MTZ01', 'ANJLP085', 346, 125.0, 'C# maj', 'Dance', 'Electro Pop', 'Euphoric', 4);
INSERT INTO track VALUES ('SNG00004', 'Petrushka', 'MTZ01', 'ANJLP085', 352, 128.0, 'B min', 'Trance', 'Trance', 'Intense', 3);
INSERT INTO track VALUES ('SNG00005', 'It Makes You Forget (Itgehane)', 'PGG01', 'ZEN12483', 395, 125.0, 'G min', 'Indie Dance', 'Indie Dance', 'Relaxed', 2);
INSERT INTO track VALUES ('SNG00006', 'ABC', 'PHJ01', 'CLIPPV002', 242, 120.0, 'F# maj', 'Lo-fi', 'Lo-fi', 'Relaxed', 2);
INSERT INTO track VALUES ('SNG00007', 'Space Junk', 'WGG01', 'UL2960', 336, 126.0, 'Gb min', 'Electro House', 'Electro Pop', 'Intense', 4);
INSERT INTO track VALUES ('SNG00008', 'Sad Machine', 'PRB01', 'B002002', 350, 89.0, 'Eb maj', 'Dance', 'Electro Pop', 'Euphoric', 1);
INSERT INTO track VALUES ('SNG00009', 'Clarity', 'ZDD01', 'INS3745', 343, 128.0, 'Ab maj', 'Dance', 'Electro Pop', 'Euphoric', 3);
INSERT INTO track VALUES ('SNG00010', 'Spectrum', 'ZDD01', 'INS3745', 362, 130.0, 'C min', 'Dance', 'Electro Pop', 'Euphoric', 3);
INSERT INTO track VALUES ('SNG00011', 'Youre On (feat. Kyan)', 'MDN01', 'CMB8887', 192, 100.0, 'Bb maj', 'Indie Dance', 'Indie Dance', 'Fun', 5);
INSERT INTO track VALUES ('SNG00012', 'Pay No Mind (feat. Passion Pit)', 'MDN01', 'CMB8887', 249, 112.0, 'Db maj', 'Indie Dance', 'Indie Dance', 'Fun', 3);
INSERT INTO track VALUES ('SNG00013', 'The City', 'MDN01', 'CMB8887', 233, 125.0, 'G min', 'Dance', 'Electro Pop', 'Euphoric', 3);
INSERT INTO track VALUES ('SNG00014', 'I am', 'TMM01', 'MZ009', 295, 112.0, 'Gb min', 'Electronica', 'Electronica', 'Fun', 2);
INSERT INTO track VALUES ('SNG00015', 'We Had it All', 'TMM01', 'MZ009', 213, 100.0, 'C maj', 'Electronica', 'Electronica', 'Fun', 3);
INSERT INTO track VALUES ('SNG00016', 'Gamble', 'TKM01', 'ARTUP004', 146, 88.0, 'C min', 'Electronica', 'Electronica', 'Relaxed', 2);
INSERT INTO track VALUES ('SNG00017', 'Sweet Day', 'TKM01', 'ARTUP004', 216, 162.0, 'Bb min', 'Electronica', 'Electronica', 'Relaxed', 3);
INSERT INTO track VALUES ('SNG00018', 'Pharaohs', 'SBT01', 'YTDA060', 218, 127.0, 'C min', 'Electronica', 'Electronica', 'Relaxed', 4);
INSERT INTO track VALUES ('SNG00019', 'Something Goes Right', 'SBT01', 'YTDA060', 299, 146.0, 'Eb maj', 'Electronica', 'Electronica', 'Relaxed', 3);
INSERT INTO track VALUES ('SNG00020', 'Latch', 'DSC01', 'IR00602', 256, 122.0, 'Ab maj', 'House', 'House', 'Relaxed', 3);
INSERT INTO track VALUES ('SNG00021', 'The Progression', 'ZNK01', NULL, 300, 128.0, 'D maj', 'House', 'House', 'Relaxed', 3);
INSERT INTO track VALUES ('SNG00022', 'Talk to ME', 'RFF01', NULL, 315, 135.0, 'G min', 'Lo-fi', 'Lo-fi', 'Relaxed', 2);

-- Data to be inserted into 'harmonic_content' table:

INSERT INTO harmonic_content VALUES ('C maj', 5);
INSERT INTO harmonic_content VALUES ('F maj', 5);
INSERT INTO harmonic_content VALUES ('Bb maj', 4);
INSERT INTO harmonic_content VALUES ('Eb maj', 4);
INSERT INTO harmonic_content VALUES ('Ab maj', 3);
INSERT INTO harmonic_content VALUES ('Db maj', 3);
INSERT INTO harmonic_content VALUES ('Gb maj', 2);
INSERT INTO harmonic_content VALUES ('Cb maj', 1);
INSERT INTO harmonic_content VALUES ('G maj', 5);
INSERT INTO harmonic_content VALUES ('D maj', 4);
INSERT INTO harmonic_content VALUES ('A maj', 4);
INSERT INTO harmonic_content VALUES ('E maj', 3);
INSERT INTO harmonic_content VALUES ('B maj', 3);
INSERT INTO harmonic_content VALUES ('F# maj', 2);
INSERT INTO harmonic_content VALUES ('C# maj', 1);
INSERT INTO harmonic_content VALUES ('A min', 5);
INSERT INTO harmonic_content VALUES ('D min', 5);
INSERT INTO harmonic_content VALUES ('G min', 4);
INSERT INTO harmonic_content VALUES ('C min', 4);
INSERT INTO harmonic_content VALUES ('F min', 3);
INSERT INTO harmonic_content VALUES ('Bb min', 3);
INSERT INTO harmonic_content VALUES ('Eb min', 2);
INSERT INTO harmonic_content VALUES ('Ab min', 1);
INSERT INTO harmonic_content VALUES ('E min', 5);
INSERT INTO harmonic_content VALUES ('B min', 4);
INSERT INTO harmonic_content VALUES ('F# min', 4);
INSERT INTO harmonic_content VALUES ('C# min', 3);
INSERT INTO harmonic_content VALUES ('G# min', 3);
INSERT INTO harmonic_content VALUES ('D# min', 2);
INSERT INTO harmonic_content VALUES ('A# min', 1);


-- Data to be inserted into 'genre' table:

INSERT INTO genre VALUES ('Dance', 'Electro Pop', 3);
INSERT INTO genre VALUES ('Trance', 'Trance', 2);
INSERT INTO genre VALUES ('Indie Dance', 'Indie Dance', 3);
INSERT INTO genre VALUES ('Lo-fi', 'Lo-fi', 5);
INSERT INTO genre VALUES ('Electro House', 'Electro Pop', 4);
INSERT INTO genre VALUES ('Electronica', 'Electronica', 2);
INSERT INTO genre VALUES ('House', 'House', 4);
INSERT INTO genre VALUES ('House', 'Afro House', 3);
INSERT INTO genre VALUES ('House', 'Deep House', 5);
INSERT INTO genre VALUES ('Dubstep', 'Dubstep', 2);
INSERT INTO genre VALUES ('Nu Disco', 'Nu Disco', 3);
INSERT INTO genre VALUES ('House', 'Nu Disco', 4);
INSERT INTO genre VALUES ('Electro', 'Complextro', 2);
INSERT INTO genre VALUES ('Techno', 'Techno', 5);
INSERT INTO genre VALUES ('Trap', 'Trap', 4);
INSERT INTO genre VALUES ('UK Garage', 'Bassline', 3);
INSERT INTO genre VALUES ('House', 'Funk', 4);
INSERT INTO genre VALUES ('Trance', 'Psy-Trance', 1);
INSERT INTO genre VALUES ('Drum & Bass', 'Drum & Bass', 3);
INSERT INTO genre VALUES ('Hard Dance', 'Hardcore', 1);



-- Data to be inserted into 'vibe' table:


INSERT INTO vibe VALUES ('Euphoric', 5, 'Club');
INSERT INTO vibe VALUES ('Euphoric', 4, 'Club');
INSERT INTO vibe VALUES ('Euphoric', 3, 'Festival');
INSERT INTO vibe VALUES ('Euphoric', 2, 'Festival');
INSERT INTO vibe VALUES ('Euphoric', 1, 'Home');
INSERT INTO vibe VALUES ('Intense', 5, 'Club');
INSERT INTO vibe VALUES ('Intense', 4, 'Festival');
INSERT INTO vibe VALUES ('Intense', 3, 'Festival');
INSERT INTO vibe VALUES ('Intense', 2, 'Festival');
INSERT INTO vibe VALUES ('Intense', 1, 'Festival');
INSERT INTO vibe VALUES ('Fun', 5, 'Club');
INSERT INTO vibe VALUES ('Fun', 4, 'Club');
INSERT INTO vibe VALUES ('Fun', 3, 'Festival');
INSERT INTO vibe VALUES ('Fun', 2, 'Festival');
INSERT INTO vibe VALUES ('Fun', 1, 'Home');
INSERT INTO vibe VALUES ('Relaxed', 5, 'Club');
INSERT INTO vibe VALUES ('Relaxed', 4, 'Lounge');
INSERT INTO vibe VALUES ('Relaxed', 3, 'Lounge');
INSERT INTO vibe VALUES ('Relaxed', 2, 'Lounge');
INSERT INTO vibe VALUES ('Relaxed', 1, 'Lounge');


-- Data to be inserted into 'user' table:

INSERT INTO user VALUES ('USR01', 'Zaid Khatib', 'Student');
INSERT INTO user VALUES ('USR02', 'Barack Obama', 'President');
INSERT INTO user VALUES ('USR03', 'Matan Zohar', 'DJ');
INSERT INTO user VALUES ('USR04', 'John Smith', 'Student');
INSERT INTO user VALUES ('USR05', 'Eric Lutrell', 'DJ');
INSERT INTO user VALUES ('USR06', 'Any Cohen', 'DJ');
INSERT INTO user VALUES ('USR07', 'Porter Robinson', 'DJ');
INSERT INTO user VALUES ('USR08', 'Adam Something', 'Academic');
INSERT INTO user VALUES ('USR09', 'Kanye West', 'Rapper');
INSERT INTO user VALUES ('USR10', 'Jane Doe', 'Engineer');
INSERT INTO user VALUES ('USR11', 'Jennifer Lee', 'DJ');
INSERT INTO user VALUES ('USR12', 'Daniil Medvedev', 'Tennis Player');
INSERT INTO user VALUES ('USR13', 'Lebron James', 'Basketball Player');
INSERT INTO user VALUES ('USR14', 'Muhammad Ali', 'Boxer');
INSERT INTO user VALUES ('USR15', 'Joe Hisaishi', 'Composer');
INSERT INTO user VALUES ('USR16', 'Leonard Bernstein', 'Conductor');
INSERT INTO user VALUES ('USR17', 'Brian Greene', 'Physicist');
INSERT INTO user VALUES ('USR18', 'Ja Morant', 'Basketball Player');
INSERT INTO user VALUES ('USR19', 'Joel Zimmerman', 'DJ');
INSERT INTO user VALUES ('USR20', 'Jerry Seinfeld', 'Comedian');


-- Data to be inserted into 'playlist' table:

INSERT INTO playlist VALUES ('PLY01', 'Festival Anthems', 'USR01', 'DJ Set');
INSERT INTO playlist VALUES ('PLY02', 'Chill Songs', 'USR01', 'Personal Listening');
INSERT INTO playlist VALUES ('PLY03', 'Nostalgia Trip', 'USR01', 'Personal Listening');
INSERT INTO playlist VALUES ('PLY04', 'Lounge Vibes', 'USR08', 'DJ Set');
INSERT INTO playlist VALUES ('PLY05', 'Songs for Sunday', 'USR09', 'Personal Listening');
INSERT INTO playlist VALUES ('PLY06', 'Songs for Tuesday', 'USR12', 'Personal Listening');
INSERT INTO playlist VALUES ('PLY07', 'Songs for Friday', 'USR12', 'Personal Listening');
INSERT INTO playlist VALUES ('PLY08', 'Problem Set Grind', 'USR12', 'Studying');
INSERT INTO playlist VALUES ('PLY09', 'Standardized Testing', 'USR07', 'Studying');
INSERT INTO playlist VALUES ('PLY10', 'EDM Glory Days', 'USR07', 'Exercising');
INSERT INTO playlist VALUES ('PLY11', 'Ready for the Weekend', 'USR02', 'Personal Listening');
INSERT INTO playlist VALUES ('PLY12', 'Summer Vibes', 'USR18', 'DJ Set');
INSERT INTO playlist VALUES ('PLY13', 'The Lab LA', 'USR18', 'DJ Set');
INSERT INTO playlist VALUES ('PLY14', 'The Lab Shanghai', 'USR20', 'DJ Set');
INSERT INTO playlist VALUES ('PLY15', 'The Lab London', 'USR19', 'DJ Set');
INSERT INTO playlist VALUES ('PLY16', 'Faceshopping', 'USR19', 'DJ Set');
INSERT INTO playlist VALUES ('PLY17', 'Bangers', 'USR13', 'Exercising');
INSERT INTO playlist VALUES ('PLY18', 'Lost in Translation', 'USR13', 'Personal Listening');
INSERT INTO playlist VALUES ('PLY19', 'Euphoria Overload', 'USR14', 'DJ Set');
INSERT INTO playlist VALUES ('PLY20', 'Graduation', 'USR15', 'Personal Listening');


-- Data to be inserted into 'playlist_contents' table:

INSERT INTO playlist_contents VALUES('PLY01', 'SNG00012');
INSERT INTO playlist_contents VALUES('PLY01', 'SNG00003');
INSERT INTO playlist_contents VALUES('PLY01', 'SNG00006');
INSERT INTO playlist_contents VALUES('PLY02', 'SNG00016');
INSERT INTO playlist_contents VALUES('PLY02', 'SNG00009');
INSERT INTO playlist_contents VALUES('PLY02', 'SNG00006');
INSERT INTO playlist_contents VALUES('PLY03', 'SNG00002');
INSERT INTO playlist_contents VALUES('PLY03', 'SNG00017');
INSERT INTO playlist_contents VALUES('PLY03', 'SNG00015');
INSERT INTO playlist_contents VALUES('PLY04', 'SNG00003');
INSERT INTO playlist_contents VALUES('PLY04', 'SNG00005');
INSERT INTO playlist_contents VALUES('PLY04', 'SNG00011');
INSERT INTO playlist_contents VALUES('PLY05', 'SNG00005');
INSERT INTO playlist_contents VALUES('PLY05', 'SNG00010');
INSERT INTO playlist_contents VALUES('PLY05', 'SNG00002');
INSERT INTO playlist_contents VALUES('PLY06', 'SNG00016');
INSERT INTO playlist_contents VALUES('PLY06', 'SNG00002');
INSERT INTO playlist_contents VALUES('PLY06', 'SNG00017');
INSERT INTO playlist_contents VALUES('PLY07', 'SNG00009');
INSERT INTO playlist_contents VALUES('PLY07', 'SNG00003');
INSERT INTO playlist_contents VALUES('PLY07', 'SNG00010');
INSERT INTO playlist_contents VALUES('PLY08', 'SNG00007');
INSERT INTO playlist_contents VALUES('PLY08', 'SNG00008');
INSERT INTO playlist_contents VALUES('PLY08', 'SNG00006');
INSERT INTO playlist_contents VALUES('PLY09', 'SNG00019');
INSERT INTO playlist_contents VALUES('PLY09', 'SNG00012');
INSERT INTO playlist_contents VALUES('PLY09', 'SNG00005');
INSERT INTO playlist_contents VALUES('PLY10', 'SNG00013');
INSERT INTO playlist_contents VALUES('PLY10', 'SNG00015');
INSERT INTO playlist_contents VALUES('PLY10', 'SNG00011');
INSERT INTO playlist_contents VALUES('PLY11', 'SNG00010');
INSERT INTO playlist_contents VALUES('PLY11', 'SNG00012');
INSERT INTO playlist_contents VALUES('PLY11', 'SNG00008');
INSERT INTO playlist_contents VALUES('PLY12', 'SNG00003');
INSERT INTO playlist_contents VALUES('PLY12', 'SNG00015');
INSERT INTO playlist_contents VALUES('PLY12', 'SNG00014');
INSERT INTO playlist_contents VALUES('PLY13', 'SNG00018');
INSERT INTO playlist_contents VALUES('PLY13', 'SNG00010');
INSERT INTO playlist_contents VALUES('PLY13', 'SNG00012');
INSERT INTO playlist_contents VALUES('PLY14', 'SNG00016');
INSERT INTO playlist_contents VALUES('PLY14', 'SNG00019');
INSERT INTO playlist_contents VALUES('PLY14', 'SNG00017');
INSERT INTO playlist_contents VALUES('PLY15', 'SNG00004');
INSERT INTO playlist_contents VALUES('PLY15', 'SNG00001');
INSERT INTO playlist_contents VALUES('PLY15', 'SNG00009');
INSERT INTO playlist_contents VALUES('PLY16', 'SNG00018');
INSERT INTO playlist_contents VALUES('PLY16', 'SNG00013');
INSERT INTO playlist_contents VALUES('PLY16', 'SNG00019');
INSERT INTO playlist_contents VALUES('PLY17', 'SNG00015');
INSERT INTO playlist_contents VALUES('PLY17', 'SNG00007');
INSERT INTO playlist_contents VALUES('PLY17', 'SNG00002');
INSERT INTO playlist_contents VALUES('PLY18', 'SNG00020');
INSERT INTO playlist_contents VALUES('PLY18', 'SNG00013');
INSERT INTO playlist_contents VALUES('PLY18', 'SNG00014');
INSERT INTO playlist_contents VALUES('PLY19', 'SNG00009');
INSERT INTO playlist_contents VALUES('PLY19', 'SNG00011');
INSERT INTO playlist_contents VALUES('PLY19', 'SNG00004');
INSERT INTO playlist_contents VALUES('PLY20', 'SNG00015');
INSERT INTO playlist_contents VALUES('PLY20', 'SNG00013');
INSERT INTO playlist_contents VALUES('PLY20', 'SNG00001');
