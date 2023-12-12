<html>
    <p><b>Playlists selected song appears in:</b></p>
    <p>Table Contents: Column 1: Song ID || Column 2: Song Title || Column 3: Playlist ID || Column 4: Playlist Title || Column 5: User ID || Column 6: Playlist Purpose</p>
    <table border="1">
    %for row in rows:
        <tr>
        %for col in row:
            <td>{{col}}</td>
        %end
        </tr>
    %end
    </table>
</html>