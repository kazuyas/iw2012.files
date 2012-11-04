class ShowFeatures < Controller
  def switch_ready datapath_id
    send_message datapath_id, FeaturesRequest.new
  end


  def features_reply datapath_id, message
    puts "Datapath ID: #{ datapath_id.to_hex }"

    message.ports.each do | each |
      puts "Port no: #{ each.number }"
      puts "  Hardware address: #{ each.hw_addr.to_s }"
      puts "  Port name: #{ each.name }"
    end
  end
end
