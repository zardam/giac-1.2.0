ENGLISH (FRANCAIS voir plus bas)
KhiCAS, free (GPL3) computer algebra system for TI nspire CX calculators, OS version 3.6/3.9, with support for multi-precision floats and interval arithmetic.
For black and white nspire, please try
http://www-fourier.ujf-grenoble.fr/public_html/calc/khicasbw.zip

You must install ndless to run giac, see tiplanet.org/forum/ndl3ss.php
Then send luagiac.luax.tns and khicas to your calculator. 
Then from Home, My Documents, select khicas and press Enter.
You can run all Xcas commands from here, for example
a:=partfrac(1/(x^4-1))
normal(a)
factor(a)
ifactor(2^128+1)
evalf(pi,30)
For help on a command, type ? then the commandname (from menu or keyboard)

Important note: if the luagiac module fails to load, make sure
ndless is active, run ndless_installer if it is not and try again.

Giac (c) 2015 B. Parisse and R. De Graeve, GPL 3 license (see COPYING file)
Linked with GMP/MPFR/MPFI
khicas (OS 3.6) UI based on SuperSpire from Xavier "critor" Andréani's ,
modified by Jim Bauwens and Adrien "Adriweb" Bertrand
Thanks to Vogtinator, Excale, Extended for help to compile.
==========================
FRANCAIS
KhiCAS, logiciel libre (GPL3) de calcul formel pour calculatrices TI nspire CX, OS version 3.6/3.9, avec support flottants multi-precision et arithmetique d'intervalles
Pour les nspire noir et blanc, vous pouvez installer
http://www-fourier.ujf-grenoble.fr/public_html/calc/khicasbw.zip

Vous devez installer ndless pour utiliser khicas, voir le tutoriel sur
 tiplanet.org/forum/ndl3ss.php
Ensuite telecharger luagiac.luax.tns et khicas.tns sur votre calculatrice 
Ensuite Home, Mes Documents selectionnez khicas.tns et pressez Enter.
On peut taper toutes les commandes Xcas, par exemple
f(x):=1/(x^2+2x-3)
factor(f'(x))
ifactor(2^128+1)
evalf(pi,30);
Pour avoir de l'aide sur une commande tapez ? puis le nom de la commande
(avec ou sans l'aide du menu)

Note importante: si le module luagiac ne se charge pas, verifier
que ndless est active, si ce n'est pas le cas relancez ndless_installer

Giac (c) 2015 B. Parisse and R. De Graeve, GPL 3 license (cf. fichier COPYING)
Utilise GMP/MPFR/MPFI
khicas (OS 3.6) UI base sur SuperSpire de Xavier "critor" Andréani ,
modifie par Jim Bauwens et Adrien "Adriweb" Bertrand
Remerciements a Vogtinator, Excale, Extended pour l'aide apportee pour compiler.
