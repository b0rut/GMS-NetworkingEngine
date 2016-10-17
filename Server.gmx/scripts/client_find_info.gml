///client_find_info(socket, info)

/*
    Script Creator: Borut Matjašič
    Date created: 16.10.2016
    Website URL: http://www.matjasicborut.com/
    Project Name: GMS:Networking Engine
    
    Description: A script which returns requested information with given socket and info to which it should look
*/

var Socket = argument0; //Pass the socket argument
var Info = argument1; //Pass information argument

for(var i = 0; i < ds_list_size(global.clientList); i++) {

    var clientMap = ds_list_find_value(global.clientList, i); //Finds a map which hold player information
    
        if(ds_map_find_value(clientMap, "socket") == Socket) {
        
            return ds_map_find_value(clientMap, Info); //returns searched value if found
            }
        
        }


