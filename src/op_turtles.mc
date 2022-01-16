loot block_drops {
	"type": "minecraft:entity",
}

function load {
	data modify storage op_turtles:auto_light_tnt_spawn_egg EntityTag set value {DeathTime:500,Type:"red",Tags:["op_turtles__auto_light_tnt"],DeathLootTable:"op_turtles:block_drops",ActiveEffects:[{Id:14b,Amplifier:1b,Duration:200,ShowParticles:0b}]}
	data modify storage op_turtles:auto_light_tnt_spawn_egg display set value {Name:'{"text":"Auto-light TNT","color":"dark_red"}'}
	tellraw @a "OP Eggs datapack has loaded!"
}

function tick {
	execute as @e[type=minecraft:mooshroom,tag=op_turtles__auto_light_tnt] at @s run {
		tp @s ~ -999999 ~
		summon tnt ~ ~ ~ {Fuse:40}
		kill @s
	}
}