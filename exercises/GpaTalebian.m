
clear;
close all;


 while 1
mark = input('\n enter in a mark out 20:');
if mark <=20 && mark >=0
    
     if mark>=19
        fprintf('the mark of %f is equal to A+ \n', mark);
    elseif mark>=18
        fprintf('the mark of %f is equal to A \n', mark);
    elseif mark>=17
        fprintf('the mark of %f is equal to A- \n', mark);
    elseif mark>=16
         fprintf('the mark of %f is equal to B+ \n', mark);
    elseif mark>=15
         fprintf('the mark of %f is equal to B \n', mark);
    elseif mark>=14
         fprintf('the mark of %f is equal to B- \n', mark);
    elseif mark>=13
        fprintf('the mark of %f is equal to C+ \n', mark);
    elseif mark>=12
        fprintf('the mark of %f is equal to C \n', mark);
    elseif mark>=11
         fprintf('the mark of %f is equal to C- \n', mark);
    elseif mark>=10
         fprintf('the mark of %f is equal to D \n', mark);
    else
        fprintf('the mark of %f is a F \n', mark);  
      end

else 
    fprintf('not a valid input , mark must be beteen 0-20\n');
    
end 

 end

   
