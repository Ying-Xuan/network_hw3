all:
	gcc -o gotcha gotcha.c -lpcap
clean:
	rm -f gotcha

