# 初始化Schnorr零知识证明系统
# 设置必要的scoreboard目标

# 创建scoreboard目标用于存储随机数和计算值
scoreboard objectives add schnorr_random dummy "随机数r"
scoreboard objectives add schnorr_R dummy "承诺值R"
scoreboard objectives add schnorr_c dummy "挑战值c"
scoreboard objectives add schnorr_s dummy "响应值s"
scoreboard objectives add schnorr_check dummy "验证检查"

tellraw @a [{"text":"[Schnorr系统] ","color":"gold","bold":true},{"text":"零知识证明系统已初始化","color":"green"}]
tellraw @a [{"text":"系统将自动监控玩家挖掘方块的行为","color":"gray"}]

