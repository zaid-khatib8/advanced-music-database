<html>
    <p><b>Create new record:</b></p>
    <td>
    <form action="/search/newRecord/createNewRecord" method="GET">
        <p>Song ID (string of exactly 8 characters)</p>
        <input type="text" size="10" maxlength="8" name="songID">
        <p>Song Title (string of less than 50 characters)</p>
        <input type="text" size="30" maxlength="50" name="songTitle">
        <p>Album ID (String consisting of no more than 10 characters)</p>
        <input type="text" size="10" maxlength="10" name="albumID">
        <p>Artist ID (String consisting of exactly 5 characters)</p>
        <input type="text" size="10" maxlength="5" name="artistID">
        <p>Song Length (in seconds, positive integer)</p>
        <input type="text" size="10" maxlength="100" name="length">
        <p>Beats per minute (BPM, postive float)</p>
        <input type="text" size="10" maxlength="100" name="bpm">
        <p>Music Key (String with no more than 10 characters)</p>
        <input type="text" size="10" maxlength="10" name="musicKey">
        <p>Primary Genre (String of less than 30 characters)</p>
        <input type="text" size="30" maxlength="30" name="primaryGenre">
        <p>Secondary Genre (String of less than 30 characters)</p>
        <input type="text" size="30" maxlength="30" name="secondaryGenre">
        <p>Mood (String of less than 30 characters)</p>
        <input type="text" size="30" maxlength="100" name="mood">
        <p>Danceability (Integer from 1-5)</p>
        <input type="text" size="5" maxlength="1" name="danceability">
        <input type="submit" name="create" value="Create">
    </form>
    </td>
</html>