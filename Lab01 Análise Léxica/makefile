all:
	javacc Parser.jj
	javac *.java
	clear
	java Parser entrada.pas
	rm *.java
	rm *.class
clean:
	rm *.java
	rm *.class