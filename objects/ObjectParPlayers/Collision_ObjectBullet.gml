/// @description Bullet Mechanic

instance_create_layer(x,y,"Instances",ObjectBlast)

with(other){
	instance_destroy()
}
if object_index=ObjectPlayer{
	global.player1health=global.player1health-7
	maxHpP1=maxHpP1+0.1
	sprite_index=SpritePlayerHit
	image_index=1
	alarm[2]=room_speed/9
}

