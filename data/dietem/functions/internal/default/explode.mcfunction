#> dietem:internal/default/explode
#--------------------
# @gvent : on_death
#--------------------

$data modify storage dietem:var explode set value $(info)

execute if data storage dietem:var explode{keep_inventory:1b} run return 0

# curse of vanishing is handled manually by death implementation
data remove storage dietem:var explode.death_items[{tag:{Enchantments:[{id:"minecraft:vanishing_curse"}]}}]

execute if data storage dietem:var explode.death_items[] run function dietem:internal/default/each_item

#default xp calculation does not care about xp points, just levels.

#do level calculation for given <death_xp>
xp set @s 0 points
xp set @s 0 levels
function dietem:internal/default/explode.1 with storage dietem:var explode

execute store result score *explode.xp dietem_var run xp query @s levels
scoreboard players set *explode.mult dietem_var 7
scoreboard players operation *explode.xp dietem_var *= *explode.mult dietem_var
execute if score *explode.xp dietem_var matches 101.. run scoreboard players set *explode.xp dietem_var 100

execute if score *explode.xp dietem_var matches 1.. run function dietem:internal/default/spawn_xp

scoreboard players reset *explode.xp dietem_var
scoreboard players reset *explode.mult dietem_var
data remove storage dietem:var explode