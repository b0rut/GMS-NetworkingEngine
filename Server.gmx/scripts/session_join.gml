///session_join(socket, session_id)

/*
    Script Creator: Borut Matjašič
    Date created: 16.10.2016
    Website URL: http://www.matjasicborut.com/
    Project Name: GMS:Networking Engine
    
    Description: Adds a socket to a desired session

*/

var Socket = argument0; //Pass socket argument
var SessionJoin = argument1; //Pass session argument

if(session_exists(SessionJoin) == true) {

    for(var i = 0; i < ds_list_size(global.sessionList); i ++) { //query for session data
    
        var sessionMap = ds_list_find_value(global.sessionList, i);
        var sessionId = ds_map_find_value(sessionMap, "id");
        
        if(sessionID == SessionJoin) { //Checks whether we found the correct session
            
            var playerList = ds_map_find_value(sessionMap, "playerList");
            var maxPlayers = ds_map_find_value(sessionMap, "max_players");
            
            
            
            if(ds_list_size(playerList) < maxPlayers) { //whether there is a free slot 
            
                ds_list_add(playerList, Socket);
                client_update_info(Socket, "room_id", SessionJoin);
            } 
            
        }
    
    }

}
