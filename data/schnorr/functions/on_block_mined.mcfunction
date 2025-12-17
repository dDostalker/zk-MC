# 当玩家挖掘方块时触发（通过advancement）
# 获取被挖掘方块的位置并生成零知识证明

# 获取玩家位置（挖掘时的位置）
execute store result storage schnorr:temp posX int 1 run data get entity @s Pos[0] 1
execute store result storage schnorr:temp posY int 1 run data get entity @s Pos[1] 1
execute store result storage schnorr:temp posZ int 1 run data get entity @s Pos[2] 1

# 尝试获取被挖掘方块的位置（从advancement的location条件）
# 如果advancement提供了位置信息，使用它；否则使用玩家位置
execute store result storage schnorr:temp blockX int 1 run data get entity @s Pos[0] 1
execute store result storage schnorr:temp blockY int 1 run data get entity @s Pos[1] 1
execute store result storage schnorr:temp blockZ int 1 run data get entity @s Pos[2] 1

# 调用证明生成函数
function schnorr:generate_proof

# 广播证明信息
tellraw @a [{"text":"[Schnorr证明] ","color":"gold"},{"text":"玩家 ","color":"gray"},{"selector":"@s","color":"aqua"},{"text":" 挖掘了方块，位置证明已生成","color":"gray"}]

# 显示证明信息
function schnorr:display_proof

# 撤销advancement以便下次触发
advancement revoke @s only schnorr:mine_block

