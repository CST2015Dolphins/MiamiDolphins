<div id="about">
    <img id="img_players" src="assets/images/players.jpg">
    
    <div id="about_text">
        <p>This site was designed and created by Team Miami Dolphins for COMP4711.</p>
            
        <p>Everything was done purely for academic learning.</p>

        <p>All uses of names and media fall under the fair use guidelines.</p>
    </div>
    
    <table id="membertable">
        <tr>
            <th><h3>Our Team</h3></th>
        </tr>
        <tr>
            {member_list}
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img id="member_image" src="assets/images/member_images/{image}"></td>
            {/member_list}
        </tr>
        <tr>
            {member_list}
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{name}</td>
            {/member_list}
        </tr>
    </table>
</div>