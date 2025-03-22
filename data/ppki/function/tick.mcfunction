execute as @a[scores={ppki.death=1..}, tag=!keepInventory, gamemode=!spectator] at @s run function ppki:drop
execute as @a[scores={ppki.death=1..}, tag= keepInventory] run scoreboard players reset @s ppki.death
