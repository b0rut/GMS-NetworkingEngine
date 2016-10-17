///client_update_info(socket, info, value)

/*
    Script Creator: Borut Matjašič
    Date created: 16.10.2016
    Website URL: http://www.matjasicborut.com/
    Project Name: GMS:Networking Engine
    
    Description: Updates database information about the client
*/

var Socket = argument0;
var Info = argument1;
var Value = argument2;


for(var i=0; i < ds_list_size(global.clientList); i ++) {

    var playerMap = ds_list_find_value(global.clientList, i);
    
        if(ds_map_find_value(playerMap, "socket") == socket) {
        
            ds_map_replace(playerMap, Info, Value);
        
        }


}
