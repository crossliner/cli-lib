local signal = require("utils/signal");

local cli = {}; do 
  cli.__index = cli;

  cli.new = function() 
    return setmetatable({
      commands = {}
    }, cli);
  end;

  function cli:register(name) 
    local cli_Signal = signal.new();
    self.commands[name] = cli_Signal;

    return cli_Signal.Event;
  end;
end;