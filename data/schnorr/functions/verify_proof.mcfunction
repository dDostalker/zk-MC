# Schnorr协议验证函数
# 用法: /function schnorr:verify_proof <目标玩家>
# 或: /execute as <玩家> run function schnorr:verify_proof_self

# 检查目标是否有证明
execute if entity @s[tag=schnorr_has_proof] run function schnorr:verify_proof_self
execute unless entity @s[tag=schnorr_has_proof] run tellraw @s [{"text":"错误: 该玩家没有待验证的证明","color":"red"}]

