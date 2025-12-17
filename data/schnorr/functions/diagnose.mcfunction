# 诊断函数 - 检查系统状态
tellraw @s [{"text":"=== Schnorr系统诊断 ===","color":"gold","bold":true}]

# 检查数据包加载状态
tellraw @s [{"text":"✓ 数据包文件已存在","color":"green"}]

# 测试基本命令功能
tellraw @s [{"text":"测试基本命令...","color":"yellow"}]
tellraw @s [{"text":"如果您能看到这条消息，说明数据包已正确加载！","color":"green","bold":true}]

# 检查当前世界
execute at @s run tellraw @s [{"text":"当前位置: ","color":"yellow"},{"nbt":"Pos","entity":"@s","color":"aqua"}]

# 显示帮助信息
tellraw @s [{"text":"\n=== 可用命令 ===","color":"gold","bold":true}]
tellraw @s [{"text":"/function schnorr:hello","color":"gray","clickEvent":{"action":"run_command","value":"/function schnorr:hello"}}]
tellraw @s [{"text":"/function schnorr:simple_test","color":"gray","clickEvent":{"action":"run_command","value":"/function schnorr:simple_test"}}]
tellraw @s [{"text":"/function schnorr:test","color":"gray","clickEvent":{"action":"run_command","value":"/function schnorr:test"}}]

tellraw @s [{"text":"\n如果看不到绿色消息，请检查：","color":"yellow"}]
tellraw @s [{"text":"1. 数据包是否放在正确的 datapacks 文件夹","color":"gray"}]
tellraw @s [{"text":"2. 是否重新加载了世界 (/reload)","color":"gray"}]
tellraw @s [{"text":"3. 是否有管理员权限","color":"gray"}]

