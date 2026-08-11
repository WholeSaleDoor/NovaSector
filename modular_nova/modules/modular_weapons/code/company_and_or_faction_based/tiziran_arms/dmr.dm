// A Tiziran DMR using heavy flechettes, meant for crew use.
/obj/item/gun/ballistic/automatic/tiziran_heavy
	name = "\improper Tiziran Heavy Flechette Rifle"
	desc = "Placeholder text."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/tiziran_arms/guns48x.dmi'
	icon_state = "aroz_l1"

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

	accepted_magazine_type = /obj/item/ammo_box/magazine/tiziran/heavy

	fire_sound = 'sound/items/weapons/gun/rifle/shot_heavy.ogg'
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


/obj/item/gun/ballistic/automatic/tiziran_heavy/get_lore_blurb()
	return lore_blurb + "<br><br>" + model_specific_lore

/obj/item/gun/ballistic/automatic/tiziran_heavy/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_VELDJEN_KUIPER)

/obj/item/gun/ballistic/automatic/tiziran_heavy/no_mag
	spawnwithmagazine = FALSE





