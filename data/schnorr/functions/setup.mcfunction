# 设置函数 - 在服务器启动时运行
# 初始化系统并开始监控

# 延迟执行以确保所有函数都已加载
schedule function schnorr:init 1t replace

# 开始监控循环
tellraw @a [{"text":"[Schnorr系统] ","color":"gold"},{"text":"监控系统正在启动...","color":"yellow"}]

