% readCSV demo
% Denne fil viser hvordan man kan læse en CSV fil og få data ind i matlab.
% Denne video forklarer hvordan filen virker
% https://youtu.be/ta2RZLo-eLU


% læs data fra CSV file
FileName = 'Test1.csv';
fileID = fopen(FileName,'r'); % åben filen for læsning (r=read, w=write, rw=read/write)


% scan teksten for tal og tekst (denne linje skal tilpasses til det tekst
% du vil læse
C = textscan(fileID, '%f %f %s %f %f %f %f %f %f', 'Delimiter', ',', 'HeaderLines', 1, 'EmptyValue', NaN);
% Delimiter kan være ; , /t (tab)
% data kan være %s (tekst) %d (heltal) %f (decimaltal)

% Tag en af data serierne og giv den et mere forståeligt navn
AGE = C{2};

% brug vores data til en udregning
Gennemsnit_Alder = mean(AGE) 

% når vi er færdig med at læse filen skal den lukkes så andre programmer
% kan bruge den. Hvis du glemmer dette kan det være nødvendigt at lukke
% matlab helt ned før du kan åbne filen igen.
fclose(fileID); 


