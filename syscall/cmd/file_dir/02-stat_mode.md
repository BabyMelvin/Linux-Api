## 1.文件类型
文件类型对应于，stat中mode成员，大多数是普通文件或目录．还包含如下几种文件类型:

* 1.普通文件(regular file):文本或二进制并没做区别．
* 2.目录文件(directory file):包含其他文件名字以及这些文件有关信息的指针.
* 3.块特殊文件(block speical file):文件提供对设备带缓冲访问，每次访问固定长度为单位.
* 4.字符特殊文件(character special file):这类文件访问不带缓冲设备，每次访问长度可变．
* 5.FIFO:有名管道文件．
* 6.套接字:进程间网络通讯
* 7.符号链接(symbolic link):该文件指向另一个文件．

文件类型对应stat中mode成员，用宏参数确定文件类型:

｜宏|文件类型|
|--|--|
|S_ISREG()|普通文件|
|S_ISDIR()|目录文件|
|S_ISCHR()|字符文件|
|S_ISBLK()|块特殊文件|
|S_ISFIFO()|管道或FIFO|
|S_ISLINK()|符号链接|
|S_ISSOCK()|套接字|

## 2.用户ID和组ID
于一个进程相关的ＩＤ有６个或更多：

```
------------------------------------
实际用户ID
实际组　ID            我们实际ＩＤ
_____________________________________
有效用户ID
有效组  ID
附属组　ID            用于文件访问权限检查
______________________________________
保存的设置用户ID
保存的设置组ID        由exec函数保存
--------------------------------------
```

* 实际用户/组ＩＤ:通常登录时后的登录口令．登录期间这值不会变．超级用户可以改变他们.
* 有效用户/组ＩＤ:决定我们文件访问权限．
* 保存用户/组ＩＤ：执行一个程序包含有效用户ＩＤ和有效组ＩＤ的副本．(`setuid函数将用到这两个值`)

通常有效的和实际相等．文件所有者由staｔ中的`st_uid`和`st_gid`决定．

当执行一个程序文件时，进程有效用户ID通常就是实际用户ID,组ID也是的．
但可以在文件模式字中设置一个特殊标志，当执行文件时将进程的有效用户ＩＤ设置为文件所有者用户ID(st_uid)．
类似的，文件模式字中可以设置另一位，将执行此文件的有效组ID和设置为文件的组所有者ＩＤ.

用`S_ISUID`和`S_ISGID`测试．

## 3.文件访问权限
文件访问权限是前面所有类型共有的属性．每个文件有９个访问权限:

|st_mode屏蔽|含义|
|--|--|
|Ｓ_IRUSER/S_IRGRP/S_IROTH|用户/组/其他读|
|S_IWUSER/S_IWGRP/S_IWOTH|用户/组/其他写|
|S_IXUSER/S_IXGRP/S_IXOTH|用户/组/其他执行|
