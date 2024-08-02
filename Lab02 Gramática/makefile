# Detecção do SO
ifeq ($(OS),Windows_NT)
	RM = del /Q
	CLEAR = cls
else
	RM = rm -f
	CLEAR = clear
endif

# Comando All
all: compile run cleanArchive

# Comando Compile
compile:
	javacc Parser.jj
	javac *.java

# Comando Run
run:
	java Parser codigo.pas

# Comando Clean
clean:
	$(RM) *.java *.class
	$(CLEAR)

cleanArchive: 
	$(RM) *.java *.class