class PacketinDumper < Controller
  def packet_in dpid, message
    puts "received a packet_in"
    puts "dpid: #{ dpid.to_hex }"
    puts "in_port: #{ message.in_port }"
  end
end
