#include <stdio.h>
#include <pthread.h>

int i=1000;
void * fun_t(void *pArgs)
{
    while(1)
    {
        sleep(5);
        printf("fun_t pthread\n");
    }
}
int fun()
{
    pthread_t p;
    pthread_create(&p, 0, fun_t, NULL);

    printf("fun_____!\n");
    return 0;
}
