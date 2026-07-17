// Yeah the lizards weren't really too into lasers. Tried but no likey.
/obj/item/gun/energy/laser/tiziran
	name = "\improper Tiziran Name Laser Thingy"
	desc = "Placeholder Text"
	icon_state = "hellgun"

	ammo_type = list(/obj/item/ammo_casing/energy/cybersun_small_hellfire/tiz, /obj/item/ammo_casing/energy/cybersun_small_disabler/tiz)
	ammo_x_offset = 1

	light_color = COLOR_AMMO_HELLFIRE
	// Low and slow... or something like that idk
	burst_size = 1
	fire_delay = 0.5 SECONDS
	w_class = WEIGHT_CLASS_SMALL

	// I'm surprised this worked but basically, this will recharge 1 shot per recharge cycle.
	self_charge_amount = LASER_SHOTS(16, STANDARD_CELL_CHARGE)


// Adjust ammo count. I base it on the Hoshi's as it's just a worse pistol form of it, simpler to have this for balance adjustments.
/obj/item/ammo_casing/energy/cybersun_small_hellfire/tiz
	projectile_type = /obj/projectile/beam/cybersun_laser/hellfire/tiz
	e_cost = LASER_SHOTS(8, STANDARD_CELL_CHARGE)

/obj/item/ammo_casing/energy/cybersun_small_disabler/tiz
	projectile_type = /obj/projectile/beam/cybersun_laser/disable_bounce/tiz
	e_cost = LASER_SHOTS(8, STANDARD_CELL_CHARGE)

// Adjust sprites because I don't think the Hoshi's convey the impact of what it has
/obj/projectile/beam/cybersun_laser/hellfire/tiz
	icon = 'icons/obj/weapons/guns/projectiles.dmi'
	icon_state = "hellfire"

/obj/projectile/beam/cybersun_laser/disable_bounce/tiz
	icon = 'icons/obj/weapons/guns/projectiles.dmi'
	icon_state = "omnilaser"
