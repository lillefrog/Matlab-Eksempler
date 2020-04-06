% Demo histogram

% her er nogle data, normalt ville jeg loade dem fra en datafil, se
% tidliger video
AGE = [75;56;54;55;75;13;40;49;44;50;62;45;54;30;44;47;47;46;73;57;28;45;36;57;40;44;34;31;56;51;53;58;50;52;69;44;50;35;62;45;43;40;30;34;40;75];
% Jeg skriver AGE med store bogstaver fordi det er en hardcoded konstant



%% vi kan bare bruge funktionen direkte, det vil ofte virke ok

histogram(AGE)

% Der skal dog noget information til før det vil blive godkent i en rapport

xlabel('alder')
ylabel('antal personer')

% vi mangler lige en rettelse, der skal være enheder på
xlabel('alder (år)')




%% Nu kan vi gøre det lidt mere avanceret

bins = 0:10:100 ; % hvilken grupper vil vi putte vores data i
histogram(AGE,bins)

xlabel('alder (år)')
ylabel('antal personer')

% og aksen skal lige være lidt størrer
ylim([0 18])
xlim([0 100])

%% 
bins = 1:10:100 ;
histogram(AGE, bins, 'displayStyle', 'stairs')

%% eller meget avanceret

bins = 1:10:100 ;

% histogram(AGE,bins, 'Orientation', 'horizontal', 'lineStyle', '-', 'lineWidth', 0.1, 'edgeColor', [0 0 0], 'edgeAlpha', 0.9, 'faceColor', [0 0 1], 'faceAlpha', 0.9)


histogram(AGE,bins, ...
        'Orientation', 'horizontal', ...
        'lineStyle', '-', ...       % linjetype ('-' '--' ':' '-.' 'none' 'auto')
        'lineWidth', 0.1, ...       % linjetykkelse
        'edgeColor', [0 0 0], ...   % farve of histogram linje [rød grøn blå]
        'edgeAlpha', 0.9, ...       % gennemsigtighed of histogram linje (0=helt gemmensigtig, 1=helt solid)
        'faceColor', [0 1 1], ...   % farve of histogram flade [rød grøn blå]
        'faceAlpha', 0.9 ...        % gennemsigtighed of histogram flade (0=helt gemmensigtig, 1=helt solid)
        )

 ylabel('antal personer', 'fontSize', 14)
 xlabel('alder (år)', 'fontSize', 14)

% gca er en specialfunktion der finder den aktuelle figur 
 set(gca,'fontSize',20)
 % set(gca,'lineWidth',2)
 % set(gca,'color',[0 0 0])

 % set(gca,'fontName', 'Comic Sans MS') % denne linje vil jeg aldrig se i jeres kode !!!

%% Min favorit

bins = 0:10:100 ;

histogram(AGE,bins, 'Orientation', 'horizontal', 'lineStyle', '-', 'lineWidth', 0.1, 'edgeColor', [0 0 0], 'edgeAlpha', 0.9, 'faceColor', [0 0 1], 'faceAlpha', 0.9)


histogram(AGE,bins, ...
        'lineStyle', '-', ...       % linjetype ('-' '--' ':' '-.' 'none' 'auto')
        'lineWidth', 0.1, ...       % linjetykkelse
        'edgeColor', [0 0 0], ...   % farve of histogram linje [rød grøn blå]
        'edgeAlpha', 0.9, ...       % gennemsigtighed of histogram linje (0=helt gemmensigtig, 1=helt solid)
        'faceColor', [0 1 1], ...   % farve of histogram flade [rød grøn blå]
        'faceAlpha', 0.9 ...        % gennemsigtighed of histogram flade (0=helt gemmensigtig, 1=helt solid)
        )

set(gca,'fontSize',12)
set(gca,'lineWidth',1)    
ylabel('Antal personer', 'fontSize', 14)
xlabel('Alder (år)', 'fontSize', 14)

% xlim([0 10])

