#include <stdio.h>
#include <string.h>
#include "calc.h"
int main(){
	char input[10];
	printf("please select:\n");
	printf("1:test1\n");
	printf("2:test2\n");
	scanf("%s", input);
	printf("you selected:%s\n", input);
	if(!isDigit(input)) {
		printf("not digit");	
	}else {
		printf("digit");
	}
	
	//func5();
	//int c = calc(23, 35);
}

int isDigit(char* str) {
	int len = strlen(str);
	int i=0;
	if(len > 1) {
		for(i=0;i<len;i++) {
			if(i==0) {
				if(str[i] < '1' || str[i] > '9') {
					return 0;
				}
			}else {
				if(str[i] < '0' || str[i] > '9') {
					return 0;
				}
			}
		}

		return 1;
	}else {
		if(str[0] >= '1' && str[0] <= '9') {
			return 1;
		}	
	}
	return 0;
}
