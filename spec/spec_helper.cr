require "../src/rosegold"
require "spectator"

def client
  Rosegold::Client.new("localhost", 25565, offline: {uuid: "00000000-0000-0000-0000-000000000000", username: "rosegoldtest"})
end

Spectator.configure do |config|
  config.formatter = Spectator::Formatting::DocumentFormatter.new
end
