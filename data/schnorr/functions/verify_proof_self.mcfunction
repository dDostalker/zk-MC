# 验证当前执行者的证明

# 步骤1: 验证 R 的有效性（简化版）
# 在实际Schnorr协议中，需要验证 R = g^s * y^(-c) mod p
# 其中 y 是公钥，g 是生成元

tellraw @a [{"text":"[验证中] ","color":"yellow"},{"text":"正在验证玩家 ","color":"gray"},{"selector":"@s","color":"aqua"},{"text":" 的零知识证明...","color":"gray"}]

# 步骤2: 检查证明组件是否存在
execute store result score @s schnorr_check run data get entity @s schnorr_proof.R 1
execute if score @s schnorr_check matches 0.. run tellraw @a [{"text":"[验证失败] ","color":"red"},{"text":"证明组件R无效","color":"white"}]
execute unless score @s schnorr_check matches 0.. run function schnorr:verify_proof_complete

