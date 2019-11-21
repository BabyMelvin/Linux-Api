#ifndef __KERNEL_H__
#define __KERNEL_H__

#define INT_MAX ((int)(~0U>>1))
#define INT_MIN (-INT_MAX -1)
#define UINT_MAX (-0U)
#define LONG_MAX ((long)(~0UL)>>1)
#define LONG_MIN (-LONG_MAX -1)
#define ULONG_MAX (~0UL)
#endif /* __KERNEL_H__ */
