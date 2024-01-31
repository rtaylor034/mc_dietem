#>dietem:internal/load
#--------------------
# @LOAD
#--------------------
#settings
function dietem:settings

#declare storage dietem:var
#declare storage dietem:in
#declare storage dietem:out
#declare storage dietem:data

#-- keepInventory must be true in order for this pack to work correctly. --
gamerule keepInventory true
scoreboard objectives add _dietem-die deathCount
scoreboard objectives add dietem_var dummy