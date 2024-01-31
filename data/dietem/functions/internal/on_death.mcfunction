#> dietem:internal/on_death
#--------------------
# internal/tick
#--------------------

data modify storage dietem:var death.inventory set from entity @s Inventory

#-- EVENT : pre_death --
data modify storage gvent:in call.in.event set value "#dietem:event/pre_death"
data modify storage gvent:in call.in.info.keep_inventory set from storage dietem:settings keep_inventory
data modify storage gvent:in call.in.pass.death_items set from storage dietem:var death.inventory
function gvent:api/call with storage gvent:in call
#------

data modify storage dietem:var death.clear_items set from storage gvent:out call.pass.death_items

data modify storage dietem:var death.call.in.info.keep_inventory set from storage dietem:settings keep_inventory
data modify storage dietem:var death.call.in.info.death_items set from storage dietem:var death.clear_items

#-- EVENT : on_death_info --
data modify storage dietem:var death.call.in.event set value "#dietem:event/on_death_info"
function gvent:api/call with storage dietem:var death.call
#------

#-- EVENT : on_death --
data modify storage dietem:var death.call.in.event set value "#dietem:event/on_death"
function gvent:api/call with storage dietem:var death.call
#------

execute if data storage dietem:settings {keep_inventory:0b} if data storage dietem:var death.clear_items[] run function dietem:internal/clear/each_item

scoreboard players reset *clear.slot dietem_var
data remove storage dietem:var death
scoreboard players set @s _dietem-die 0
