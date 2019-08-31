#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int check_serial(char *serial) {
	int flag = 0;
	char serial_buff[16];
	strcpy(serial_buff, serial);
	if (strcmp(serial_buff, "SN123456") == 0) flag = 1;

	return flag;
}

int main(int argc, char *argv[]) {
	if(argc < 2) {
		printf("enter serial number\n", argv[0]);
		exit(0);
	}

	if(check_serial(argv[1])) {
		printf("serial correct\n");
	} else {
		printf("serial wrong\n");
	}
}
