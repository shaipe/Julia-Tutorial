# Julia Web框架

## Genie 高效的Julia web框架

- [Genie 项止地址](https://github.com/essenciary/Genie.jl)

Genie是一个完整的堆栈MVC框架，为开发现代的web应用程序提供了一个精简和高效的工作流。 它基于 julia ( 高级，高性能，动态，JIT编译)的优势，公开了丰富的API和强大的工具集，用于生产。

## Genie包应用

```julia
# 方法1
julia> using Pkg # 在Julia环境下引用``pkg``基础模块
julia> pkg "add https://github.com/essenciary/Genie.jl" # 添加Genie应
用包

# 方法2, 按下 ] 进入pkg模式
julia>] # switch to pkg> mode
pkg> add https://github.com/essenciary/Genie.jl
```

## Julia 启用示例

```julia
# 添加完成后即可开始使用
julia> using Genie # 引用Genie

julia> import Genie.Router: route
julia> route("/") do
         "Hi there!"
       end

julia> Genie.AppServer.startup()

```
完成后在浏览器中输入 `` http://localhost:8000`` 查看,即可看到运行结果 

可以定义更多的路由规则进行页面输出访问

```julia
# http://localhost:8000/hello/world 

julia> function hello_world()
         "Hello World!"
       end
julia> route("/hello/world", hello_world)

# 带参数的路由 http://localhost:8000/echo/ciao  可以看到输出 ciao
julia> route("/sum/:x::Int/:y::Int") do
         @params(:x) + @params(:y)
       end

# 根据参数进行计算结果显示 http://localhost:8000/sum/2/3  输出结果 5
julia> import Base.convert
julia> convert(::Type{Int}, s::SubString{String}) = parse(Int, s)
```

## Genie 创建Web项目

```julia
# 
julia> Genie.REPL.new_app("your_cool_new_app")

```