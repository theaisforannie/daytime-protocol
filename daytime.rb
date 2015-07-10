require 'socket'

server = TCPServer.new 13
loop do
  Thread.start(server.accept) do |client|
    client.puts Time.now
    client.close
  end
end
