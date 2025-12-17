# 检查命名空间的函数
# 如果这个函数能运行，说明命名空间是正确的

tellraw @a [{"text":"[命名空间检查] ","color":"gold"},{"text":"如果你看到这条消息，说明函数命名空间正确！","color":"green"}]
tellraw @a [{"text":"当前使用的命名空间是: schnorr","color":"yellow"}]
tellraw @a [{"text":"如果数据包名称不是'schnorr'，请使用: /function <数据包名称>:schnorr/<函数名>","color":"gray"}]

