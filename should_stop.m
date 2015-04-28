function stop = should_stop(fortune)
    global target_fortune
    stop = or((fortune>= target_fortune),(fortune == 0));
end
