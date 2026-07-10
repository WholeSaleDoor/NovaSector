// The base for ALL tiziran flechette weaponry. All of them are caseless, all use the same projectile picture.
/obj/item/ammo_casing/tiziran
	name = "Insert name here."
	desc = "Insert name here."

	// This is where the casing icons go.
	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "40sol"

	// This is the ammo details.
	caliber = CALIBER_SOL40LONG
	ammo_stack_type = /obj/item/ammo_box/magazine/ammo_stack/c40_sol

	// Add your new ammo here.
	projectile_type = /obj/projectile/bullet/tiziran

/obj/item/ammo_casing/tiziran/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/caseless)

/obj/projectile/bullet/tiziran
	name = ".40 Sol Long bullet"

	damage = 6
	armour_penetration = 10
	stamina = 10
	weak_against_armour = FALSE

	wound_bonus = 5
	exposed_wound_bonus = 10
