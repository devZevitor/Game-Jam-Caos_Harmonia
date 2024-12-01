_cell_t = 32;
cell_h = room_width div 32;
cell_v = room_height div 32;

grid = mp_grid_create(0, 0, cell_h, cell_v, _cell_t, _cell_t);

var obstacles = [Obj_block, Obj_armario];

for (var i = 0; i < array_length_1d(obstacles); i++) {
var obj = obstacles[i];

with (obj) {
	var _cell_t = 32;
    var _sizex = (sprite_get_width(sprite_index) * image_xscale div 32) * 32;
    var _sizey = (sprite_get_height(sprite_index) * image_yscale div 32) * 32;

    var _x1 = x;
    var _y1 = y;
    var _x2 = x + _sizex;
    var _y2 = y + _sizey;

    var number_cell_h = ceil(_sizex / _cell_t); // Arredondamento para garantir cobertura total
    var number_cell_v = ceil(_sizey / _cell_t);

    for (var j = 0; j < number_cell_h; j++) {
        for (var k = 0; k < number_cell_v; k++) {
            var cell_x = _x1 + j * _cell_t;
            var cell_y = _y1 + k * _cell_t;

            // Adiciona a célula na grid
            mp_grid_add_cell(Obj_mapa_enemy.grid, cell_x div _cell_t, cell_y div _cell_t);
        }
    }
}
}
