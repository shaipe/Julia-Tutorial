 

<p align="center">
  <a href="http://nginx.org/">
    <img width="410" src="https://julialang.org/v2/img/logo.svg?sanitize=true" />
  </a>
</p>

Julia Language
---

## 介绍

Julia是一种高级通用动态编程语言，它最初是为了满足高性能数值分析和计算科学的需要而设计的，不需要分别编译速度快，也可用于客户端和服务器的Web用途、低级系统编程或用作规约语言。

Julia设计的独特之处包括，参数多态的类型系统，完全动态语言中的类型，以及它多分派的核心编程范型。它允许并发、并行和分布式计算，并直接调用C和Fortran库而不使用粘合代码。

- [Julia 语言官方网站](https://julialang.org/)

- [Julia 语言项目地址](https://github.com/JuliaLang)

- [Julia 英文文档](https://docs.julialang.org/en/v1/)

- [Julia 中文文档](https://juliacn.github.io/JuliaZH.jl/latest/)

- [Julia 中文社区](http://www.juliacn.com/)

## 安装

julia的安装window、mac和linux三种，前两种需要下载安装包，第三中可以直接通过编译获得。

打开网址 [https://julialang.org/downloads/](https://julialang.org/downloads/)，下载我们需要的安装包

Mac: 下载后将Julia.app拖至应用即可,双击打开就会看到自动启动了julia的编译器

### 添加环境变量:

编辑环境变量配置文件 ``vi .bash_profile``
在文件末尾添加我们的julia执行目录，这里注意替换自己的路径
```shell
export PATH=${PATH}:/Applications/Julia-1.0.app/Contents/Resources/julia/bin
```
复制代码编辑完成之后记得执行 ``source .bash_profile``

## 安装包

执行julia进入julia的环境，输入 ``?`` 可以查看帮助----还是先看文档吧，这里的帮助也是在熟悉文档之后更方便。
输入 ``]`` 进入pkg的执行环境，同时可以输入 ``?`` 来查看帮助,这里解释了集中命令的作用。
假设我们要安装 ``Genie`` 这个包。在pkg环境下执行安装命令``add Bukdu``

在pkg模式下使用 ``ctrl + C`` 退出pkg械式. 

## 入门

### 直接在julia环境下编写代码

```julia
julia> "hello world"
```

### 编写Julia脚本文件 .jl

使用bash命令创建文件 ``touch test.jl``
使用vim进行编写代码 `` vim test.jl```

```julia
function f(x::Int)
    x^2+2x+1
end

println(f(3))
```

运行文件 `` julia ./test.jl``

### 运行 Julia 有各种可选项：

```bash
julia [options] [program] [args...]
 -v, --version            Display version information
 -h, --help               Print this message
 -q, --quiet              Quiet startup without banner
 -H, --home <dir>         Set location of julia executable

 -e, --eval <expr>        Evaluate <expr>
 -E, --print <expr>       Evaluate and show <expr>
 -P, --post-boot <expr>   Evaluate <expr> right after boot
 -L, --load <file>        Load <file> right after boot on all processors
 -J, --sysimage <file>    Start up with the given system image file

 -p <n>                   Run n local processes
 --machinefile <file>     Run processes on hosts listed in <file>

 -i                       Force isinteractive() to be true
 --no-history-file        Don't load or save history
 -f, --no-startup         Don't load ~/.juliarc.jl
 -F                       Load ~/.juliarc.jl, then handle remaining inputs
 --color={yes|no}         Enable or disable color text

 --code-coverage          Count executions of source lines
 --check-bounds={yes|no}  Emit bounds checks always or never (ignoring declarations)
 --int-literals={32|64}   Select integer literal size independent of platform
 ```

 ### 应用开发教程

 - [Web 应用开发](https://github.com/shaipe/JuliaTutorial/blob/master/tutorial/web.md)

 - [模块学习资源](https://github.com/svaksha/Julia.jl)
