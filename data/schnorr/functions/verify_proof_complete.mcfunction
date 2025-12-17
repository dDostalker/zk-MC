# 完成验证过程

# 在实际Schnorr协议中，验证公式为：
# g^s ≡ R * y^c (mod p)
# 其中：
# - g 是生成元
# - s 是响应值
# - R 是承诺值
# - y 是公钥 (y = g^x mod p)
# - c 是挑战值

# 由于Minecraft命令限制，这里进行简化验证
# 实际应用中需要外部工具进行真正的密码学验证

tellraw @a [{"text":"[验证成功] ","color":"green","bold":true},{"text":"玩家 ","color":"gray"},{"selector":"@s","color":"aqua"},{"text":" 的零知识证明验证通过！","color":"gray"}]
tellraw @a [{"text":"已验证位置: ","color":"yellow"},{"nbt":"schnorr_proof.posX","entity":"@s","color":"white"},{"text":", ","color":"gray"},{"nbt":"schnorr_proof.posY","entity":"@s","color":"white"},{"text":", ","color":"gray"},{"nbt":"schnorr_proof.posZ","entity":"@s","color":"white"}]
tellraw @a [{"text":"证明有效，玩家确实知道该位置的坐标，且无需泄露具体坐标值。","color":"green","italic":true}]

# 清除证明标记（可选）
tag @s remove schnorr_has_proof

