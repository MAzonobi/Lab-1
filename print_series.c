#include <stdio.h>

extern unsigned char ram[];   // RAM declared in assembly
extern void sum_to_10(void);  // Assembly function

int main()
{
    sum_to_10();   // Run assembly code to compute the series sum

    printf("Sum of series 1 + 2 + ... + 10 stored at RAM[50H]:\n");
    printf("%02X\n", ram[0x50]);  

    return 0;
}