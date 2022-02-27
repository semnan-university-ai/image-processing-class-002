```
%GPA score system
clc;
clear;
close all;
studnetnumber = input("enter a number: ");
if studnetnumber >= 0 && studnetnumber <= 20
    studnetnumber = studnetnumber * 5;
    if studnetnumber >= 97 && studnetnumber <= 100
        ans = "A+"
    elseif studnetnumber >= 93 && studnetnumber <= 96
        ans = "A"
    elseif studnetnumber >= 90 && studnetnumber <= 92
        ans = "A-"
    elseif studnetnumber >= 87 && studnetnumber <= 89
        ans = "B+"
    elseif studnetnumber >= 83 && studnetnumber <= 86
        ans = "B"
    elseif studnetnumber >= 80 && studnetnumber <= 82
        ans = "B-"
    elseif studnetnumber >= 77 && studnetnumber <= 79
        ans = "C+"
    elseif studnetnumber >= 73 && studnetnumber <= 76
        ans = "C"
    elseif studnetnumber >= 70 && studnetnumber <= 72
        ans = "C-"
    elseif studnetnumber >= 67 && studnetnumber <= 69
        ans = "D+"
    elseif studnetnumber >= 65 && studnetnumber <= 66
        ans = "D"
    elseif studnetnumber < 65
        ans = "E/F"
    end
else
    ans = "Out of range"
end
```