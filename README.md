# IS-Lab3 (EN)
Intelligent systems. Task for the laboratory on Radial Basis Function Network training.
# Aim
Learn to write training (parameter estimation) algorithm for the Radial Basis Function Network based approximator's 2nd laye.
# Tasks (maximum 8 points)
1. Create a Radial Basis Function Networks for approximation with:
- single input;
- single output;
- two Gaussian radial basis functions: F = exp(-(x-c)^2/(2*r^2)).
2. Train the RBF network for approximation task for use 20 examples:
- input values are generated using equation x = 0.1: 1/22: 1;
- desired output values are calculated using formula y = (1 + 0.6 \* sin (2 \* pi \* x / 0.7)) + 0.3 \* sin (2 \* pi \* x)) / 2;
- select manually c1, r1 for the first RBF and c2, r2 for the second RBF;
- use perceptron training algorithm for estimating output layer parameters w1, w2, w0.

# Additional task (2 additional points)
Implement any alternative RBF training algorithm, where center positions c1, c2 and radius values r1, r2 are updated during training.

# Suggested reading
- Neural Networks and Learning Machines (3rd Edition), page 54 for main task (or 261-267 for additional task), Table 1.1. 

# IS-Lab3 (LT)
Intelektualiosios sistemos. Trečiojo laboratorinio darbo užduotis.
# Tikslas
Išmokti savarankiškai suprogramuoti paprasto netiesinio aproksimatoriaus, grįsto Spindulio tipo bazinių funkcijų tinklu, mokymo (parametrų skaičiavimo) algoritmą.
# Užduotys (maks. 8 balai)
1. Sukurkite spindulio tipo bazinių funkcijų (SBF) tinklo parametrams apskaičiuoti skirtą programą. SBF turi atlikti aproksimatoriaus funkciją. SBF struktūra:
- vienas įėjimas (įėjime paduodamas 20 skaičių vektorius X, su reikšmėmis intervale nuo 0 iki 1, pvz., x = 0.1:1/22:1; ).
- vienas išėjimas (pvz., išėjime tikimasi tokio norimo atsako, kurį galima būtų apskaičiuoti pagal formulę: y = (1 + 0.6\*sin(2\*pi\*x/0.7)) + 0.3\*sin(2\*pi\*x))/2; - kuriamas neuronų tinklas turėtų "modeliuoti/imituoti šios formulės elgesį" naudodamas visiškai kitokią matematinę išraišką nei ši);
- dvi spindulio tipo funkcijos (naudokite Gauso funkcijas: F = exp(-(x-c)^2/(2*r^2)));
- centrų reikšmes c1 ir c2, spindulių reikšmes r1 ir r2 parinkite rankiniu būdu;
- tiesine aktyvavimo funkcija išėjimo neurone;
- mokymo algoritmas skirtas išėjimo parametrams w1, w2 ir w0 apskaičiuoti - toks pat kaip ir perceptrono mokyme (1 LD).
# Papildoma užduotis (papildomi 2 balai)
Apmokykite SBF tinklą kitu algoritmu, kuris taip pat atnaujina/parenka automatiškai ir centrų c1, c2 bei spindulių r1, r2 reikšmes.
# Rekomenduojama literatūra
- Neural Networks and Learning Machines (3rd Edition), pagrindinei užduočiai užtenka perceptrono parametrų atnaujinimo algoritmo 54 psl., papildomai užduočiai 261-267 psl. pateiktos santraukos k-means + RLS/LMS.
