%Programming conventions for roulette: 
    %Red = the odd numbers between 1 and 36. 
    %Black = the even numbers between 1 and 36.
    %0 = 37
    %00 = 38.


function avg_winnings = Roulette(bet, num_bets, num_simulations)


i=1;
k=1;
Win = zeros(1,num_simulations);
FirstTime=0;
display('Here is the game of Roulette. What type of bet do you want to make?')
display('You have the following options:')
display('1. Even')
display('2. Odd')
display('3. Red')
display('4. Black')
display('5. 1to18')
display('6. 19to36')
display('7. 1stDozen')
display('8. 2ndDozen')
display('9. 3rdDozen')
display('10. 1stColumn')
display('11. 2nd Column')
display('12. 3rd Column')
display('13. Row00')
display('14. Top Line')
display('15. Straight-Up')
display('Remember when typing the bet, must be EXACTLY the same spacing and CAPS.')
display('ALSO because it is a string you must make sure to type '' around the word.')
WhatBet=input('What type of bet would you like to make?');

while(k<=num_simulations)
    i=1;
    winnings=0;
    while(i<=num_bets)
        roll=randi(38);
        if (strcmp(WhatBet,'Even'))
            if(rem(roll,2)==0 && roll~=38)
            		winnings=winnings+bet;
        	else
            		winnings=winnings-bet;
            end
        end
        if (strcmp(WhatBet,'Odd'))
            if(rem(roll,2)==1 && roll~=37)
            		winnings=winnings+bet;
        	else
            		winnings=winnings-bet;
            end
        end
	if (strcmp(WhatBet,'Red'))
		if(strcmp(RouletteColor(roll),'Red'))
			winnings=winnings+bet;
		else
			winnings=winnings-bet;
		end
	end
	if (strcmp(WhatBet,'Black'))
		if(strcmp(RouletteColor(roll),'Black'))
			winnings=winnings+bet;
		else
			winnings=winnings-bet;
		end
	end
	if (strcmp(WhatBet,'1to18'))
		if(roll>=1 && roll<=18)
			winnings=winnings+bet;
		else
			winnings=winnings-bet;
		end
	end
	if (strcmp(WhatBet,'19to36'))
		if(roll>=19 && roll<=36)
			winnings=winnings+bet;
		else
			winnings=winnings-bet;
		end
	end
	if (strcmp(WhatBet,'1stDozen'))
		if (roll>=1 && roll <= 12)
			winnings=winnings+(2*bet);
		else
			winnings=winnings-bet;
		end
	end
	if (strcmp(WhatBet,'2ndDozen'))
		if (roll>=13 && roll <= 24)
			winnings=winnings+(2*bet);
		else
			winnings=winnings-bet;
		end
	end
	if (strcmp(WhatBet,'3rdDozen'))
		if (roll>=25 && roll <= 36)
			winnings=winnings+(2*bet);
		else
			winnings=winnings-bet;
		end
	end
	if (strcmp(WhatBet,'1stColumn'))
		if (rem(roll,3)==1 && roll~=37)
			winnings=winnings+(2*bet);
		else
			winnings=winnings-bet;
		end
	end
	if (strcmp(WhatBet,'2ndColumn'))
		if (rem(roll,3)==2 && roll~=38)
			winnings=winnings+(2*bet);
		else
			winnings=winnings-bet;
		end
	end
	if (strcmp(WhatBet,'3rdColumn'))
		if (rem(roll,3)==0)
			winnings=winnings+(2*bet);
		else
			winnings=winnings-bet;
		end
	end
	if (strcmp(WhatBet,'Row00'))
		if(roll==37 || roll==38)
			winnings=winnings+(17*bet);
		else
			winnings=winnings-bet;
		end
	end
	if (strcmp(WhatBet,'Top Line'))
		if(roll==37 || roll==38 || roll == 1 || roll == 2 || roll==3)
			winnings=winnings+(6*bet);
		else
			winnings=winnings-bet;
		end
	end
	if (strcmp(WhatBet,'Straight-Up'))
		if(FirstTime==0)
            number=input('What Number do you want to bet on?');
            FirstTime=1;
        end
        if(roll==number)
			winnings=winnings+(35*bet);
		else
			winnings=winnings-bet;
		end
	end					
        i=i+1;
    end
    Win(k)=winnings;
    k=k+1;
end
avg_winnings = (sum(Win))/(num_simulations*num_bets);
end

function Color = RouletteColor(bet)
	if((bet>=1 && bet<= 10) || (bet>=19 && bet<=28))
        if (rem(bet,2)==1)
			Color='Red';
		end
		if (rem(bet,2)==0)
			Color='Black';
		end
	end
	if((bet>=11 && bet<=18) || (bet>=29 && bet<=36))
		if (rem(bet,2)==1)
			Color='Black';
		end
		if (rem(bet,2)==0)
			Color='Red';
        end
    end
    if(bet==37 || bet==38)
        Color='Green';
    end
end
