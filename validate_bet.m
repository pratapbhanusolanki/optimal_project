function r = validate_bet(bet)
    global target_fortune
    r = (bet>=minimum_bet)&&(bet<=maximum_outside_bet);
end