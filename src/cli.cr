require "./rosegold"
require "option_parser"

OptionParser.parse do |parser|
  parser.banner = "Rosegold CLI"

  parser.on "-v", "--version", "Show version" do
    puts Rosegold::VERSION
    exit
  end
  parser.on "-h", "--help", "Show help" do
    puts parser
    exit
  end
  parser.on "-i FILENAME", "--input=FILENAME", "Specify input" do |filename|
    #lua = Rosegold::LuaBinding.new
    #lua.run_file filename
    exit
  end
end