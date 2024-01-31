#> dietem:internal/clear/special
#--------------------
# ./each_item
#--------------------

execute if score *clear.slot dietem_var matches 100 run return run item replace entity @s armor.feet with minecraft:air 1
execute if score *clear.slot dietem_var matches 101 run return run item replace entity @s armor.legs with minecraft:air 1
execute if score *clear.slot dietem_var matches 102 run return run item replace entity @s armor.chest with minecraft:air 1
execute if score *clear.slot dietem_var matches 103 run return run item replace entity @s armor.head with minecraft:air 1
execute if score *clear.slot dietem_var matches -106 run return run item replace entity @s weapon.offhand with minecraft:air 1