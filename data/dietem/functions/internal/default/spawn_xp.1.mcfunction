#> dietem:internal/default/spawn_xp.1

$summon experience_orb ~ ~ ~ {Value:$(xp), Motion:[$(x)d, $(y)d, $(z)d]}

$scoreboard players remove *explode.xp dietem_var $(xp)
execute if score *explode.xp dietem_var matches 1.. run function dietem:internal/default/spawn_xp
