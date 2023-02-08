% Intelektualiosios sistemos
% Laboratorinis darbas Nr.3
% Netiesinio aproksimatoriaus algoritmas
% Tadas Vasiliauskas DISfm-22

% Pasirinkime DNT struktūra
% Vienas įėjimas x
% Vienas paslėptasis sluoksnis su 2 neuronais
% Vienas išėjimas y1

%% 1. Surinktas/paruoštas mokymo duomenų rinkinys
x = 0.1:1/22:1;
y = (1 + 0.6*sin(2*pi*x/0.7) + 0.3*sin(2*pi*x))/2;

%% 2. Generuojamos pradinių ryšių svorių reikšmės
% sluoksnio parametrai mokymui
w0 = rand(1);
w1 = rand(1); 
w2 = rand(1);

mok_zing = 0.15;

% Spindulio tipo bazinių funkcijų tinklo parametrai
% Centrų reikšmės c1 ir c2 ir
% spindulių reikšmės r1 ir r2 nustatomos rankiniu būdu
c1 = 0.18;
c2 = 0.88;
r1 = 0.25;
r2 = 0.27;

%% 3. Apskaičiuojami parametrai
for indx = 1:10000
    for n = 1:20

        % Spindulio bazinių funkcijų (SBF) atsakų skaičiavimas
        SBF1 = exp(-(x(n) - c1)^2/(2*r1^2));
        SBF2 = exp(-(x(n) - c2)^2/(2*r2^2));

        % Tinklo atsako skaičiavimas
        y1 = SBF1*w1 + SBF2*w2 + w0;
        y2 = y1;

        % Skaičiuojama klaida
        e = y(n) - y2;

        w1 = w1 + mok_zing * e * SBF1;
        w2 = w2 + mok_zing * e * SBF2;
        w0 = w0 + mok_zing * e;
    end
end

    for n = 1:20
        % Spindulio bazinių funkcijų (SBF) atsakų skaičiavimas
        SBF1 = exp(-(x(n) - c1)^2/(2*r1^2));
        SBF2 = exp(-(x(n) - c2)^2/(2*r2^2));

        % Tinklo atsako skaičiavimas
        y1 = SBF1*w1 + SBF2*w2 + w0;
        y2(n) = y1;
    end

    figure, plot(x,y,'k*',x,y2,'rx')