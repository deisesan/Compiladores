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
	@if [ -z "$(file)" ]; then \
        echo "Error: No input file specified. Usage: make all <filename>"; \
        exit 1; \
    fi
	java Parser $(file)

# Comando Clean
clean:
	$(RM) *.java *.class
	$(CLEAR)

cleanArchive: 
	$(RM) *.java *.class