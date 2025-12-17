# 这个函数用于检测正确的命名空间
# 运行: /function <数据包名称>:schnorr/find_namespace

tellraw @a [{"text":"=== 命名空间检测 ===","color":"gold","bold":true}]
tellraw @a [{"text":"如果你看到这条消息，说明命名空间正确！","color":"green"}]
tellraw @a [{"text":"","color":"reset"}]
tellraw @a [{"text":"正确的函数调用格式：","color":"yellow"}]
tellraw @a [{"text":"/function <数据包名称>:schnorr/<函数名>","color":"white"}]
tellraw @a [{"text":"","color":"reset"}]
tellraw @a [{"text":"常用命令：","color":"yellow"}]
tellraw @a [{"text":"/function <数据包名称>:schnorr/init - 初始化系统","color":"gray"}]
tellraw @a [{"text":"/function <数据包名称>:schnorr/test - 测试函数","color":"gray"}]
tellraw @a [{"text":"/function <数据包名称>:schnorr/cmd_verify - 验证证明","color":"gray"}]

