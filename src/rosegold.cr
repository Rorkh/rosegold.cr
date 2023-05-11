require "dotenv"
require "socket"
require "io/hexdump"
require "lua"

Dotenv.load

require "./rosegold/client"
require "./rosegold/bot"

require "./rosegold/bindings/lua"

# TODO: Write documentation for `Rosegold`
module Rosegold
  VERSION = "0.1.0"

  Log.setup_from_env

  GAME_ASSETS_ROOT = "#{__DIR__}/../game_assets/"

  macro read_game_asset(path)
    {{read_file GAME_ASSETS_ROOT + path}}
  end
end
