# Made by Zade (https://github.com/zadeviggers).
# Built using mc-build (https://github.com/mc-build/mc-build).

data modify storage op_turtles:auto_light_tnt_spawn_egg EntityTag set value {DeathTime:500,Type:"red",Tags:["op_turtles__auto_light_tnt"],DeathLootTable:"op_turtles:block_drops",ActiveEffects:[{Id:14b,Amplifier:1b,Duration:200,ShowParticles:0b}]}
data modify storage op_turtles:auto_light_tnt_spawn_egg display set value {Name:'{"text":"Auto-light TNT","color":"dark_red"}'}
tellraw @a "OP Eggs datapack has loaded!"