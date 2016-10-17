///session_broadcast_message(socket)

/*
    Script Creator: Borut Matjašič
    Date created: 16.10.2016
    Website URL: http://www.matjasicborut.com/
    Project Name: GMS:Networking Engine
    
    Description: Broadcasts a message to all the players in the session
*/

var Socket = argument0; //Pass the socket argument


var SocketsSession = client_find_info(Socket, "room_id"); //Finds in which session the socket is 

for(var i = 0; i < ds_list_size(global.sessionList); i ++) { //Searches trough a list of sessions to find it's info

    var sessionMap = ds_list_find_value(global.sessionList, i);
    
    if(ds_map_find_value(sessionMap, "id") == SocketsSession) {
    
        var playerList = ds_map_find_value(sessionMap, "playerList"); //Finds a list of players 
        
            for(var j = 0; j < ds_list_size(playerList); j ++) { //Queires trough all of them 
                
                
                var socket = ds_list_find_value(playerList, j); //Finds each socket
                
                if(socket != Socket) { //Except the sending one!!
                
                    network_send_packet(socket, m_buffer, buffer_tell(m_buffer)); //And finnaly sends info to each socket
                
                }
                
                
            
            }
    
    
    }


}




