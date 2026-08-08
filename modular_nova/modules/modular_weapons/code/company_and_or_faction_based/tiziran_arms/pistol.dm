/obj/item/gun/ballistic/automatic/pistol/tiziran_burst
	name = "\improper Tiziran Burst Pistol"
	desc = "Placeholder text."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/tiziran_arms/guns32x.dmi'
	icon_state = "slesu_ikozuzzs"

	fire_sound = 'modular_nova/modules/modular_weapons/sounds/pistol_light.ogg'

	w_class = WEIGHT_CLASS_NORMAL

	accepted_magazine_type = /obj/item/ammo_box/magazine/tiziran/short
	special_mags = TRUE

	suppressor_x_offset = 12
	suppressor_y_offset = 0

	burst_size = 4
	burst_delay = 0.5
	spread = 10
	actions_types = list(/datum/action/item_action/toggle_firemode)

	lore_blurb = "Placeholder text."

/obj/item/gun/ballistic/automatic/pistol/tiziran_burst/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_TIZIRAN)

/obj/item/gun/ballistic/automatic/pistol/tiziran_burst/add_seclight_point()
	AddComponent(/datum/component/seclite_attachable, \
		starting_light = new /obj/item/flashlight/seclite(src), \
		is_light_removable = FALSE, \
		)

/obj/item/gun/ballistic/automatic/pistol/tiziran_burst/no_mag
	spawnwithmagazine = FALSE

