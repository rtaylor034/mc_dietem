#> dietem:internal/on_death
#--------------------
# internal/tick
#--------------------

data modify storage dietem:var death.inventory set from entity @s Inventory
data modify storage dietem:var death.score set from entity @s Score

#-- EVENT : pre_death --
data modify storage gvent:in call.event set value "#dietem:event/pre_death"
data modify storage gvent:in call.info.keep_inventory set from storage dietem:settings keep_inventory
data modify storage gvent:in call.pass.death_items set from storage dietem:var death.inventory
data modify storage gvent:in call.pass.death_xp set from storage dietem:var death.score
function gvent:api/call
#------

data modify storage dietem:var death.clear_items set from storage gvent:out call.pass.death_items
data modify storage dietem:var death.clear_xp set from storage gvent:out call.pass.death_xp

data modify storage dietem:var death.call.in.info.keep_inventory set from storage dietem:settings keep_inventory
data modify storage dietem:var death.call.in.info.death_items set from storage dietem:var death.clear_items
data modify storage dietem:var death.call.in.info.death_xp set from storage dietem:var death.clear_xp

#-- EVENT : on_death --
data modify storage gvent:in call set from storage dietem:var death.call.in
data modify storage gvent:in call.event set value "#dietem:event/on_death"
function gvent:api/call with storage dietem:var death.call
#------

#-- EVENT : on_death_info --
data modify storage gvent:in call set from storage dietem:var death.call.in
data modify storage gvent:in call.event set value "#dietem:event/on_death_info"
function gvent:api/call with storage dietem:var death.call
#------

execute if data storage dietem:settings {keep_inventory:0b} if data storage dietem:var death.clear_items[] run function dietem:internal/clear/each_item
execute if data storage dietem:settings {keep_inventory:0b} run function dietem:internal/clear/xp with storage dietem:var death.call.in.info

scoreboard players reset *clear.slot dietem_var
data remove storage dietem:var death
scoreboard players set @s _dietem-die 0
