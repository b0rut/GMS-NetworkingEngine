///session_disconnect(socket)

/*
    Script Creator: Borut Matjašič
    Date created: 16.10.2016
    Website URL: http://www.matjasicborut.com/
    Project Name: GMS:Networking Engine
    
    Description: Disconnects a player from the session

*/

var Socket = argument0; //Passes the socket argument

var Session = client_find_info(Socket, "room_id");
var SessionMap = session_find(Session);


//We will send a packet to the other clients in the session, to tell them we have
buffer_seek(m_buffer, buffer_seek_start, 0);
buffer_write(m_buffer, buffer_u8, session_disconnected);
buffer_write(m_buffer, buffer_string, playerName +" has disconnected!");
session_broadcast_message(Socket);
  

var playerList = ds_map_find_value(SessionMap, "playerList");

for(i = 0; i < ds_list_size(playerList); i ++) {

    if(ds_list_find_value(playerList, i) == Socket) {
    
        ds_list_delete(playerList, i);
        client_update_info(Socket, "room_id", -1);
    
    }

}

