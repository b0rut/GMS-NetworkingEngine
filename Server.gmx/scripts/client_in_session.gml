///client_in_session(socket)

/*
    Script Creator: Borut Matjašič
    Date created: 16.10.2016
    Website URL: http://www.matjasicborut.com/
    Project Name: GMS:Networking Engine
    
    Description: Returns true or false whether the player is in room or not
    
*/

var Socket = argument0; //pass socket argument

var RoomId = client_find_info(Socket, "room_id"); //gets the room id

if(RoomId > -1) {  //if room id is larger than -1 (0, 1, 2, 3, 4) then the room exists and the client IS in room, otherwise return false

    return true;    

}

else {

return false;

}
