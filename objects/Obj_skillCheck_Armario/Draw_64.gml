
draw_sprite_ext(Spr_bar_background_skillCheck, 0, _xx, _yy, escala, escala, 0, c_white, 1);
draw_sprite_ext(Spr_bar_control_skillCheck, 0, bar_c_xx, _yy, escala_2, escala, 0, c_white, 1);
draw_sprite_ext(ponteiro, 0, point_x1, _yy, escala/2, escala, 0, c_white, pointer_alpha);

draw_set_color(c_gray);
draw_rectangle(barra_x, barra_y, barra_x + barra_largura, barra_y + barra_altura, false);
draw_set_color(c_white);
draw_rectangle(barra_x, barra_y, barra_x + barra_valor, barra_y + barra_altura, false);

draw_text(300,300, string(alarm[1]));
