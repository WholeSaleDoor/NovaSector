// A recreation of a unique Tiziran prototype rifle that makes use of plasma shards as projectiles.
/obj/item/gun/ballistic/rifle/plasma_flechette_rifle
	name = "\improper Tiziran Plasma Flechette Rifle"
	desc = "Placeholder text."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/veldjen-kuiper_armories/guns48x.dmi'
	icon_state = "infanterie"

	worn_icon = 'modular_nova/modules/modular_weapons/icons/mob/company_and_or_faction_based/veldjen-kuiper_armories/guns_worn.dmi'
	worn_icon_state = "infanterie"

	lefthand_file = 'modular_nova/modules/modular_weapons/icons/mob/company_and_or_faction_based/veldjen-kuiper_armories/guns_lefthand.dmi'
	righthand_file = 'modular_nova/modules/modular_weapons/icons/mob/company_and_or_faction_based/veldjen-kuiper_armories/guns_righthand.dmi'
	inhand_icon_state = "infanterie"

	SET_BASE_PIXEL(-8, 0)

	special_mags = TRUE

	bolt_type = BOLT_TYPE_LOCKING
	semi_auto = TRUE
	tac_reloads = TRUE
	internal_magazine = FALSE

	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	slot_flags = ITEM_SLOT_BACK

	accepted_magazine_type = /obj/item/ammo_box/magazine/tiz_special_plasma
	spawn_magazine_type = /obj/item/ammo_box/magazine/tiz_special_plasma

	fire_sound = 'modular_nova/modules/modular_weapons/sounds/pulse_shoot.ogg'
	fire_sound_volume = 70
	load_empty_sound = 'modular_nova/modules/modular_weapons/sounds/pulse_pull.ogg'


	suppressor_x_offset = 12

	burst_size = 1
	fire_delay = 0.33 SECONDS
	actions_types = list()

	spread = 5
	projectile_wound_bonus = -10

	lore_blurb = "Placeholder text."

	/// Lore specific to this type of gun.
	var/model_specific_lore = "Placeholder text."

	// Look it had to be done, okay? We all know what this thing is!
	var/combine_counter = 0
	var/pending_combine = 0

/obj/item/gun/ballistic/rifle/plasma_flechette_rifle/get_lore_blurb()
	return lore_blurb + "<br><br>" + model_specific_lore

/obj/item/gun/ballistic/rifle/plasma_flechette_rifle/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_VELDJEN_KUIPER)

/obj/item/gun/ballistic/rifle/plasma_flechette_rifle/no_mag
	spawnwithmagazine = FALSE

/obj/item/gun/ballistic/rifle/plasma_flechette_rifle/proc/iterate_counter()
	// Up the counter by one, called by the projectile ONLY if it hits an is_living atom.
	combine_counter += 1
	// Once the counter hits 2 or more (in case it doesn't proc properly or something), or that we've hit an is_living target twice, the gun will modify the next round in line.
	// While I'd love to keep a list of people hit to keep track and have a timer, I am not that experienced to do it cleanly. Perhaps in a later iteration.
	if(combine_counter >= 3)
		pending_combine = 1
		combine_counter	= 0
		// Sound cue to know.
		playsound(src, load_empty_sound, 100, load_sound_vary)

// This is a check the projectile will call on being fired before firing
/obj/item/gun/ballistic/rifle/plasma_flechette_rifle/proc/get_check()
	var/pending_check = pending_combine
	return pending_check

// This is to reset the counter from the projectiles point of view, and, to play the unique firing sound.
/obj/item/gun/ballistic/rifle/plasma_flechette_rifle/proc/clear_check()
	pending_combine = 0


