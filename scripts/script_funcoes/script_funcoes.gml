function ds_grid_add_item(){
	///@arg Nome
	///@arg Item
	///@arg Quantidade
	///@arg Sprite
	///@arg Arremessavel
				
	var _grid = Obj_inventario.grid_items;
	var _item = -1;
	var _cheio = false;
	
	for (var _checagem = 0; _checagem < Obj_inventario.size_inventario; _checagem++)
	{
		 if _grid[# Infos.Sprite, _checagem] == argument[3] && _grid[# Infos.Item, _checagem] ==  argument[1] {
			_grid[# Infos.Quantidade, _checagem	] += argument[2];
			_item = _checagem;
		}
	}
	
	if _item == -1 {
		_checagem = 0
		while _grid[# Infos.Item, _checagem] != -1{
			_checagem++;
			
			if(_checagem > Obj_inventario.size_inventario)
			{
				_cheio = true;
				break;
			}
		}
		if (_cheio != true) {
			_grid[# 0, _checagem] = argument[0];
			_grid[# 1, _checagem] = argument[1];
			_grid[# 2, _checagem] = argument[2];
			_grid[# 3, _checagem] = argument[3];
			_grid[# 4, _checagem] = argument[4];
		}
	}	
}
	
function ds_save_items_room() {
    var _grid = Obj_control.grid_save;
    var next_row;

 
    if (instance_exists(Obj_item)) {
        with (Obj_item) {
            next_row = -1;
            for (var i = 0; i < ds_grid_height(_grid); i++) {
                if (_grid[# Item_save.Object, i] == -1) {
                    next_row = i;
                    break;
                }
            }

            if (next_row == -1) {
                next_row = ds_grid_height(_grid);
                ds_grid_resize(_grid, Item_save.altura, next_row + 1);
            }

            _grid[# Item_save.Object, next_row] = object_index;
            _grid[# Item_save.pos_x, next_row] = x;
            _grid[# Item_save.pos_y, next_row] = y;
            _grid[# Item_save.id_room, next_row] = room;
            _grid[# Item_save.index, next_row] = image_index;
            _grid[# Item_save.sprite, next_row] = sprite_index;
        }
    }

    if (instance_exists(Obj_enemy)) {
        with (Obj_enemy) {
            next_row = -1;
            for (var i = 0; i < ds_grid_height(_grid); i++) {
                if (_grid[# Item_save.Object, i] == -1) {
                    next_row = i;
                    break;
                }
            }
			
            if (next_row == -1) {
                next_row = ds_grid_height(_grid);
                ds_grid_resize(_grid, Item_save.altura, next_row + 1);
            }

            _grid[# Item_save.Object, next_row] = object_index;
            _grid[# Item_save.pos_x, next_row] = x;
            _grid[# Item_save.pos_y, next_row] = y;
            _grid[# Item_save.id_room, next_row] = room;
            _grid[# Item_save.index, next_row] = image_index;
            _grid[# Item_save.sprite, next_row] = sprite_index;
        }
    }
}


function ds_save_items_exits() {
    var _grid = Obj_control.grid_save;

    var _size_grid = ds_grid_height(_grid);

    for (var i = 0; i < _size_grid; i++) {
        if (_grid[# Item_save.id_room, i] == room) {
            var _obj = _grid[# Item_save.Object, i];
            var _xx = _grid[# Item_save.pos_x, i];
            var _yy = _grid[# Item_save.pos_y, i];
			var _sprite = _grid[# Item_save.sprite, i];
			var _index = _grid[# Item_save.index, i];

            var _inst = instance_create_layer(_xx, _yy, "Instances_obj", _obj);
			_inst.sprite_index = _sprite;
			_inst.image_index = _index;
			
            _grid[# Item_save.Object, i] = -1;
            _grid[# Item_save.pos_x, i] = -1;
            _grid[# Item_save.pos_y, i] = -1;
            _grid[# Item_save.id_room, i] = -1;
        }
    }
}

function ds_grid_exists_item() {
	///@arg Item
	///@arg Sprite
	///@arg arremessavel
	
	var _grid = Obj_inventario.grid_items;
	for (var i = 0; i < Obj_inventario.size_inventario; i++){
		if(_grid[# Infos.Item, i] == argument[0] && _grid[# Infos.Sprite, i] == argument[1] ){
			return true;
			break;
		}
	}
	return false;
	
}
	
function ds_grid_item_arremessavel() {
    ///@arg posição
    if (Obj_inventario.grid_items[# Infos.Arremessavel, argument[0]] == true) {
		return Obj_inventario.grid_items[# Infos.Nome, argument[0]];
	}
	
	return false;
}

function ds_grid_remove_item() {
	///@arg Nome
	
	var _grid = Obj_inventario.grid_items;
	for (var i = 0; i < Obj_inventario.size_inventario; i++){
		if(_grid[# Infos.Nome, i] == argument[0]){
			
			_grid[# Infos.Nome, i] = -1;
			_grid[# Infos.Item, i] = -1;
			_grid[# Infos.Sprite, i] = -1;
			_grid[# Infos.Quantidade, i] = -1;
			_grid[# Infos.Arremessavel, i] = -1;
		}
	}
	
}