# 当检测到方块被破坏时触发
# 获取玩家位置并生成零知识证明

# 存储玩家位置到临时存储
execute store result storage schnorr:temp posX int 1 run data get entity @s Pos[0] 1
execute store result storage schnorr:temp posY int 1 run data get entity @s Pos[1] 1
execute store result storage schnorr:temp posZ int 1 run data get entity @s Pos[2] 1

# 获取玩家UUID作为私钥标识
execute store result storage schnorr:temp playerUUID string run data get entity @s UUID

# 调用证明生成函数
function schnorr:generate_proof

# 广播证明信息（实际应用中应该发送给验证者）
tellraw @a [{"text":"[Schnorr证明] ","color":"gold"},{"text":"玩家 ","color":"gray"},{"selector":"@s","color":"aqua"},{"text":" 挖掘了方块，位置证明已生成","color":"gray"}]

# 显示证明信息
function schnorr:display_proof

