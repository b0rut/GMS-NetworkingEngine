///session_create(socket, maxplayers)

/*
    Script Creator: Borut Matjašič
    Date created: 16.10.2016
    Website URL: http://www.matjasicborut.com/
    Project Name: GMS:Networking Engine
    
    Description: Creates a new session and sets master client

*/

var Socket = argument0; //pass the socket id to the first argument
var MaxPlayers = argument1; //The second argument hold the maximum ammount of players in one single session

var PlayerList = ds_list_create();//Here we will create a list which will hold information about players INSIDE the session
var Session = ds_map_create(); //Let's create a session map and pass all the information we need to it

//Adding needed information to the session
ds_map_add(Session, "socket", Socket);  //add socket to session database NOTE: If you don't want to set master socket, just leave socket argument -1
ds_map_add(Session, "name", client_find_info(Socket, "name")); //add name of the room owner
ds_map_add(Session, "max_players", MaxPlayers); //add ammount of max players
ds_map_add_list(Session, "playerList", list); //Create list of players
ds_map_add(Session, "id", ds_list_size(global.sessionList)); //Add the id of this session

ds_list_add(global.sessionList, Session); //adding session to the current session list

return ds_list_size(global.sessionList)-1; //Return id of the session


