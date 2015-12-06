<div>    
    <div id="team_sort_form">
        Sort By: <select onchange="TeamOrderSort(this.value);">
            {teamsortoptions}
            <option value="{value}">{text}</option>
            {/teamsortoptions}
        </select>
        <p><b>Currently sorting by: {teamordermethod}</b></p>
    </div>   
    <div id="team_layout_form">
        Layout: <select onchange="TeamChangeLayout(this.value);">
            {teamlayoutoptions}
            <option value="{value}">{text}</option>
        {/teamlayoutoptions}
        </select>
        <p><b>Current Layout: Division</b></p>
    </div>
    
    <div class="teamtable">
        <table>
            <tr>
                <th></th>
                <th>Division</th>                
                <th>Team</th>
                <th>Team Code</th>
                <th>Conference</th>
            </tr>
            {teamlist}
            <tr>
                <td class="nopadding"><img src="assets/images/{image}"></td>
                <td>{division}</td>                
                <td>{city} {name}</td>
                <td>{teamcode}</td>
                <td>{conference}</td>
            </tr>
            {/teamlist}
        </table>
        <div id="teamlinks">
        {teamlinks}
        </div>
    </div>
</div>    