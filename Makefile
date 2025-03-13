
all: build run

build:
	javac -d bin Main.java
	javac -d bin aulas/*.java
	javac -d bin libs/*.java

run: build
	java -cp bin Main

clear:
	rm -r bin

teste: build 
	java -cp bin Main < testes/1001/1.in > saida.tmp
	echo "Saída"
	cat saida.tmp
	echo "Esperado:"
	cat testes/1001/1.out
	rm saida.tmp

git:
	git config --global user.name eliel2703
	git config --global user.email elielrodrigocordeiro@gmail.com