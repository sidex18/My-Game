/// @description bullet mecahnic player 1
instance_create_layer(x,y,"Instances",ObjectBlast)

with(other){
	instance_destroy()
}
if object_index=ObjectPlayer2{
	global.player2health=global.player2health-7
	sprite_index=SpritePlayer2Hit
	image_index=1
	alarm[2]=room_speed/9
}