// A unique rifle designed with AP performance in mind.
/obj/item/gun/ballistic/automatic/plasma_flechette_rifle
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

	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	slot_flags = ITEM_SLOT_BACK

	accepted_magazine_type = /obj/item/ammo_box/magazine/tiz_heavy_magazine
	spawn_magazine_type = /obj/item/ammo_box/magazine/tiz_heavy_magazine

	fire_sound = 'modular_nova/modules/modular_weapons/sounds/rifle_heavy.ogg'
	suppressed_sound = 'modular_nova/modules/modular_weapons/sounds/suppressed_rifle.ogg'
	can_suppress = TRUE

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


/obj/item/gun/ballistic/automatic/plasma_flechette_rifle/get_lore_blurb()
	return lore_blurb + "<br><br>" + model_specific_lore

/obj/item/gun/ballistic/automatic/plasma_flechette_rifle/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_VELDJEN_KUIPER)

/obj/item/gun/ballistic/automatic/plasma_flechette_rifle/no_mag
	spawnwithmagazine = FALSE
