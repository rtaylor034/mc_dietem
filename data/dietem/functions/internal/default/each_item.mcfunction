#> dietem:internal/default/each_item
#--------------------
# ./explode
#--------------------

execute store result storage dietem:var explode.item.x double .0001 run random value -4800..4800
execute store result storage dietem:var explode.item.y double .0001 run random value 2000..2300
execute store result storage dietem:var explode.item.z double .0001 run random value -4800..4800

data modify storage dietem:var explode.item.item set from storage dietem:var explode.death_items[-1]
data remove storage dietem:var explode.item.item.Slot

function dietem:internal/default/each_item.1 with storage dietem:var explode.item

data remove storage dietem:var explode.death_items[-1]
execute if data storage dietem:var explode.death_items[] run function dietem:internal/default/each_item