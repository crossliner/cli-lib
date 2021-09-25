local signal = {}; do 
  function signal.new() 
    return Instance.new("BindableEvent")
  end;
end;