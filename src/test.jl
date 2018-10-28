#=
include("module.jl")
using .console
# 调用模块的输出方法,添加\n换行
console.log("test \n")
# 同时调用一下自带的错误提示
@warn "test base warn"
=#

function f(x::Int)
    x^2+2x+1
end

println(f(3))