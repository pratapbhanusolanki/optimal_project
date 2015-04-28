function r = bold_play(Bet,In, current_fortune)
%bold play strategy
    global target_fortune
    r = min(target_fortune-current_fortune, current_fortune);
end

