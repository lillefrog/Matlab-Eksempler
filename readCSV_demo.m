% readCSV demo
% Denne fil viser hvordan man kan l�se en CSV fil og f� data ind i matlab.
% Denne video forklarer hvordan filen virker
% https://youtu.be/ta2RZLo-eLU


% l�s data fra CSV file
FileName = 'Test1.csv';
fileID = fopen(FileName,'r'); % �ben filen for l�sning (r=read, w=write, rw=read/write)


% scan teksten for tal og tekst (denne linje skal tilpasses til det tekst
% du vil l�se
C = textscan(fileID, '%f %f %s %f %f %f %f %f %f', 'Delimiter', ',', 'HeaderLines', 1, 'EmptyValue', NaN);
% Delimiter kan v�re ; , /t (tab)
% data kan v�re %s (tekst) %d (heltal) %f (decimaltal)

% Tag en af data serierne og giv den et mere forst�eligt navn
AGE = C{2};

% brug vores data til en udregning
Gennemsnit_Alder = mean(AGE) 

% n�r vi er f�rdig med at l�se filen skal den lukkes s� andre programmer
% kan bruge den. Hvis du glemmer dette kan det v�re n�dvendigt at lukke
% matlab helt ned f�r du kan �bne filen igen.
fclose(fileID); 


