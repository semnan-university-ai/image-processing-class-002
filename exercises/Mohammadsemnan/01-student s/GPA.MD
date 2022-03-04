

کد متلب برای GPA در بازه 1-20 که با ضزیب 5 محاسبه میشود

```
%GPA
clear
clc
grade=input("please enter your score from 1-20 :");
final=grade*5;
if(final >=95) && (final <= 100)
    disp('Your score is A+')
elseif(final >=90) && (final <= 94)
    disp('Your score is A')
elseif(final >=85) && (final <= 89)
    disp('Your score is B+')
elseif(final >=80) && (final <= 84)
    disp('Your score is B')
elseif(final >=75) && (final <= 79)
    disp('Your score is C+')
elseif(final >=70) && (final <= 74)
    disp('Your score is C')
elseif(final >=65) && (final <= 69)
    disp('Your score is D+')
elseif(final >=60) && (final <= 64)
    disp('Your score is D')
elseif(final >=0) && (final <= 59)
    disp('Your score is F')
else
    disp('System does not accept your score')
end
```
