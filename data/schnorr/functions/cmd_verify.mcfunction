# 验证命令入口
# 用法: /function schnorr:cmd_verify <目标选择器>
# 或: /execute as <玩家> run function schnorr:cmd_verify

# 如果没有指定目标，验证执行者
execute if entity @s[tag=schnorr_has_proof] run function schnorr:verify_proof_self
execute unless entity @s[tag=schnorr_has_proof] run tellraw @s [{"text":"[错误] ","color":"red"},{"text":"该玩家没有待验证的证明。请先挖掘一个方块。","color":"white"}]

