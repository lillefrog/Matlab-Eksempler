% Demonstration af matlabs plot funktion
% Denne fil indeholder flere forskellige eksempler på hvordan matlabs plot
% funktion kan bruges. Den bliver gennemgået i min youtube video:
% https://youtu.be/Byj-STxbKnA 
%
% For mere information om matlabs plot funktions se matlabs reference side
% https://se.mathworks.com/help/matlab/ref/plot.html

%% Simple plot

% først skal vi bruge noget data, dette bliver bruget i alle følgende
% eksempler
x = [1 2 3 4 5 6 7 8 9 10 11 14 16];
data1 = [2 4 5 4 3 2 3 5 4 7 7 2 3];
data2 = [2 3 5 6 8 7 6 4 3 1 0 2 3];

% plot data uden x coordinater
plot(data1)

% plot data med x coordinater
plot(x, data1);
hold on % denne linje forhindre data i at blive overskrevet
plot(x, data2);
plot(x, data2+1);



%% Figure  (laver en ny figur)
figure('color', 'w', 'position', [-710 100 700 500]);
plot(x, data1);
hold on % denne linje forhindre data i at blive overskrevet
plot(x, data2);



%% linjer (farve og tykkelse)

figure('position', [-710 100 700 500]);
plot(x,data1, 'LineWidth', 2, 'Color', [1 0 0] );
hold on
plot(x,data2, 'y', 'LineWidth', 10);

% mulige farver
% 'y' 'm' 'c' 'r' 'g' 'b' 'w' 'k'
% eller
% [rød grøn blå] % hver farve er et tal mellem 0 og 1



%% Linjetype 
figure('position', [-710 100 700 500]);
plot(x, data1,'-.', 'LineWidth', 2 );
hold on
plot(x, data2,':', 'LineWidth', 2 );

% mulige linjetyper
% '-' '--' ':' '-.'



%% symboler / Marker
figure('position', [-710 100 700 500]);
plot(x, data1, '--gs');
hold on
plot(x, data2, '-.h', 'Marker', 'p', 'MarkerSize', 2, 'MarkerEdgeColor', 'b', 'MarkerFaceColor', [0.3,0.3,0.3]);

% mulige Markers
% 'o' '+' '*' '.' 'x' 's' 'd' '^' 'v' '>' '<' 'p' 'h'

% extra tip Du kan overskrive enkelte punkter/ overskriver det 6. punkt
plot(x(6), data1(6), 'rs','MarkerSize', 12);



%% titler / Labels

figure('position', [-710 100 700 500]);
plot(x, data1, '-r+');
hold on
plot(x, data2, 'b-s');

title('super flot plot')
xlabel('xdata')
ylabel('Noget andet', 'fontsize', 20)



%% axerne (ændre altid den aktive figur)

xlim([0 20]) % ændre grænserne for x aksen
ylim([0 10])

yticks([0 5 10])

xticks([1 2 3.14 5 6 9 12])
xticklabels({'A','B','\pi','C','E','9','3*4'})
xtickangle(45)



%% Logaritmiske akser
figure('position', [-710 100 700 500]);
plot(x, data1);
hold on
plot(x, data2);

set(gca, 'xScale', 'log') 
set(gca, 'yScale', 'log')

% dette kan også gøres med funktionerne semilogx og semilogy der virker
% lige som plot bortset fra at en af akserne autumatisk er logaritmisk

% semilogx(x,data1)



%% Legends

figure('position', [-710 100 700 500]);
p1 = plot(x, data1);
hold on
plot(x, data2+1, ':b');
p2 = plot(x, data2, '--r');

% legend({'Foam', 'Silicone', 'gas'});

legend([p1 p2], {'Foam','Silicone'});
p2.Marker = 'o';
p2.MarkerSize = 10;



%% tekst på figuren

figure('position', [-710 100 700 500]);
plot(x, data1);
hold on
plot(x, data2);

text(14, 6, 'vigtig note');

text(14, 7, 'vigtig note', 'Fontsize', 14, 'Color', 'r', 'FontName', 'Times', 'FontWeight', 'bold', 'Rotation', 55)

% Du kan også justere tegne en pil
quiver(14, 7, -2, -2, 'MaxHeadSize', 0.5)

 
 
%%  Tips til pæne figure

figure('position', [-710 100 700 500], 'color', 'w', 'DefaultAxesFontSize',14);
plot(x, data1, '-s', 'MarkerSize', 10, 'LineWidth', 2);
hold on
plot(x, data2, '-o', 'MarkerSize', 10, 'LineWidth', 2);
xlabel('xdata', 'fontsize', 18)
ylabel('Min ydata', 'fontsize', 18)
box off

text(14, 6, 'vigtig note', 'Fontsize', 18, 'Color', 'r', 'FontName', 'Times', 'FontWeight', 'bold', 'Rotation', 55)
quiver(13.9, 5.9, -1.5, -1.6, 'MaxHeadSize', 0.5, 'LineWidth', 2)

print(gcf,'fig1_autosaved.png','-dpng','-r600'); % gem figuren i høj opløsning, overskriver automatisk

% print(gcf,'fig1_autosaved.pdf','-dpdf'); % gem figuren i vector format



