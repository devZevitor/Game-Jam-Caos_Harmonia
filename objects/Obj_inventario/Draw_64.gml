
	var _hud_x = display_get_gui_width();
	var _hud_y = display_get_gui_height();
	
	var _xx = _hud_x - slot_size - margem;
	var _yy = margem;

	var _cont = 0;
	for(var i = 0; i < size_inventario; i++){
		if(grid_items[# Infos.Item, i] != -1){
			draw_sprite_ext(grid_items[# Infos.Sprite, i], grid_items[# Infos.Item, i], _xx, _yy + _cont *(margem + slot_size), 1, 1, 0, c_white, 1);
			_cont++;
		}  
	}