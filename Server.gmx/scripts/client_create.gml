///client_create(socket, ip)

/*
    Script Creator: Borut Matjašič
    Date created: 16.10.2016
    Website URL: http://www.matjasicborut.com/
    Project Name: GMS:Networking Engine
    
    Description: Creates a new client and adds required data to it
*/

var Socket = argument0; //Pass the socket argument
var ip = argument1; //Ip address of the connection

var Client = ds_map_create();

ds_map_add(Client, "socket", Socket);
ds_map_add(Client, "ip", ip);
ds_map_add(Client, "name", "");
ds_map_add(Client, "room_id", -1);
ds_map_add(Client, "level", -1);
ds_map_add(Client, "id", ds_list_size(global.clientList));

ds_list_add(global.clientList, Client); //Adds a fresh client
