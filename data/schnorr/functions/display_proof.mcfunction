# 显示生成的证明信息
tellraw @s [{"text":"=== Schnorr零知识证明 ===","color":"gold","bold":true}]
tellraw @s [{"text":"位置: ","color":"yellow"},{"text":"X=","color":"gray"},{"nbt":"schnorr_proof.posX","entity":"@s","color":"white"},{"text":" Y=","color":"gray"},{"nbt":"schnorr_proof.posY","entity":"@s","color":"white"},{"text":" Z=","color":"gray"},{"nbt":"schnorr_proof.posZ","entity":"@s","color":"white"}]
tellraw @s [{"text":"证明组件 R: ","color":"yellow"},{"nbt":"schnorr_proof.R","entity":"@s","color":"white"}]
tellraw @s [{"text":"挑战值 c: ","color":"yellow"},{"nbt":"schnorr_proof.c","entity":"@s","color":"white"}]
tellraw @s [{"text":"响应 s: ","color":"yellow"},{"nbt":"schnorr_proof.s","entity":"@s","color":"white"}]
tellraw @s [{"text":"使用命令 /function schnorr:cmd_verify 进行验证","color":"gray","italic":true}]

