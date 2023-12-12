<html>
    <p><b>Track Details</b></p>
    <p>Table contents: Column 1: Song ID || Column 2: Song Title || Column 3: Song Length (in seconds) || Column 4: Song BPM (beats per minute)</p>
    <table border="1">
    %for row in rows:
        <tr>
        %for col in row:
            <td>{{col}}</td>
        %end
        </tr>
    %end
    </table>
    <br>
    <p><b>Update song information:</b></p>
    <form action="/search/{{songID}}" method="GET">
        <p>Enter Track Title: </p>
        <input type="text" size="30" maxlength="50" name="song_title">
        <input type="submit" name="edit" value="Update">
    </form>
    <form action="/search/{{songID}}" method="GET">
        <p>Enter length of song in seconds (integers only): </p>
        <input type="text" size="30" maxlength="5" name="length">
        <input type="submit" name="edit" value="Update">
    </form>
    <form action="/search/{{songID}}" method="GET">
        <p>Enter BPM (integers or floats only): </p>
        <input type="text" size="30" maxlength="100" name="bpm">
        <input type="submit" name="edit" value="Update">
    </form>
</html>