<html>
    <p><b>Search for a Song: </b></p>
    <p>Enter Song ID and/or Song Name to search for tracks.</p>
    <form action="/search" method="GET">
        <p>Song ID</p>
        <input type="text" size="10" maxlength="8" name="song_ID">
        <p>Song Title*</p>
        <input type="text" size="25" maxlength="50" name="song_title">
        <input type="submit" name="search" value="Search">
    </form>
</html>