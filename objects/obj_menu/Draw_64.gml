if (global.in_menu == 1) {
	var _choose_dw = display_get_gui_width();
	var _choose_dh = display_get_gui_height();
	var _choose_sprw = sprite_get_width(spr_choose_spider);
	var _choose_sprh = sprite_get_height(spr_choose_spider);
	var _choose_x = _choose_dw/2 - _choose_sprw/2;
	var _choose_y = _choose_dh/2 - _choose_sprh/2;
	
	draw_sprite(spr_choose_spider, 0, _choose_x, _choose_y);
	
	for (var i = 0; i < array_length(buttons); i++) {
		
		var _scale = 1
	
		var _sprw = sprite_get_width(buttons[i]);
		var _sprh = sprite_get_height(buttons[i]);
		
		var _x = _choose_x + (_choose_sprw / 2) - ((array_length(buttons) * (_sprw + 50) - 50) / 2) + (i * (_sprw + 50));
		var _y = _choose_y + (_choose_sprh / 2) - (_sprh / 2);
		
		if selected-1=i{
			draw_sprite_ext(buttons[i], 0, _x, _y, 1.2, 1.2, 0, c_white, 1);
		}else{
			draw_sprite_ext(buttons[i], 0, _x, _y, 1, 1, 0, c_white, 1);
		}
	}
}