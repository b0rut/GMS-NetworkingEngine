///broadcast_message()

/*
    Script Creator: Borut Matjašič
    Date created: 16.10.2016
    Website URL: http://www.matjasicborut.com/
    Project Name: GMS:Networking Engine
    
    Description: Sends a message trough the entire client list
*/
for(var i = 0; i < ds_list_size(global.clientList); i ++) { //Seeks trough clients

    var clientMap = ds_list_find_value(global.clientList, i);
    var socket = ds_map_find_value(clientMap, "socket");
    network_send_packet(socket, m_buffer, buffer_tell(m_buffer));


}
