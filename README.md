# Tutorato 2

Link pdf esercitazioni: https://virtuale.unibo.it/pluginfile.php/1203721/mod_folder/content/0/Esercitazione_Sistemi_Non_Lineari.pdf?forcedownload=1

#### Esercizi

1. Confrontare i metodi `newtonSys.m`, `newtonSys.m` e `newtonSys.m` nella soluzione di sistemi di equazioni non lineari dati (utilizzare _tolx = tolf = 1e^-12_ ed _NMAX = 500_).

#### Riferimenti ad altri laboratori

Questa esercitazione è stata svolta anche nel `Lab08` e nel `Lab09`.

Link pdf esercitazioni: https://virtuale.unibo.it/pluginfile.php/1198177/mod_folder/content/0/Esercitazione_Zeri_Funzioni.pdf?forcedownload=1

#### Esercizi

2. Calcolare il valore di _8^(1/3)_ facendo uso dei metodi `bisezione.m`, `falsi.m`, `corde.m`, `secanti.m` e `newton.m`, fissata una tolleranza _tolx = tolf = 1e^-10_ e sperimentando al variare dell'iterato iniziale _x0_ per il metodo `newton.m` ed _x0_ ed _x\_-1_ per il metodo `secanti.m`
3. Fissato un valore _y0 ∈ [-1, 1]_, individuare, facendo uso del metodo `bisezione.m`, l'unico valore _x0 ∈ [-pi/2, pi/2]_ tale che _sin(x0) = y0_;
4. Utilizzare il metodo `newtonModificato.m` per il calcolo dello zero di molteplicità 2 della funzione _f(x) = x^3 + x^2 - 33x + 63_ con _x0 = 1_, _tolx = tolf = 1e^-12_. Calcolare infine, a partire dai valori di _{xk}_ ottenuti nei due casi, la stima dell'ordine di convergenza _p_.

#### Riferimenti ad altri laboratori

Questa esercitazione è stata svolta anche nel `Lab07`.
