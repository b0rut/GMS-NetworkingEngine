///server_init(network_socket_tcp/network_socket_udp, port, maxclients)

/*
    Script Creator: Borut Matjašič
    Date created: 16.10.2016
    Website URL: http://www.matjasicborut.com/
    Project Name: GMS:Networking Engine
    
    Description: Initializes server and creates a server socket
*/


var SocketType = argument0; //First argument holds the type of the socket tcp/udp
var Port = argument1; //Second argument will hold port
var MaxClients = argument2; //The third argument will hold maximum numbers of clients

//Global variables, meant to hold player and session information
//NOTE those aren't needed to be global, I've created them to be global for the future usage (if neccesary)

global.clientList = ds_list_create(); //This list will hold all the information about clients
global.sessionList = ds_list_create(); //This list will hold all the information about sessions

m_server = network_create_server(SocketType, Port, MaxClients); //The server will start here
m_buffer = buffer_create(1024, buffer_fixed, 1); //And finnaly we create a buffer
