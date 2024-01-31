#> dietem:internal/default/spawn_xp
#--------------------
# ./explode
#--------------------


execute store result storage dietem:var explode.xp.x double .0001 run random value -5000..5000
execute store result storage dietem:var explode.xp.y double .0001 run random value 500..1000
execute store result storage dietem:var explode.xp.z double .0001 run random value -5000..5000

#this is just how vanilla xp chunking works.
execute if score *explode.xp dietem_var matches 73.. run data modify storage dietem:var explode.xp.xp set value 73
execute if score *explode.xp dietem_var matches 73.. run return run function dietem:internal/default/spawn_xp.1 with storage dietem:var explode.xp

execute if score *explode.xp dietem_var matches 37.. run data modify storage dietem:var explode.xp.xp set value 37
execute if score *explode.xp dietem_var matches 37.. run return run function dietem:internal/default/spawn_xp.1 with storage dietem:var explode.xp

execute if score *explode.xp dietem_var matches 17.. run data modify storage dietem:var explode.xp.xp set value 17
execute if score *explode.xp dietem_var matches 17.. run return run function dietem:internal/default/spawn_xp.1 with storage dietem:var explode.xp

execute if score *explode.xp dietem_var matches 7.. run data modify storage dietem:var explode.xp.xp set value 7
execute if score *explode.xp dietem_var matches 7.. run return run function dietem:internal/default/spawn_xp.1 with storage dietem:var explode.xp

execute if score *explode.xp dietem_var matches 3.. run data modify storage dietem:var explode.xp.xp set value 3
execute if score *explode.xp dietem_var matches 3.. run return run function dietem:internal/default/spawn_xp.1 with storage dietem:var explode.xp

execute if score *explode.xp dietem_var matches 1.. run data modify storage dietem:var explode.xp.xp set value 1
execute if score *explode.xp dietem_var matches 1.. run return run function dietem:internal/default/spawn_xp.1 with storage dietem:var explode.xp