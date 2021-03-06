#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>

int makethread(void* (*fn)(void*), void* arg)
{
    int err;
    pthread_t tid;
    pthread_attr_t attr;

    err = pthread_attr_init(&attr);
    if (err != 0)
        return err;

    // 显示设置线程创建的链接状态,  设置为不关心退出状态detached,系统回收相资源
    err = pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_DETACHED);
    if (err == 0)
        err = pthread_create(&tid, &attr, fn, arg);

    pthread_attr_destory(&attr);

    return err;
}
