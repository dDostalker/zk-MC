# 监控所有玩家的挖掘行为
# 注意：实际挖掘检测通过advancement触发，此函数作为备用监控
# 这个函数会在每个tick执行，检查玩家脚下的方块状态

# 方法1: 通过advancement检测（推荐，在on_block_mined.mcfunction中处理）
# 方法2: 备用检测方法 - 检测玩家脚下的方块变化
execute as @a[tag=!schnorr_processed] at @s positioned ~ ~-1 ~ if block ~ ~ ~ air run function schnorr:on_block_break_fallback

# 标记已处理的玩家（防止重复触发）
tag @a[tag=!schnorr_processed] add schnorr_processed

# 清除标记（为下一tick准备）
schedule function schnorr:clear_tags 1t replace

