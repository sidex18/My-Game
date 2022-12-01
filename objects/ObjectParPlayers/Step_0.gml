
/// @description Player  event

//In Game Mechanics
if playerControl==false{
	isGravity=false
}
// Stopping mechanic
if mePlayer.y>935{
	isGravity=false
	onGround=true
}
if mePlayer.x<=135{
	canLeft=false
	if !keyboard_check(upKey) {
		isGravity=true
		sprite_index=meFalling
	}

}
if mePlayer.x>=1885{
	canRight=false
	if !keyboard_check(upKey) {
		isGravity=true
		sprite_index=meFalling
	}
}
if mePlayer.x<=135 and mePlayer.y>=935{
	isGravity=false
	onGround=true
	canLeft=false
}
if mePlayer.x>=1885 and mePlayer.y>=935{
	isGravity=false
	onGround=true
	canRight=false
}

if room==RoomGameMain{
	if isGravity=true{
		y=y+gravityPull
	}

}

if room==RoomGameMain{	
	//movement
	if playerControl==true{
		if keyboard_check(upKey){
				isGravity=false
				if canUp==true{
					y=y+(moveUp*playerSpeed)
				
					
					image_speed=1
				
			
					sprite_index=flyingSprite
					}
			}
		if canRight==true{
			if keyboard_check(rightKey){
				x=x+(moveRight*playerSpeed)
				image_speed=1
			
				isGravity=true
				if flipped==true{
					sprite_index=movingLeftSprite
				}
				else{
					sprite_index=frontMovingSprite
				}
			}
		}
		if canLeft==true{
			if keyboard_check(leftKey){
				x=x+(moveLeft*playerSpeed)
				image_speed=1
				isGravity=true
				if flipped==true{
					sprite_index=frontMovingSprite
				}
				else{
				    sprite_index=movingLeftSprite
				}
				
				
				
			}
		}
		
		 if !keyboard_check(upKey) and !keyboard_check(leftKey){
			if !keyboard_check(rightKey){
			    
				isGravity=true
				sprite_index= meFalling
			}
			 
		}
		
	}


	//Facing Mechanic
	
	if Player1.x < Player2.x{
		image_xscale=-baseScale
		flipped=true
		
	}
	else{
		
		image_xscale=baseScale
		flipped=false
		}
	
	//Shooting Mechanic
 if playerControl==true and room==RoomGameMain{
	 if keyboard_check_pressed(shoot){
		 if object_index==ObjectPlayer2{
			instance_create_layer(x,y,"Instances",ObjectBullet)
		 }
		 if object_index==ObjectPlayer{
			 instance_create_layer(x,y,"Instances",ObjectBulletP1)
		 }
		
	
			}
 }



			
		
		

// Death Mechanic
if global.player2health<=0{
	playerControl=false
	
	if object_index==Player2{
		sprite_index=SpritePlayer2Death
		if image_index>=4 and image_index<5{
			image_speed=0
			alarm[3]=1
		}
		}

	
}
else if global.player1health<=0{
	playerControl=false
	
	if object_index==Player1{
		sprite_index=SpritePlayer1Death
		if image_index>=5 and image_index<6{
			image_speed=0
			alarm[3]=1
		}
		}
}
	



	
}
wallBlock=collision_rectangle(x-130,y-130,x+130,y+130,ObjectWall,0,1)
if !wallBlock{
	
	canLeft=true
	canRight=true
	canUp=true
	}

