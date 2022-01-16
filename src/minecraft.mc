dir blocks {
	loot turtle_egg {
		"type": "minecraft:entity",
		"pools": [
			{
				"rolls": 4,
				"bonus_rolls": 2,
				"entries": [
					{
						"type": "minecraft:item",
						"weight": 6,
						"name": "minecraft:mooshroom_spawn_egg",
						"functions": [
							{
								"function": "minecraft:copy_nbt",
								"source": {
									"type": "minecraft:storage",
									"source": "op_turtles:auto_light_tnt_spawn_egg"
								},
								"ops": [
									{
										"source": "EntityTag",
										"target": "EntityTag",
										"op": "merge"
									},
									{
										"source": "display",
										"target": "display",
										"op": "merge"
									}
								]
							}
						]
					},
					{
						"type": "minecraft:item",
						"weight": 4,
						"name": "minecraft:golden_carrot"
					},
					{
						"type": "minecraft:item",
						"weight": 3,
						"name": "minecraft:golden_apple"
					},
					{
						"type": "minecraft:item",
						"weight": 1,
						"name": "minecraft:enchanted_golden_apple"
					},
					{
						"type": "minecraft:item",
						"weight": 1,
						"name": "minecraft:totem_of_undying"
					}
				]
			}
		]
	}
}

dir entities {
	loot turtle {
		"type": "minecraft:generic",
		"functions": [
			{
				"function": "minecraft:enchant_randomly"
			}
		],
		"pools": [
			{
				"rolls": {
					"min": 0,
					"max": 1
				},
				"functions": [
					{
						"function": "minecraft:enchant_with_levels",
						"levels": {
							"min": 2,
							"max": 4
						},
						"treasure": true
					}
				],
				"entries": [
					{
						"type": "minecraft:item",
						"name": "minecraft:turtle_helmet",
						"weight": 12
					},
					{
						"type": "minecraft:item",
						"name": "minecraft:diamond_helmet",
						"weight": 10
					},
					{
						"type": "minecraft:item",
						"name": "minecraft:diamond_leggings",
						"weight": 9
					},
					{
						"type": "minecraft:item",
						"name": "minecraft:diamond_chestplate",
						"weight": 8
					},
					{
						"type": "minecraft:item",
						"name": "minecraft:diamond_boots",
						"weight": 10
					},
					{
						"type": "minecraft:item",
						"name": "minecraft:diamond_axe",
						"weight": 9
					}
				]
			},
			{
				"rolls": {
					"min": 0,
					"max": 1
				},
				"functions": [
					{
						"function": "minecraft:enchant_with_levels",
						"levels": {
							"min": 1,
							"max": 3
						},
						"treasure": true
					}
				],
				"entries": [
					{
						"type": "minecraft:item",
						"name": "minecraft:netherite_helmet",
						"weight": 5
					},
					{
						"type": "minecraft:item",
						"name": "minecraft:netherite_leggings",
						"weight": 4
					},
					{
						"type": "minecraft:item",
						"name": "minecraft:netherite_chestplate",
						"weight": 3
					},
					{
						"type": "minecraft:item",
						"name": "minecraft:netherite_boots",
						"weight": 5
					},
					{
						"type": "minecraft:item",
						"name": "minecraft:netherite_axe",
						"weight": 4
					}
				],
				"conditions": [
					{
						"condition": "minecraft:random_chance",
						"chance": 0.5
					}
				]
			}
		]
	}
}