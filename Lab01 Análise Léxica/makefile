# Variáveis para detecção do sistema operacional
ifeq ($(OS),Windows_NT)
	RM = del /Q
	CLEAR = cls
else
	RM = rm -f
	CLEAR = clear
endif

# Alvo padrão
all: compile run

# Compilar e executar
compile:
	javacc Parser.jj
	javac *.java

run:
	java Parser entrada.pas

# Limpar arquivos temporários
clean:
	$(RM) *.java *.class
	$(CLEAR)