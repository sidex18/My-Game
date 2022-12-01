/// @description Health Bars & text
if room==RoomGameMain{
	draw_set_font(FontMainGame)
	//Writing 'Player 1'
	draw_set_halign(fa_left)
	draw_text_color(1770,17,"Player 1",c_teal,c_teal,c_navy,c_aqua,1.5)
	
	//Writing 'Player 2'
	draw_set_halign(fa_right)
	draw_text_color(265,17,"Player 2",c_orange,c_red,c_maroon,c_red,1)
	
	
	//Health Bar Player 2
	draw_sprite(SpriteHealthbarShadow,0,100,67)
	draw_sprite_stretched(SpriteHealth,0,100,67,(global.player2health/maxHp)*healthBarWidth,32)
	draw_sprite(SpriteHealthBar,0,100,67)
	//Health Bar Player 1
	draw_sprite_stretched(SpriteHealthShadowP1,0,1472,66,(maxHpP1/1.5)*healthBarWidthP1,32)
	//Draw characters next to health bars
	draw_sprite(SpritePlayer,0,1910,75)
	draw_sprite(SpritePlayer2,0,113,85)
	
}
