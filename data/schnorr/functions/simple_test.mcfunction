# 简单测试函数 - 验证数据包基本功能
tellraw @s [{"text":"✓ ","color":"green","bold":true},{"text":"数据包功能正常！","color":"white"}]
tellraw @s [{"text":"当前时间: ","color":"yellow"},{"score":{"name":"@s","objective":"dummy"},"color":"aqua"}]

# 测试scoreboard是否工作
scoreboard players add @s test_score 1
tellraw @s [{"text":"测试计数器: ","color":"yellow"},{"score":{"name":"@s","objective":"test_score"},"color":"aqua"}]

