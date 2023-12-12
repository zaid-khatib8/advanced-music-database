<html>
    <p><b>Create a new record (i.e., a new track):</b></p>
    <td>
    <form action="/search/newRecord" method="GET">
        <input type="submit" name="new" value="New track">
    </form>
    </td>
    <p><b> 'Track' search results:</b></p>
    <p>Table contents: Column 1: Song Name || Column 2: Song ID.</p>
    <table border="1">
    %for row in rows:
        <tr>
        %for col in row:
            <td>{{col}}</td>
        %end
        <td>
        <form action="/search/{{col}}" method="GET">
            <input type="submit" name="row_viewupdate" value="View/Update">
        </form>
        </td>
        <td>
        <form action="/search/{{col}}" method="GET">
            <input type="submit" name="row_delete" value="Delete">
        </form>
        </td>
        <td>
        <form action="/search/{{col}}" method="GET">
            <input type="submit" name="show_Y" value="Show RelationY">
        </form>
        </td> 
        <td>
        <form action="/search/{{col}}" method="GET">
            <input type="submit" name="add_Y" value="Add new RelationY">
        </form>
        </td> 
        </tr>
    %end
    </table>
</html>