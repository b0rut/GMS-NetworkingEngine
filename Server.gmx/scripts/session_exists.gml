///session_exists(session_id)

/*
    Script Creator: Borut Matjašič
    Date created: 16.10.2016
    Website URL: http://www.matjasicborut.com/
    Project Name: GMS:Networking Engine
    
    Description: Checks whether session exists and returns it's ID or -1

*/

var sessionId = argument0; //pass the socket argument

for(var i = 0; i < ds_list_size(global.sessionList); i ++) {

    var sessionMap = ds_list_find_value(global.sessionList, i);
    
        if(sessionId == ds_map_find_value(sessionMap, "id")) {
            
            return true;
            exit;
        }

}
return false;
