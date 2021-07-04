%{
MATLAB Coder™ genera i codici C e C ++ a partire dal codice MATLAB® per un’ampia gamma di piattaforme
hardware, dai sistemi desktop all'hardware embedded. Supporta buona parte del linguaggio MATLAB e una
vasta gamma di toolbox. È possibile integrare il codice generato nei propri progetti come codice sorgente,
librerie statiche o librerie dinamiche. Il codice generato è leggibile e portabile. 
Sarà possibile combinarlo con le parti fondamentali del proprio codice C e C++ esistente e delle librerie.
È inoltre possibile pacchettizzare il codice generato come funzione MEX da usare in MATLAB.

Se usato con Embedded Coder®, MATLAB Coder consente di personalizzare il codice, creare ottimizzazioni
target-specific, tracciare il codice ed effettuare verifiche Software-In-the-Loop (SIL) e 
Processor-In-the-Loop (PIL).

Per distribuire programmi MATLAB come applicazioni standalone, è possibile utilizzare MATLAB Compiler™.
Per generare componenti software per l’integrazione con altri linguaggi di programmazione, 
usa MATLAB Compiler SDK™.

https://it.mathworks.com/products/matlab-coder.html
%}

%% 
% STATIC LIBRARY (.lib) and DYNAMIC LIBRARY (.dll)
%{ 
Static libraries, while reusable in multiple programs, are locked into a program at compile time. 
Dynamic, or shared libraries on the other hand, exist as separate files outside of the executable file.

The downside of using a static library is that it’s code is locked into the final executable file and cannot be modified without a re-compile.
In contrast, a dynamic library can be modified without a need to re-compile.

Because dynamic libraries live outside of the executable file, the program need only make one copy of the library’s files at compile-time.
Whereas using a static library means every file in your program must have it’s own copy of the library’s files at compile-time.

The downside of using a dynamic library is that a program is much more susceptible to breaking. 
If a dynamic library for example becomes corrupt, the executable file may no longer work. 
A static library, however, is untouchable because it lives inside the executable file.

The upside of using a dynamic library is that multiple running applications can use the same library without the need for each to have it’s own copy.

Another benefit of using static libraries is execution speed at run-time. Because the it’s object code (binary) is already included in the executable file,
multiple calls to functions can be handled much more quickly than a dynamic library’s code, which needs to be called from files outside of the executable.
%}

