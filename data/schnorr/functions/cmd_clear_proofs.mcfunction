# 清除所有玩家的证明
# 用法: /function schnorr:cmd_clear_proofs

execute as @a[tag=schnorr_has_proof] run function schnorr:clear_player_proof
tellraw @s [{"text":"[Schnorr系统] ","color":"gold"},{"text":"已清除所有玩家的证明","color":"green"}]

