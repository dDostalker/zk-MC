# 列出所有有证明的玩家
# 用法: /function schnorr:cmd_list_proofs

tellraw @s [{"text":"=== 待验证的证明列表 ===","color":"gold","bold":true}]
execute as @a[tag=schnorr_has_proof] run tellraw @s [{"text":"- ","color":"gray"},{"selector":"@s","color":"aqua"},{"text":" 有证明待验证","color":"white"}]
execute unless entity @a[tag=schnorr_has_proof] run tellraw @s [{"text":"当前没有待验证的证明","color":"gray","italic":true}]

