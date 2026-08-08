/obj/item/gun/ballistic/automatic/Tiziran_Flechette_SMG
	name = "\improper Tiziran Submachine Gun"
	desc = "Placeholder text."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/tiziran_arms/guns32x.dmi'
	icon_state = "hila_l1"

	lefthand_file = 'modular_nova/modules/modular_weapons/icons/mob/company_and_or_faction_based/carwo_defense_systems/guns_lefthand.dmi'
	righthand_file = 'modular_nova/modules/modular_weapons/icons/mob/company_and_or_faction_based/carwo_defense_systems/guns_righthand.dmi'
	inhand_icon_state = "sindano"

	suppressor_x_offset = 6
	special_mags = TRUE

	bolt_type = BOLT_TYPE_OPEN
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_MEDIUM
	slot_flags = ITEM_SLOT_BELT

	accepted_magazine_type = /obj/item/ammo_box/magazine/tiziran/smg

	fire_sound = 'sound/items/weapons/gun/smg/shot.ogg'
	can_suppress = TRUE

	burst_size = 1
	fire_delay = 0.125 SECONDS
	projectile_speed_multiplier = 1.1
	spread = 7.5

	lore_blurb = "Placeholder text."

/obj/item/gun/ballistic/automatic/Tiziran_Flechette_SMG/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_TIZIRAN)

/obj/item/gun/ballistic/automatic/Tiziran_Flechette_SMG/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/automatic_fire, fire_delay)

/obj/item/gun/ballistic/automatic/Tiziran_Flechette_SMG/no_mag
	spawnwithmagazine = FALSE




/obj/item/gun/ballistic/automatic/Tiziran_Flechette_SMG/evil
	name = "\improper Tiziran Submachine Gun"
	desc = "Placeholder text."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/tiziran_arms/guns32x.dmi'
	icon_state = "hila_l1"

	lefthand_file = 'modular_nova/modules/modular_weapons/icons/mob/company_and_or_faction_based/carwo_defense_systems/guns_lefthand.dmi'
	righthand_file = 'modular_nova/modules/modular_weapons/icons/mob/company_and_or_faction_based/carwo_defense_systems/guns_righthand.dmi'
	inhand_icon_state = "sindano"

	accepted_magazine_type = /obj/item/ammo_box/magazine/tiziran/smg
	spawn_magazine_type = /obj/item/ammo_box/magazine/tiziran/smg/extended

	suppressor_x_offset = 6

	weapon_weight = WEAPON_LIGHT
	fire_delay = 0.10 SECONDS

	lore_blurb = "Placeholder text."

/obj/item/gun/ballistic/automatic/Tiziran_Flechette_SMG/evil/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_TIZIRAN)

/obj/item/gun/ballistic/automatic/Tiziran_Flechette_SMG/evil/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/automatic_fire, fire_delay)

/obj/item/gun/ballistic/automatic/Tiziran_Flechette_SMG/evil/no_mag
	spawnwithmagazine = FALSE
