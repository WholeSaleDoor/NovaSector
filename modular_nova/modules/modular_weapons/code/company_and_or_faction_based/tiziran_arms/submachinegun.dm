/obj/item/gun/ballistic/automatic/Tiziran_Flechette_SMG
	name = "\improper Tiziran Submachine Gun"
	desc = "A small submachine gun firing .35 Sol Short. Commonly seen in the hands of PMCs and other unsavory corpos. Accepts any standard Sol pistol magazine."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/guns32x.dmi'
	icon_state = "sindano"

	lefthand_file = 'modular_nova/modules/modular_weapons/icons/mob/company_and_or_faction_based/carwo_defense_systems/guns_lefthand.dmi'
	righthand_file = 'modular_nova/modules/modular_weapons/icons/mob/company_and_or_faction_based/carwo_defense_systems/guns_righthand.dmi'
	inhand_icon_state = "sindano"

	special_mags = TRUE

	bolt_type = BOLT_TYPE_OPEN

	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_MEDIUM
	slot_flags = ITEM_SLOT_BELT

	accepted_magazine_type = /obj/item/ammo_box/magazine/c35sol_pistol
	spawn_magazine_type = /obj/item/ammo_box/magazine/c35sol_pistol/stendo

	fire_sound = 'modular_nova/modules/modular_weapons/sounds/smg_light.ogg'
	can_suppress = TRUE

	suppressor_x_offset = 11

	burst_size = 3
	fire_delay = 0.25 SECONDS

	spread = 7.5

	lore_blurb = "The Sindano submachinegun was originally produced for a military contract.<br><br>\
		Thanks to that, they could be found in the hands of any SolFed second-line force, \
		such as, but not limited to, medics, ship techs, and logistics officers. \
		Funnily enough, shuttle pilots often had several just to show off.<br><br>\
		Due to SolFed's quest to extend the lifespans of their logistics officers and quartermasters, \
		the Sindano uses the same standard pistol cartridge and magazines that most other SolFed military weapons of \
		small caliber do. This results in interchangeable magazines between pistols and submachine guns. Neat!"

/obj/item/gun/ballistic/automatic/Tiziran_Flechette_SMG/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_TIZIRAN)

/obj/item/gun/ballistic/automatic/Tiziran_Flechette_SMG/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/automatic_fire, fire_delay)

/obj/item/gun/ballistic/automatic/Tiziran_Flechette_SMG/no_mag
	spawnwithmagazine = FALSE
