///session_find(session_id)

/*
    Script Creator: Borut Matjašič
    Date created: 16.10.2016
    Website URL: http://www.matjasicborut.com/
    Project Name: GMS:Networking Engine
    
    Description: Finds a session with a given id and returns its map pointer

*/

var SessionId = argument0; // Pass the socket argument

for(var i = 0; i < ds_list_size(global.sessionList); i ++) {

    var sessionMap = ds_list_find_value(global.sessionList, i); 
    
    
    if(SessionId == ds_map_find_value(global.sessionMap, "id")) {
    
        return ds_list_find_value(global.sessionList, i);
    
    }
    
    

}
