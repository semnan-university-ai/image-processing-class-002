clc;
clear;
close all;

gpa = [4 4 3.7 3.3 3.0 2.7 2.3 2.0 1.7 1.3 1.0 0.7 0.0];
mark = input('\n enter in a mark out 20:');


if mark <=20 && mark >=0
    
    mark = mark * 5;
     if mark>=97 && mark<=100 
        fprintf('the mark of %f is equal to A+ which is equal to %f in gpa system\n', mark,gpa(1)); 
    elseif mark>=93 && mark<=96.99 
        fprintf('the mark of %f is equal to A which is equal to %f in gpa system\n', mark,gpa(2)); 
    elseif mark>=90 && mark<=92.99 
        fprintf('the mark of %f is equal to A- which is equal to %f in gpa system\n', mark,gpa(3)); 
    elseif mark>=87 && mark<=89.99 
         fprintf('the mark of %f is equal to B+ which is equal to %f in gpa system\n', mark,gpa(4)); 
    elseif mark>=83 && mark<=86.99 
         fprintf('the mark of %f is equal to B which is equal to %f in gpa system\n', mark,gpa(5)); 
    elseif mark>=80 && mark<=82.99 
         fprintf('the mark of %f is equal to B- which is equal to %f in gpa system\n', mark,gpa(6)); 
    elseif mark>=77 && mark<=79.99 
        fprintf('the mark of %f is equal to C+ which is equal to %f in gpa system\n', mark,gpa(7)); 
    elseif mark>=73 && mark<=76.99
        fprintf('the mark of %f is equal to C which is equal to %f in gpa system\n', mark,gpa(8)); 
    elseif mark>=70 && mark<=72.99 
         fprintf('the mark of %f is equal to C- which is equal to %f in gpa system\n', mark,gpa(9)); 
    elseif mark>=67 && mark<=69.99 
         fprintf('the mark of %f is equal to D+ which is equal to %f in gpa system\n', mark,gpa(10)); 
    elseif mark>=63 && mark<=66.99 
         fprintf('the mark of %f is equal to D which is equal to %f in gpa system\n', mark,gpa(11)); 
    elseif mark>=60 && mark<=62.99 
         fprintf('the mark of %f is equal to D- which is equal to %f in gpa system\n', mark,gpa(12)); 
    else
        fprintf('the mark of %f is a F which is equal to %f in gpa system\n', mark,gpa(13)); 
      end

else 
    fprintf('not a valid input , mark must be beteen 0-20\n');
    
end 

pause(3);

   
