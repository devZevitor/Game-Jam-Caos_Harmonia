
	/// @desc Retorna os limites de um objeto
	/// @param obj_id (instância do objeto)
	function scr_areas_enemy() {
		var obj_id = argument[0];

		var _sprite_w = sprite_get_width(obj_id.sprite_index) * obj_id.image_xscale;
		var _sprite_h = sprite_get_height(obj_id.sprite_index) * obj_id.image_yscale;

		var x1 = obj_id.x;
		var y1 = obj_id.y;
		var x2 = x1 + _sprite_w;
		var y2 = y1 + _sprite_h;

		return [x1, y1, x2, y2];
	}
