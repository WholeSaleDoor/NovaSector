// Base Sol classic rifle meant for crewside use
/obj/item/gun/ballistic/automatic/tiziran_heavy
	name = "\improper Tiziran Heavy Flechette Rifle"
	desc = "A previous-generation heavy battle rifle firing .40 Sol. Seen in the hands of SolFed parade units \
		or in surplus stockpiles. Accepts any standard SolFed rifle magazine."

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

	lore_blurb = "The V-K Blokstaart series of battle rifles are SolFed's previous generation of battle rifle, manufactured by Veldjen-Kuiper Armories.<br>\
		<br>\
		Designed from the ground-up to be reliable, durable, and still relatively cheap for mass adoption, the Blokstaart series was developed around \
		the .40 Sagittarian cartridge, well before its official adoption as .40 Sol Long. \
		This close relationship between rifle and cartridge allows all conventional variants of the Blokstaart to share magazines and cartridges, \
		lengthening the lifespans of logistics coordinators, quartermasters, and other supply staff by several years.<br>\
		<br>\
		While primarily manufactured for military sale, limited amounts were sold to the civilian market when it was still in service. \
		When the MMR-2543 series was initially adopted, the Blokstaart series was decommissioned and left for surplus stockpiles - which gave it \
		a second life during the Rimward War, when those stockpiles were smuggled into occupied territories to arm a great deal of SolFed partisans.<br>\
		<br>\
		With the further adoption of the MMR-2543, Veldjen-Kuiper Armories has decided to open sales to independent customers \
		to make good use of their surplus stock."

	/// Lore specific to this type of gun.
	var/model_specific_lore = "This particular variant is the Renpaard-Infanterie model, built for general use across SolFed's various infantry branches. \
		The plain glow-sights aren't anything remarkable, and the skeletal stock is firmly locked in place, unable to fold. \
		The fact of the matter, though, is that it remains true to its name as a swift warhorse of a rifle."

//obj/item/gun/ballistic/automatic/sol_classic/Initialize(mapload)
	//. = ..()
	//give_autofire()

/obj/item/gun/ballistic/automatic/sol_classic/get_lore_blurb()
	return lore_blurb + "<br><br>" + model_specific_lore

/// Separate proc for handling auto fire just because one of these subtypes isn't otomatica
/obj/item/gun/ballistic/automatic/sol_classic/proc/give_autofire()
	AddComponent(/datum/component/automatic_fire, fire_delay)

/obj/item/gun/ballistic/automatic/sol_classic/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_VELDJEN_KUIPER)

/obj/item/gun/ballistic/automatic/tiziran_heavy/no_mag
	spawnwithmagazine = FALSE
