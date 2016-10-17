///client_destory(socket)

/*
    Script Creator: Borut Matjašič
    Date created: 16.10.2016
    Website URL: http://www.matjasicborut.com/
    Project Name: GMS:Networking Engine
    
    Description: Destroys a client map

*/

var Socket = argument0; //Pass the socket argument

var clientId = client_find_info(Socket, "id");

for(var i = 0; i < ds_list_size(global.clientList); i++) {

    if(clientId == i) {
    
        var clientMap = ds_list_find_value(global.clientList, i);
        ds_map_destroy(clientMap); //destroys client map
        ds_list_delete(global.clientList, i); //empties position of the point in clientlist (because pointer still remains, trough maps destruction)
        network_destroy(Socket); //and we destroy the socket
        exit; //quit the loop
    
    }
    

}

