if hl.plugin.hypr3d then
	local hypr3d = hl.plugin.hypr3d

	hl.bind("SUPER + SHIFT + R", hypr3d.toggle)

	hypr3d.config({
		world = { grid = false },
		input = {
			typing_cursor = true,
			typing_button = "side",
		},
		player = {
			collision = true,
			move_speed = 4,
			flying = false,
			walk_bob = true,
		},
		scene = {
			mymap = {
				mesh = {
					path = "~/Effettua backup/blender/stanza/stanza.gltf",
					transform = {
						position = { 1, 0, 0 },
					},
					emissive_scale = 1.0,
					center_offset = { 0, 0, 0 },
				},
				collision = true,
				static = true,
			},
			duck = {
				mesh = {
					path = "~/Downloads/rubberduck/scene.gltf",
					transform = {
						position = { y = 3 },
						scale = { 1, 1, 1 },
					},
					emissive_scale = 1.0,
					flat = true,
					center = "origin",
					center_offset = { 0, 0, 0 },
				},
				collision = true,
				static = false,
				physics = true,
			},
		},
	})
end
