//--	StateMachine

if global.in_menu=1{
	return
}

//--	Controls
var _Keys = {
	left: keyboard_check(ord("A")),
	right: keyboard_check(ord("D")),
	jump: keyboard_check_pressed(ord("W"))
};

//--	Movement

hspd=(_Keys.right-_Keys.left);
hspd*=spider.spd;

//--	Gravity
if !place_meeting(x,y+1,obj_coll){
	vspd+=grav;
}

//--	Jump
if place_meeting(x,y+1,obj_coll) && _Keys.jump{
	vspd-=spider.jump_f;
}
 
//--	Collision
if place_meeting(x+hspd,y,obj_coll){
	while !place_meeting(x+sign(hspd),y,obj_coll){
		x=x+sign(hspd)
	}
	hspd=0
}

if place_meeting(x,y+vspd,obj_coll){
	while !place_meeting(x,y+sign(vspd),obj_coll){
		y=y+sign(vspd)
	}
	vspd=0
}

//--	Sprite
sprite_index=spider.sprite

//--

x+=hspd;
y+=vspd;