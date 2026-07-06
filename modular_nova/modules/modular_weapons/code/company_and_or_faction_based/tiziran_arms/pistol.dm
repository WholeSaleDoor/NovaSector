/obj/item/gun/ballistic/automatic/pistol/tiziran
	name = "\improper Guêpe Pistol"
	desc = "The standard issue service pistol of SolFed's various military branches. Uses .35 Sol, and comes with an attached light."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/trappiste_fabriek/guns32x.dmi'
	icon_state = "wespe"

	fire_sound = 'modular_nova/modules/modular_weapons/sounds/pistol_light.ogg'

	w_class = WEIGHT_CLASS_NORMAL

	accepted_magazine_type = /obj/item/ammo_box/magazine/c35sol_pistol
	special_mags = TRUE

	suppressor_x_offset = 0
	suppressor_y_offset = 0

	fire_delay = 0.2 SECONDS

	lore_blurb = "The Guêpe is an evolution of an older pistol which has seen use for over a century, with incremental \
		improvements keeping it up to date.<br><br>\
		The first models proved incredibly popular with law enforcement throughout SolFed, \
		due to their ease of use, maintainability, and its low-caliber bullets heavily reducing the chance of collateral damage. \
		As the decades passed, the proven design was steadily adopted into various militaries as well; most notably, by the \
		Sol Federation Armed Forces, who took it on as their first service pistol, just after their founding in 2492, \
		with more modern variants remaining the SFAF's primary service pistol to this day. \
		In the civilian market, the Guêpe is particularly popular among spacers who appreciate its simplicity and surplus of spare parts.<br><br>\
		Less savory individuals also appreciate just how easy it is get in full-auto, simply by traveling to a less restrictive jurisdiction, and either \
		buying a full-auto variant or having it converted."

/obj/item/gun/ballistic/automatic/pistol/tiziran/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_TRAPPISTE)

/obj/item/gun/ballistic/automatic/pistol/tiziran/add_seclight_point()
	AddComponent(/datum/component/seclite_attachable, \
		starting_light = new /obj/item/flashlight/seclite(src), \
		is_light_removable = FALSE, \
		)

/obj/item/gun/ballistic/automatic/pistol/tiziran/no_mag
	spawnwithmagazine = FALSE
