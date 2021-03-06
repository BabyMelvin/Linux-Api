# example01

```make
objects=sort.o computer.o main.o
CC=gcc
CFLAGS=-wall -g
example:$(objects)
	$(CC) $(objects) -o example
sort.o:sort.c libl.h
	$(cc) $(CFLAGS) -sort.c -o sort.o
computer.o:computer.c 
	$(CC) $(CFLAGS) -c computer.c -o computer.o
main.o:main.c lib2.h
	$(CC) $(CFLAGS) -c main.c -o main.o
```
#example02
>通用Makefile

```make
#obj,lib and libpath
DESTINATION:=test
LIBS:=.
INCLUDES:=.
RM:= rm -f
#c/c++,filesuffix(prefix)
PS=cpp
#GNU make implicit values
CC =g++
CFLAGS =-g -Wall -o3 -march=i486
CFLAGS+=-MMD
#the follow part do not change
SOURCE:=$(wildcard *.$(PS))
OBJS:=$(patsubst %.$(PS),%.o,$(SOURCE))
DEPS:=$(patsubst %.o,%.d,$(OBJS))
MISSING_DEPS:=$(filter-out $(wildcard $(DEPS)),$(DEPS))
MISSING_DEPS_SOURCE:=$(wildcard $(patsubst %.d,%.$(PS),$(MISS_DEPS))
.PHONY:all deps objs clean rebuild
deps:$(DEPS)
	$(CC) -MM -MMD $(SOURCE)
objs:$(OBJS)
clean:
	@$(RM) *.o
	@$(RM) *.d
	@$(RM) *.(DESTINATION)
rebuild:clean all
ifneq ($(MISSING_DEPS),)
$(MISSING_DEPS):
	@$(RM) $(patsubst %.d,%.o,$@)
endif
-include $(DEPS)
$(DESTINATION):$(OBJS)
	$(CC) -o $(DESTINATION) $(OBJS) $(addprefix -l,$(LIBS))
```

* 隐含规则。GUN Make在不特别指定的情况下会使用诸如以下编译命令： ` $(CC) $(CFLAGS) $(CPPFLAGS) $(TARGET_ARCH) -c $< -o $@`，这也是为什么这个Makefile最后一个命令没有添加`$(CPPFLAGS)`的原因， 因为缺省是包含这个变量的
*  `deps`: `$(CC) -MM -MMD $(SOURCE) `:对每个源文件生成依赖(dependence，Make通过依赖规则来判断是否需要重新编译某个文件.
	 * "D"生成".d"文件，`-MM`表示去掉 depends里面的系统的头文件(使用`<>`包含的头文件)（若使用`-M`则全部包含，事实上，系统头文件被修改的可能性极小，不需要执行依赖检查）
* `.PHONY`，不检查后面制定各项是否存在同名文件.
* `ifneq...else...endif`，Makefile中的条件语句
* `-include $(DEPS)` :将DEPS中的文件包来，`-`表示忽略文件不存在的错误
* `@$(RM) *.o `: 开头的"@"表示在Make的时候，不显示这条命令（GNU Make缺省是显示的)
* `all` : 作为第一个出现的目标项目，Make会将它作为**主要和缺省**项目("make"就表示`make all`)
* `deps `: 只生成依赖文件(`.d`文件)
* `objs `: 为每一个源码程序生成或更新 `.d` 文件和`.o`文件
* `clean` : 删除所有`.d`,`.o`和可执行文件
* `rebuild` : clean然后重建内部变量
* `$@`,` $<`,` $^` : 分别`$@`表示目标名(`:`前面的部分，比如all)，`$<`依靠列表（`:`后面的部分）中的**第一个依靠文件**，`$^`所有依靠文件.
