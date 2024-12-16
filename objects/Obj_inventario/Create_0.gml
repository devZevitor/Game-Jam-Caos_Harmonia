
	size_inventario = 6
	
	enum Items {
		faca,
		alcool,
		isqueiro,
		panela,
		altura
	}
	
	enum Armas {
		Trigo,
		Altura
	}	
	
	enum Infos {
		Nome,
		Item,
		Quantidade,
		Sprite,
		Arremessavel,
		Altura
	}
 	
	grid_items = ds_grid_create(Infos.Altura, size_inventario);
	ds_grid_set_region(grid_items, 0, 0, Infos.Altura - 1, size_inventario - 1, -1);
	
	slot_size = 16;
	margem = 16;
	