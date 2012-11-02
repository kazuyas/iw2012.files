class ShowFeatures < Controller
  def switch_ready datapath_id
    send_message datapath_id, FeaturesRequest.new
  end


  def features_reply datapath_id, message
    info "Datapath ID: #{ datapath_id.to_hex }"

    message.ports.each do | each |
      info "Port no: #{ each.number }"
      info "  Hardware address: #{ each.hw_addr.to_s }"
      info "  Port name: #{ each.name }"
    end

    shutdown!
  end
end
