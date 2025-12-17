# 备用挖掘检测方法
# 当advancement方法不可用时使用

# 存储玩家位置
execute store result storage schnorr:temp posX int 1 run data get entity @s Pos[0] 1
execute store result storage schnorr:temp posY int 1 run data get entity @s Pos[1] 1
execute store result storage schnorr:temp posZ int 1 run data get entity @s Pos[2] 1

# 调用证明生成函数
function schnorr:generate_proof

# 广播证明信息
tellraw @a [{"text":"[Schnorr证明-备用检测] ","color":"gold"},{"text":"玩家 ","color":"gray"},{"selector":"@s","color":"aqua"},{"text":" 可能挖掘了方块，位置证明已生成","color":"gray"}]

# 显示证明信息
function schnorr:display_proof

