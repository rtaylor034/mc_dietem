#>dietem:settings

#declare storage dietem:settings
data modify storage dietem:settings PERSIST set value false


#>-------------------
#> keep_inventory
#-------------------
#~ the dietem controlled equivalent of the 'keepInventory' gamerule.
#-------------------
#- player's will keep their items, but dietem events will still be called.
#-------------------
# DEFAULT: false
#-------------------
data modify storage dietem:settings keep_inventory set value false
#>-------------------
