// Define the barrel for the rifle part of a combination shotgun and all the functions
// This was a bit of a pain and I am open to different ways of doing it
/obj/item/gun/ballistic/rifle/tribarrel
	name = "combination gun rifle barrel"
	spawn_blacklisted = TRUE
	pin = null
	bolt_type = BOLT_TYPE_NO_BOLT
	// It'll be really strong burst damage without this.
	projectile_damage_multiplier = 0.7
	pin = /obj/item/firing_pin

/obj/item/gun/ballistic/rifle/tribarrel/item_interaction(mob/living/user, obj/item/tool, list/modifiers)
	. = ..()
	if((. = ITEM_INTERACT_SUCCESS) && (istype(tool, /obj/item/ammo_box) || isammocasing(tool)))
		chamber_round()

/obj/item/gun/ballistic/rifle/tribarrel/Initialize(mapload)
	. = ..()
	var/obj/item/gun/gun = loc
	if (!istype(gun))
		return INITIALIZE_HINT_QDEL
	pin = gun.pin
	RegisterSignal(gun, COMSIG_GUN_PIN_INSERTED, PROC_REF(on_pin_inserted))
	RegisterSignal(gun, COMSIG_GUN_PIN_REMOVED, PROC_REF(on_pin_removed))
	RegisterSignal(gun, COMSIG_GUN_SAFETY_TOGGLED, PROC_REF(safety_control))


/obj/item/gun/ballistic/rifle/tribarrel/proc/on_pin_inserted(obj/item/gun/source, obj/item/firing_pin/new_pin, mob/living/user)
	SIGNAL_HANDLER
	pin = new_pin

/obj/item/gun/ballistic/rifle/tribarrel/proc/on_pin_removed(obj/item/gun/source, obj/item/firing_pin/old_pin, mob/living/user)
	SIGNAL_HANDLER
	pin = null

/obj/item/gun/ballistic/rifle/tribarrel/proc/safety_control(obj/item/gun/source, mob/living/user)
	SIGNAL_HANDLER
	// The safeties are already synced short of a VV, so this should be sufficient.
	var/datum/component/gun_safety/safety = src.GetComponent(/datum/component/gun_safety)
	safety.toggle_safeties(user)



// Define the unique variants
/obj/item/gun/ballistic/rifle/tribarrel/strilka
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/strilka

/obj/item/gun/ballistic/rifle/tribarrel/flechette
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/heavy_flechette

// Magazine to hold the barrel for strilka ammo
/obj/item/ammo_box/magazine/internal/strilka
	name = "combination gun chamber (s)"
	ammo_type = /obj/item/ammo_casing/strilka310
	caliber = CALIBER_STRILKA310
	max_ammo = 1

// Magazine to hold the barrel for heavy flechette ammo
/obj/item/ammo_box/magazine/internal/heavy_flechette
	name = "combination gun chamber (f)"
	ammo_type = /obj/item/ammo_casing/tiziran/heavy/steel
	caliber = CALIBER_TIZ_HEAVY
	max_ammo = 1



// Shared traits between both shotguns.
/obj/item/gun/ballistic/shotgun/doublebarrel/tiziran
	name = "Raroir_zso Triple Barrel Shotgun"
	desc = "An ornate shotgun featuring two standard Sol shotgun barrels, alongside a third rifle barrel for rifle rounds depending on the variant.\
	This is modeled after a very rare limited run Tiziran shotgun possessed by very wealthy nobles, it even includes the gold and silver.\"
	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/tiziran_arms/guns48x.dmi'
	can_be_sawn_off = FALSE


// The actual shotguns themselves

// Tiziran heavy flechette variant. Functionally identical to the DB otherwise.
/obj/item/gun/ballistic/shotgun/doublebarrel/tiziran/flechette
	icon_state = "raroir_zso"
	desc += "This one has a flechette rifle barrel."
	/// Attached rifle barrel
	var/obj/item/gun/ballistic/rifle/tribarrel/flechette/underbarrel

/obj/item/gun/ballistic/shotgun/doublebarrel/tiziran/flechette/Initialize(mapload)
	. = ..()
	underbarrel = new(src)
	update_appearance()

/obj/item/gun/ballistic/shotgun/doublebarrel/tiziran/flechette/Destroy()
	QDEL_NULL(underbarrel)
	return ..()

/obj/item/gun/ballistic/shotgun/doublebarrel/tiziran/flechette/try_fire_gun(atom/target, mob/living/user, params)
	if(LAZYACCESS(params2list(params), RIGHT_CLICK))
		return underbarrel.try_fire_gun(target, user, params)
	return ..()

/obj/item/gun/ballistic/shotgun/doublebarrel/tiziran/flechette/item_interaction(mob/living/user, obj/item/tool, list/modifiers)
	if(isammocasing(tool))
		if(istype(tool, underbarrel.magazine.ammo_type))
			underbarrel.item_interaction(user, tool, modifiers)
		return ITEM_INTERACT_BLOCKING
	return ..()


// Strilka Variant. Functionally identical to the DB otherwise.
/obj/item/gun/ballistic/shotgun/doublebarrel/tiziran/strilka
	icon_state = "raroir_zso"
	desc += "This one has a strilka rifle barrel."
	/// Attached rifle barrel
	var/obj/item/gun/ballistic/rifle/tribarrel/strilka/underbarrel

/obj/item/gun/ballistic/shotgun/doublebarrel/tiziran/strilka/Initialize(mapload)
	. = ..()
	underbarrel = new(src)
	update_appearance()

/obj/item/gun/ballistic/shotgun/doublebarrel/tiziran/strilka/Destroy()
	QDEL_NULL(underbarrel)
	return ..()

/obj/item/gun/ballistic/shotgun/doublebarrel/tiziran/strilka/try_fire_gun(atom/target, mob/living/user, params)
	if(LAZYACCESS(params2list(params), RIGHT_CLICK))
		return underbarrel.try_fire_gun(target, user, params)
	return ..()

/obj/item/gun/ballistic/shotgun/doublebarrel/tiziran/strilka/item_interaction(mob/living/user, obj/item/tool, list/modifiers)
	if(isammocasing(tool))
		if(istype(tool, underbarrel.magazine.ammo_type))
			underbarrel.item_interaction(user, tool, modifiers)
		return ITEM_INTERACT_BLOCKING
	return ..()
