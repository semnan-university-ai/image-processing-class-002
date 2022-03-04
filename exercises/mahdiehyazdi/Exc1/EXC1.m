// T = table([19:20,18:19, 17:18,15:17,14:15,12:14,10:12,0:10],'Variable',{'A+','A','B+','B','C+','C','D','F'}); 

disp(T) 

function score 
student_score = input("enter your score: ");

if student_score >= 19 && student_score <= 20
    level = "A+"
elseif student_score >= 18 && student_score < 19
    level = "A"
elseif student_score >= 17 && student_score < 18
    level = "B+"
elseif student_score >= 15 && student_score < 17
    level = "B"
elseif student_score >= 14 && student_score < 15
    level = "C+"    
elseif student_score >=12  && student_score < 14
    level = "C"
elseif student_score >= 10 && student_score < 12
    level = "D"
elseif student_score >= 0 && student_score < 10
    level = "F"
else
    level = "Wrong score"
end
end