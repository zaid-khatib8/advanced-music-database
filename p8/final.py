#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu May 26 02:51:48 2022

@author: zaidkhatib
"""



from bottle import route, run, debug, request, template
import sqlite3


connection = sqlite3.connect('./p8.db')


# The following function uses a template to create a home page that prompts 
# the user to search the 'track' table (RelationX)
@route('/')
def home():
    return template('search')


# The following function allows a user to 
# search the 'track' table (i.e., RelationX) by two attributes, namely 'song_ID'
# and 'song_title' (Requirement 0). Upon pressing the 'Search' button, the user will encounter the
# results page which lists out records from RelationX that satisfy the search
# (Requirement 1)
@route('/search', method = ['GET'])
def search():
    if request.GET.search:
        songID = request.GET.song_ID.strip()
        songtitle = request.GET.song_title.strip()
        c = connection.cursor()
        
        if songID != '' and songtitle != '':
            sql = f"""SELECT song_title, song_ID FROM track WHERE song_ID = '{songID}' and song_title LIKE '%{songtitle}%' LIMIT 20;"""
            c.execute(sql)
        elif songID == '' and songtitle != '':
            sql = f"""SELECT song_title, song_ID FROM track WHERE song_title LIKE '%{songtitle}%' LIMIT 20;"""
            c.execute(sql)
        elif songID != '' and songtitle == '':
            sql = 'SELECT song_title, song_ID FROM track WHERE song_id = ? LIMIT 20;'
            c.execute(sql, [songID])
        else:
            sql = 'SELECT song_title, song_ID FROM track LIMIT 20;'
            c.execute(sql)

        search_result = c.fetchall()
        
        if len(search_result) == 0:
            return '<p>The specified query produced no results.</p>'
        else:
            return template('searchResults', rows = search_result, songID = songID, 
                            songtitle = songtitle)
    
    else:
        return template('search')


# The following contains the code for viewing or updating a record in RelationX
# (Requirement 2), deleting a record in RelationX (Requirement 3), viewing a table of 
# all records from RelationY (playlist table) that are linked to records in RelaxtionX
# (Requirement 4)
@route('/search/<songID>', method = ['GET'])
def viewUpdateDeleteY(songID):
    if request.GET.row_viewupdate:
        c = connection.cursor()
        sql = "SELECT song_title, song_ID, length, bpm FROM track WHERE song_ID = ?;"
        c.execute(sql, [songID])
        result = c.fetchall()
        
        return template('viewUpdate', rows = result, songID = songID)
    
    if request.GET.song_title:
        title = request.GET.song_title.strip()

        c = connection.cursor()
        sql = "UPDATE track SET song_title = ? WHERE song_ID =?;"
        c.execute(sql, (title, songID))
        connection.commit()
        c.close()
        return '<p>%s was updated with a new song title.</p>' % songID
    
    if request.GET.length:
        tracklength = request.GET.length.strip()
        error_output = []
        
        if not tracklength.isdigit():
            error_output.append("Length must be an integer")
        
        elif int(tracklength) < 0:
            error_output.append("Song length must be positive")
            
        if len(error_output)!=0:
            return '<p>%s </p>' % str(error_output)
        
        else:
            c =connection.cursor()
            sql = "UPDATE track SET length = ? WHERE song_ID = ?;"
            c.execute(sql, (tracklength, songID))
        connection.commit()
        c.close()
        
        return '<p>%s was updated with a new song length.</p>' % songID
    
    if request.GET.bpm:
        beatsmin = request.GET.bpm.strip()
        error_output = []
        
        if not beatsmin.isdigit():
            try:
                float(beatsmin)
            except ValueError:
                error_output.append("BPM must be a number.")

        
        elif int(beatsmin) < 0:
            error_output.append("BPM must be positive")
            
        if len(error_output) != 0:
            return '<p>%s </p>' % str(error_output)
        else:
            c = connection.cursor()
            sql = "UPDATE track SET bpm = ? WHERE song_ID = ?;"
            c.execute(sql, (beatsmin, songID))
            
            connection.commit()
            c.close()
            
            return '<p>%s was updated with a new BPM.</p>' % songID
    
    if request.GET.row_delete:
        c = connection.cursor()
        sql = "DELETE FROM track WHERE song_ID = ?;"
        c.execute(sql, [songID])
    
        connection.commit()
        c.close()
        
        return '<p>%s was deleted.</p>' % songID
    
    if request.GET.show_Y:
        c = connection.cursor()
        sql = "SELECT song_ID, song_title, playlist_ID, playlist_name, user_ID, purpose FROM track NATURAL JOIN playlist_contents NATURAL JOIN playlist WHERE song_ID = ?;"
        c.execute(sql, [songID])
        result = c.fetchall()
        
        connection.commit()
        c.close()
        
        if len(result) == 0:
            return '<p>There no related records (i.e., playlists) linked to this song.</p>'
        else:
            return template('showY', rows=result, songID = songID)
        
    if request.GET.add_Y:
        return template('addY', songID = songID)


# The following contains the code for adding a new record to RelationY (Requirement 5)
# This corresponds to adding a song to a new playlist
@route('/search/addY/<songID>', method=['GET'])  
def addY(songID):
    if request.GET.add:
        playlistID = request.GET.playlistID.strip()
        playlistName = request.GET.playlistName.strip()
        userID = request.GET.userID.strip()
        purpose = request.GET.purpose.strip()
        
        error_output = []
        
        #Validate Fields
        if len(playlistID) != 5:
            error_output.append('Playlist ID must be a string of 5 characters')
        if len(playlistName) > 50:
            error_output.append('Playlist name cannot be greater than 50 characters')
        if len(userID) != 5:
            error_output.append('User ID must be a string of 5 characters')
        if len(purpose) > 30:
            error_output.append('Playlist purpose cannot contain more than 30 characters')
        
        if len(error_output) != 0:
            return '<p>%s </p>' % str(error_output)
        else:
            c = connection.cursor()
            sql1 = "INSERT INTO playlist_contents (playlist_ID, song_ID) VALUES (?, ?);"
            c.execute(sql1, (playlistID, songID))
            connection.commit()
            c.close()
            
            c = connection.cursor()
            sql2 = "INSERT INTO playlist (playlist_ID, playlist_name, user_ID, purpose) VALUES (?, ?, ?, ?);"
            c.execute(sql2, (playlistID, playlistName, userID, purpose))
            connection.commit()
            c.close()
            
        
        return '<p>%s was added to a new playlist</p>' % songID
            

# The following function creates a page for user to enter a new record into the
# 'track' table (RelationX)
@route('/search/newRecord', method=['GET'])
def newRecord():
    return template('newRecord')  
        

# The following function creates a new record (in the 'track' table/RelationX
# using the user's input (Requirement 6)
@route('/search/newRecord/createNewRecord', method=['GET'])
def createNewRecord():

    if request.GET.create:
        songID = request.GET.songID.strip()
        songTitle = request.GET.songTitle.strip()
        artistID = request.GET.artistID.strip()
        albumID = request.GET.albumID.strip()
        length = request.GET.length.strip()
        bpm = request.GET.bpm.strip()
        musicKey = request.GET.musicKey.strip()
        primaryGenre = request.GET.primaryGenre.strip()
        secondaryGenre = request.GET.secondaryGenre.strip()
        mood = request.GET.mood.strip()
        danceability = request.GET.danceability.strip()
        
        error_output = []
        
        if len(songID) != 8:
            error_output.append("Song ID must be exactly 8 characters")
        if songTitle == '':
            error_output.append("Song must have a title")
        if len(artistID) != 5:
            error_output.append("Artist ID must be exactly 5 characters")
        if albumID == '':
            error_output.append("Song must have an associated Album ID")
        if not length.isdigit():
            error_output.append("Song length must be an integer")
        elif int(length) < 0:
            error_output.append("Song length must be positive")
        if not bpm.isdigit():
            try:
                float(bpm)
            except ValueError:
                error_output.append("BPM must be a number.")
        elif int(bpm) < 0:
            error_output.append("BPM must be positive")
        if not danceability.isdigit():
            error_output.append("Danceability rating must be an integer 1-5")
        elif int(danceability) < 1 or int(danceability) > 5:
            error_output.append("Danceability rating must be an integer 1-5")


        if len(error_output) != 0:
            return '<p>%s </p>' % str(error_output)
        
        else:
            c = connection.cursor()
            sql = "INSERT INTO track (song_ID, song_title, artist_ID, album_ID, length, bpm, music_key, primary_genre, secondary_genre, mood, danceability) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);"
            c.execute(sql, (songID, songTitle, artistID, albumID, length, bpm, musicKey, primaryGenre, secondaryGenre, mood, danceability))
    
            connection.commit()
            c.close()
      
            return '<p>%s was added to the database</p>' % songID  
         

debug(True)
run(reloader=True)