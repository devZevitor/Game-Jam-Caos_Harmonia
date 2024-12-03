
bar_c_xx += bar_c_speed * bar_c_dir;


if (bar_c_xx <= bar_right || (bar_c_xx + size_ct_x) >= bar_left) {
    bar_c_dir *= -1;
    bar_c_speed += bar_c_speed * 0.2;
}

var _x1 = bar_c_xx;
var _x2 = bar_c_xx + size_ct_x;

if(alarm[2] <= 0) {
	pointer_alpha = 1;
	if (keyboard_check_pressed(vk_space)) {
		 if ((_x1 < point_x1 && point_x1 < _x2) && (_x1 < point_x2 && point_x2 < _x2)) {
			bar_c_speed += bar_c_speed * speed_veloc;
			escala_2 -= escala_2 * 0.1;
			ponteiro = Spr_ponteiro_acerto;
		
			alarm[0] = 2;
			alarm[2] = 32;
			acertos++;
			
		} else {
			ponteiro = Spr_ponteiro_erro;
		
			speed_veloc -= speed_veloc*0.1;
			escala_2 -= escala_2 * 0.2;
			alarm[0] = 2;
		}
	}
}
 else {
	pointer_alpha = 0.5;
 }

if(bar_c_speed == 10){
	speed_veloc = 0.01;
}

if(acertos >= 3){
	instance_destroy(self);
	Obj_player.estado = scr_player_escondido;
}

barra_valor -= barra_largura / 360;

