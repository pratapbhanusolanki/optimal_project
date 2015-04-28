function r = is_won(roll)
    r = 0;
    if(roll<=36)&&(mod(roll,2)==0)
        r = 1;
    end
end
