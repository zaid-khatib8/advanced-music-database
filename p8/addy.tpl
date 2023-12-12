<html>
    <p><b>Add to a playlist the song with Song ID={{songID}}:</b></p>
    <p>Enter Playlist ID, playlist name, user_ID, and purpose and press 'Add' to create a new record tied to a song.</p>
    <td>
    <form action="/search/addY/{{songID}}" method="GET">
        <p>Playlist ID (String of exactly 5 characters)</p>
        <input type="text" size="10" maxlength="5" name="playlistID">
        <p>Playlist Name (String no more than 50 characters)</p>
        <input type="text" size="30" maxlength="50" name="playlistName">
        <p>User ID (String of exactly 5 characters)</p>
        <input type="text" size="10" maxlength="100" name="userID">
        <p>Purpose (String no more than 30 characters)</p>
        <input type="text" size="20" maxlength="100" name="purpose">
        <input type="submit" name="add" value="Add">
    </form>
    </td>
</html>