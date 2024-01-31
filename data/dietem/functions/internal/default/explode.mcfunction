#> dietem:internal/default/explode
#--------------------
# @gvent : on_death
#--------------------

$data modify storage dietem:var explode set value $(info)

execute if data storage dietem:var explode{keep_inventory:1b} run return 0
execute if data storage dietem:var explode.death_items[] run function dietem:internal/default/each_item

data remove storage dietem:var explode