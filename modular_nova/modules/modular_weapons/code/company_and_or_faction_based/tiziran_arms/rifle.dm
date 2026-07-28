/obj/item/gun/ballistic/automatic/tiz_rifle
	name = "\improper Tiziran Flechette Rifle"
	desc = "Placeholder text."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/tiziran_arms/guns48x.dmi'
	icon_state = "tiziran_rifle_m2"

	worn_icon = 'modular_nova/modules/modular_weapons/icons/mob/company_and_or_faction_based/carwo_defense_systems/guns_worn.dmi'
	worn_icon_state = "infanterie"

	lefthand_file = 'modular_nova/modules/modular_weapons/icons/mob/company_and_or_faction_based/carwo_defense_systems/guns_lefthand.dmi'
	righthand_file = 'modular_nova/modules/modular_weapons/icons/mob/company_and_or_faction_based/carwo_defense_systems/guns_righthand.dmi'
	inhand_icon_state = "infanterie"

	SET_BASE_PIXEL(-8, 0)

	special_mags = TRUE

	bolt_type = BOLT_TYPE_LOCKING

	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	slot_flags = ITEM_SLOT_BACK

	accepted_magazine_type = /obj/item/ammo_box/magazine/tiz_long_magazine
	spawn_magazine_type = /obj/item/ammo_box/magazine/tiz_long_magazine/extended

	fire_sound = 'sound/items/weapons/gun/smg/shot.ogg'
	suppressed_sound = 'modular_nova/modules/modular_weapons/sounds/suppressed_rifle.ogg'
	can_suppress = TRUE

	suppressor_x_offset = 2
	suppressor_y_offset = 1

	burst_size = 1
	fire_delay = 0.1 SECONDS
	actions_types = list()

	spread = 2
	projectile_wound_bonus = 0
	projectile_damage_multiplier = 1
	projectile_speed_multiplier = 1.1

	lore_blurb = "Placeholder text."

	/// Lore specific to this type of gun.
	var/model_specific_lore = "Placeholder text."

/obj/item/gun/ballistic/automatic/tiz_rifle/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/automatic_fire, fire_delay)

/obj/item/gun/ballistic/automatic/tiz_rifle/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_TIZIRAN)

/obj/item/gun/ballistic/automatic/tiz_rifle/examine(mob/user)
	. = ..()
	. += span_notice("You can <b>examine closer</b> to learn a little more about this weapon.")

/obj/item/gun/ballistic/automatic/tiz_rifle/get_lore_blurb()
	return lore_blurb + "<br><br>" + model_specific_lore

/obj/item/gun/ballistic/automatic/tiz_rifle/no_mag
	spawnwithmagazine = FALSE
