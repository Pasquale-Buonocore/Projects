How the compilation process work:

Four Steps of Compilation: preprocessing, compiling, assembly, linking.
<img src=![image](https://user-images.githubusercontent.com/63344599/124754452-881aa480-df2a-11eb-99ad-41c04178cbeb.png) alt="drawing" width="200"/>


![image](https://user-images.githubusercontent.com/63344599/124754452-881aa480-df2a-11eb-99ad-41c04178cbeb.png)

<h1>Preprocessing:</h1>
Preprocessing is the first step. The preprocessor obeys commands that begin with # (known as directives) by:

- removing comments
- expanding macros
- expanding included files

If you included a header file such as #include <stdio.h>, it will look for the stdio.h file and copy the header file into the source code file.
The preprocessor also generates macro code and replaces symbolic constants defined using #define with their values.
