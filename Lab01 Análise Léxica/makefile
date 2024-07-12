all:
	javacc Parser.jj
	javac *.java
	clear
	java Parser entrada.in
	rm *.java
	rm *.class
clean:
	rm *.java
	rm *.class