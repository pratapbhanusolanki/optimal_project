clear all;
close all;
clc;

global num_simulation target_fortune initial_fortune minimum_bet maximum_outside_bet
num_simulation = 100000;
initial_fortune = 200  ;
target_fortune = 500;
minimum_bet = 10;
maximum_outside_bet = 1000; %Assuming total is 10000
num_games_in_each_iteration = 1500;
number_of_games = zeros(num_games_in_each_iteration,1);

for i=1:num_simulation
    i
    In = 0;
    Bet = 0;
    current_fortune = initial_fortune;
    for j=1:num_games_in_each_iteration
        % Without the loss of generality, assuming each bet is even
        %only amount of bet will define the strategy
        %Bet(j) = bold_play(Bet,In,current_fortune);
        Bet(j) = minimum_bet;
        roll = randi(38);
        In(j) = roll;
        current_fortune = current_fortune + (2*is_won(roll)-1)*Bet(j);
        if should_stop(current_fortune)
            break;
        end
       
    end
    final_fortune(i) = current_fortune;
    number_of_games(j) = number_of_games(j)+1;
end




