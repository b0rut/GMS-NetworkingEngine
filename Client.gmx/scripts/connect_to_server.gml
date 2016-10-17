///connect_to_server(ip, port)

/*
    Script Creator: Borut Matjašič
    Date created: 16.10.2016
    Website URL: http://www.matjasicborut.com/
    Project Name: GMS:Networking Engine
    
    Description: Connects to a server and returns true or false whether successfull or not

*/

var IpAddress = argument0; //Ip address to connect to
var Port = argument1; //Pass the po

//First of all we need to create a connecting soccet for our client

global.Socket = network_create_socket(network_socket_tcp);
global.Buffer = buffer_create(1024, buffer_fixed, 1);

var Connected = network_connect(global.Socket, IpAdress, Port);

return Connected;


