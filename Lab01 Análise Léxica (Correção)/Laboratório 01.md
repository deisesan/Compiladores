## Enunciado - Laboratório 01 - Correção

```c

/* Você deve criar um programa na sua linguagem de programação */
/* sorteada que seja equivalente ao programa em C abaixo, utilizando */
/* as mesmas estruturas léxicas. Em seguida, você deve executar */
/* o seu parser léxico sobre este programa e gerar a saída tokenizada */
/* dele. Em seguida, você deve apresentar esta execução ao docente */
/* em aula de laboratório. */

#include<stdio.h>

typedef struct {
   int x;
   int y;
} ponto_t;

double func(ponto_t v[], int n) {
    if (n <= 0) {
        return 1.0; 
    } else if (n == 1) {
        return 1.01 + v[0].x / 1.e2 + v[0].y / 0.1e-2;
    }

    double res = .25e-13;

    for (int i = n-1; i >= 0 && v[i].x > 0; --i) {
       double temp = v[i].y * v[i].x % 123;

       if (temp < 0.0) {
          res -= res*2.e-2 +  func(v, n-1) * temp;
         } else {
          res += res*.3e3 +func(v, n-2) * temp;
          printf("Estranho, ne?\n");
       }
    }

    return res;
}
```

/* Numbers */
/* <#UNSIGNED_NUMBER:  <UNSIGNED_INTEGER> | <UNSIGNED_REAL>> */
/* <#UNSIGNED_INTEGER: <DIGIT_SEQUENCE> | <HEX_DIGIT_SEQUENCE> | <OCTAL_DIGIT_SEQUENCE> | <BIN_DIGIT_SEQUENCE>> */
/* <#UNSIGNED_REAL: (<DIGIT> (<DIGIT>)*)+ "." (<DIGIT> (<DIGIT>)*)* (<EXP> (<SIGNAL>)? (<DIGIT>)+)?> */
/* <SIGNED_NUMBER:  (<SIGNAL>)? <UNSIGNED_NUMBER>> */

![Captura de tela de 2024-08-01 19-08-01](https://github.com/user-attachments/assets/122bbc3a-788a-43e4-97cc-b5081c605d27)
