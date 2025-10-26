hspd=0;
vspd=0;
spd=3
grav=.3;
jump_f=8;

spiders = [
	{
		name: "lycosa",
		life: 5,
		spd: 3,
		jump_f: 6,
		damage: 2,
		sprite: spr_lycosa
	},
	{
		name: "salticidae",
		life: 3,
		spd: 6,
		jump_f: 8,
		damage: 0.5,
		sprite: spr_salticidae
	},
	{
		name: "selenops",
		life: 5,
		spd: 3,
		jump_f: 6,
		damage: 2,
		sprite: spr_selenops
	}
];

spider = spiders[0]