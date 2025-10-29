#include <stdio.h>

extern char *get_message(void);

int main(void) {
    char *s = get_message();
    printf("%s\n", s);
    return 0;
}
