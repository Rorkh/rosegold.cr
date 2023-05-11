class Rosegold::LuaBinding
    getter stack : Lua::Stack

    def initialize
        @stack = Lua.load
        stack.set_global("rosegold", Rosegold::Bot)
    end

    def run_file(filename : String)
        stack.run File.new(filename)
    end
end