// Yeah the lizards weren't really too into lasers. Tried but no likey.
/obj/item/gun/energy/laser/tiziran
	name = "\improper Tiziran Name Laser Thingy"
	desc = "Placeholder Text"
	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/tiziran_arms/guns32x.dmi'
	icon_state = "eokul_zezok"

	// Look I'm short in the sound department, okay?
	var/load_sound = 'sound/items/weapons/gun/revolver/load_bullet.ogg'

	// Let there be light
	light_system = OVERLAY_LIGHT
	inhand_icon_state = null
	display_empty = TRUE
	charge_sections = 4
	shaded_charge = SHADED_CHARGE_MODE_LABELED

	// A disabler AND a hellfire mode... drawn from the Hoshi.
	modifystate = TRUE
	ammo_type = list(/obj/item/ammo_casing/energy/cybersun_small_hellfire/tiz, /obj/item/ammo_casing/energy/cybersun_small_disabler/tiz)
	ammo_x_offset = 1

	w_class = WEIGHT_CLASS_SMALL
	weapon_weight = WEAPON_MEDIUM

	// Recharge 1 shot per recharge cycle.
	self_charge_amount = LASER_SHOTS(16, STANDARD_CELL_CHARGE)
	// Hammer. For the single action larper in you.
	var/hammer = FALSE

// OooooooOoOOOooo, you need to cock it, oOooOOooOOooo
/obj/item/gun/energy/laser/tiziran/process_fire(atom/target, mob/living/user, message = TRUE, params = null, zone_override = "", bonus_spread = 0)
	if(!hammer)
		balloon_alert(user, "hammer not cocked")
		return FALSE

	hammer = FALSE
	return ..()


// Right click for pull. If there's a cleaner solution, let me know, but for some reason these have different interaction ranges and I need both. I don't know why.
/obj/item/gun/energy/laser/tiziran/attack_self_secondary(mob/user, list/modifiers)
	hammer_pull(user)
	return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN

/obj/item/gun/energy/laser/tiziran/ranged_interact_with_atom_secondary(atom/interacting_with, mob/living/user, list/modifiers)
	hammer_pull(user)
	return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN

/obj/item/gun/energy/laser/tiziran/proc/hammer_pull(user)
	if (hammer)
		balloon_alert(user, "already cocked")
		return
	balloon_alert(user, "hammer cocked")
	playsound(src, load_sound, 80, 20)
	hammer = TRUE;
	update_appearance()


/obj/item/gun/energy/laser/tiziran/update_overlays()
	. = ..()
	// Slap the emissives on there for the lights.
	. += emissive_appearance(icon, "eokul_zezok_e", src, alpha = src.alpha)

	if(modifystate)
		var/obj/item/ammo_casing/energy/shot = ammo_type[select]

		// Handle the light depending on mode for the actual gun.
		if(istype(shot, /obj/item/ammo_casing/energy/cybersun_small_disabler/tiz))
			set_light(l_range = 1.1, l_power = 0.6, l_color = LIGHT_COLOR_CYAN, l_on = TRUE)
		else
			set_light(l_range = 1.1, l_power = 0.6, l_color = COLOR_AMMO_HELLFIRE, l_dir = NORTH, l_on = TRUE)






// Adjust ammo count. I base it on the Hoshi's as it's just a worse pistol form of it, simpler to have this for balance adjustments.
/obj/item/ammo_casing/energy/cybersun_small_hellfire/tiz
	projectile_type = /obj/projectile/beam/cybersun_laser/hellfire/tiz
	select_name = "hellfire"
	muzzle_flash_color = COLOR_AMMO_HELLFIRE
	e_cost = LASER_SHOTS(8, STANDARD_CELL_CHARGE)

/obj/item/ammo_casing/energy/cybersun_small_disabler/tiz
	projectile_type = /obj/projectile/beam/cybersun_laser/disable_bounce/tiz
	select_name = "disable"
	muzzle_flash_color = LIGHT_COLOR_CYAN
	e_cost = LASER_SHOTS(8, STANDARD_CELL_CHARGE)

// Adjust sprites because I don't think the Hoshi's convey the impact of what it has
/obj/projectile/beam/cybersun_laser/hellfire/tiz
	icon = 'icons/obj/weapons/guns/projectiles.dmi'
	icon_state = "hellfire"

/obj/projectile/beam/cybersun_laser/disable_bounce/tiz
	icon = 'icons/obj/weapons/guns/projectiles.dmi'
	icon_state = "omnilaser"


