Student Name: Zaid Khatib
Student ID: 12336024
Date: 05/27/2022
MPCS 53001: Databases
Project 8 Assignment: Instructions

IMPORTANT: Note that python file will only work with the data if it is populated in a database file titled 'p8.db'

To setup the database, run sqlite3 in your terminal in the folder containing all the p8 files. Then create 'p8.db' using .open 
p8.db. This will be the database that will be populated from the SQL queries. Next, run create_db.sql and then populate_db.sql. 

Next in your terminal, type 'python3 final.py' to start the server. Copy the URL from your terminal (something like 
'http://127.0.0.1:8080/') into your internet browser's address bar to access the search page of the app.

From there, you can search the 'track' table for the song ID (a five character string) or the song title, which uses wild card / 
like. Once you have searched for something and you are presented with results, you can click on the 'Show RelationY' button for a 
given song (the song given by the title and ID in that row) to see what playlists, if any, that song belongs to. Additional 
attributes included in this RelationY (corresponding to the 'playlist' table in the database schema are Playlist ID, Playlist Title, 
User ID, and Playlist Purpose. Note that the songs are linked to the playlist table through the playlist_contents table.
