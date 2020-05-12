% Demonstration af matlabs ttest funktion
% Denne fil indeholder flere forskellige eksempler på hvordan matlabs ttest
% funktion kan bruges. Den bliver gennemgået i min youtube video:
% https://youtu.be/Byj-STxbKnA 
%
% For mere information om matlabs ttest funktionen se matlabs reference side
% https://se.mathworks.com/help/stats/ttest.html
% eller ttest2 på denne side
% https://se.mathworks.com/help/stats/ttest2.html



%% Parred t-test

HA1 = [38 55 45 52 56 44 50 57 35 63 77 63 50 57 43 72 62 61 44 56];
HA2 = [24 26 24 21 22 27 16 32 27 33 30 31 18 21 25 29 36 26 37 31];

[h,p,ci,stats] = ttest(HA1,HA2)


%% Uparred t-test

A = [38 55 45 52 56 44 50 57 35 63 77 63 50 57 43 72 62 61 44 56];
B = [38 46 54 41 52 47 46 62 37];

[h,p,ci,stats] = ttest2(A,B)


