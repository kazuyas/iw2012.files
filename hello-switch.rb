class HelloSwitch < Controller
  def switch_ready dpid
    puts "Hello #{ dpid.to_hex }!"
  end
end
