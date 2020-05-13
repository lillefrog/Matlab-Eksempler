% Demonstration af matlabs anova1 funktion
% Denne fil indeholder flere forskellige eksempler på hvordan matlabs
% anova1 funktion kan bruges. 
% Den bliver gennemgået i min youtube video:
% https://youtu.be/AMRg2YoXIxU 
% 
% Denne funktion kræver at Statistics and Machine Learning Toolbox er
% installeret. Hvis den ikke allerede er installeret skulle der komme en
% advarsel når i prøver at køre funktionen og et link til hvordan i kan få
% den installeret. 
%
% For mere information om matlabs anova1 funktion se matlabs reference side
% https://se.mathworks.com/help/stats/one-way-anova.html




%% balanceret ANOVA
% Vores data
A = [34 28 37 26 40 34 62 51 15 44 26 37 42 47 37 56 35 43 47 41];
B = [49 43 32 22 59 34 41 46 41 31 35 39 55 31 48 43 38 29 37 39];
C = [38 55 45 52 56 44 50 57 35 63 77 63 50 57 43 72 62 61 44 56];
D = [24 26 24 21 22 27 16 32 27 33 30 31 18 21 25 29 36 26 37 31];

X=[A;B;C;D]';
group = {'Aa','B','C','D'};

[p,tbl,stats] = anova1(X,group);


[results,means] = multcompare(stats); % Tukey's honest significant difference criterion



%% ubalanceret ANOVA

% den simple måde
data   = [38  55  45  52  56  44  50  57  35  63  77  63  50  57  33  30  31  18  21  25  29  36];
gruppe = {'A' 'A' 'A' 'A' 'A' 'A' 'A' 'A' 'A' 'A' 'A' 'A' 'A' 'A' 'B' 'B' 'B' 'B' 'B' 'B' 'B' 'B'};

[p,tbl,stats] = anova1(data,gruppe);




% den komplicerede måde (for store dataset)
A = [34 28 37 26 40 34 62 51 15 44 26 37 42 47 37];
B = [49 43 32 22 59 34 41 46 41 31 35 39 55 31 48 43 38 29 37 39];
C = [38 55 45 52 56 44 50 57 35 63 77 63 50 57 43 72 62 61 44];
D = [24 26 24 21 22 27 16 32 27 33 30 31 18 21 25 29 31];

groupA    = cell(1, length(A));
groupA(:) = {'Aa'};

groupB    = cell(1, length(B));
groupB(:) = {'B'};

groupC    = cell(1, length(C));
groupC(:) = {'C'};

groupD    = cell(1, length(D));
groupD(:) = {'D'};

data2 = [A,B,C,D]';
group2 = [groupA,groupB,groupC,groupD]';

[p,tbl,stats] = anova1(data2,group2);

[results,means] = multcompare(stats);