#> dietem:internal/clear_item
#--------------------
# ./on_death
#--------------------

execute store result score *clear.slot dietem_var run data get storage dietem:var death.clear_items[-1].Slot

execute if score *clear.slot dietem_var matches 0..35 run function dietem:internal/clear/standard with storage dietem:var death.clear_items[-1]
execute unless score *clear.slot dietem_var matches 0..35 run function dietem:internal/clear/special with storage dietem:var death.clear_items[-1]

data remove storage dietem:var death.clear_items[-1]
execute if data storage dietem:var death.clear_items[] run function dietem:internal/clear/each_item