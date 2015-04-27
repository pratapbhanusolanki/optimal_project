num_simulation = 100000;
initial_fortune = 500;
target_foutune = 1000;
minimum_bet = 5;
maximum_outside_bet = 1000; %Assuming total is 1000
number_of_games = zeros(100);

for i=1:num_simulation
    In = [];
    Bet = [];
    for j=1:100
        % Without the loss of generality, assuming each bet is on even
        %only amount of bet will define the strategy
        Bet(i) = bold_play(Bet,In);
        roll = randi(38);
       
    end
    final_fortune(i) = 100;
    number_of_games(j) = number_of_games(j)+1;
end

function stop = should_stop(fortune)
    stop = fortune>= target_fortune;
end

function r = validate_bet(bet)
    r = (bet>=minimum_bet)&&(bet<=maximum_outside_bet);
end

function r = is_won(roll)
    r = 0;
    if(f<=36)&&(mod(f,2)==0)
        r = 1;
    end
end


