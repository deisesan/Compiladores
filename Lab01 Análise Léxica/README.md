## Enunciado - Laboratório 01

Escreva um programa de computador que faça análise léxica do texto de um programa de computador na linguagem sorteada para você. Nesta análise não é necessário tratar modo XML (Scala), nem validade de caractere Unicode (Go). 

Seu programa deve identificar todos os lexemas/tokens/unidades léxicas da linguagem. Sugiro fortemente utilizar um gerador automático de parser léxico, tal como JavaCC, ou uma linguagem com suporte a expressões regulares, tal como Rub.

A saída do seu programa deve conter uma linha para cada lexema/token/unidade léxica encontrada. A primeira string até o primeiro espaço de cada linha deve ser uma palavra cujas letras estejam em MAIÚSCULO identificando a classe do token. Por exemplo, ID para identificador, NUM_DEC para número decimal. 

Você deve escolher os nomes para as classes de Tokens e explicar ao docente no momento da apresentação. Em seguida, deve vir um espaço seguido pela sequência de caracteres do arquivo de entrada que correspondem ao token correspondente a esta linha.
