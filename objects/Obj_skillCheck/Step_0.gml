
bar_c_xx += bar_c_speed * bar_c_dir;


if (bar_c_xx <= bar_right || (bar_c_xx + size_ct_x) >= bar_left) {
    bar_c_dir *= -1;
    bar_c_speed += bar_c_speed * 0.2;
}

//if (((_x1 >= point_x1) && (_x1 <= point_x2)) || ((_x2 >= point_x1) && (_x2 <= point_x2))) {
var _x1 = bar_c_xx;
var _x2 = bar_c_xx + size_ct_x;

if (keyboard_check_pressed(vk_space)) {
	 if ((_x1 < point_x1 && point_x1 < _x2) && (_x1 < point_x2 && point_x2 < _x2)) {
		bar_c_speed += bar_c_speed * 0.2;
		ponteiro = Spr_ponteiro_acerto;
		
		alarm[0] = 2;
		acertos++;
	} else {
		ponteiro = Spr_ponteiro_erro;
		bar_c_speed = 3;
		
		escala_2 -= escala_2 * 0.2;
		alarm[0] = 2;
	}
}

if(acertos >= 5){
	instance_destroy(self);
	Obj_player.estado = scr_player_escondido;
}