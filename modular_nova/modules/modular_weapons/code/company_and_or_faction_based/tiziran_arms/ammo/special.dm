/obj/item/ammo_casing/tiziran/special_plasma
	name = "A plasma crystalline dart."
	desc = "A long dart projectile that is seemingly made of plasma."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "980_gas"

	caliber = CALIBER_TIZ_HEAVY
	projectile_type = /obj/projectile/bullet/tiziran/special_plasma

/obj/projectile/bullet/tiziran/special_plasma
	name = "Talunan Long Flechette"

	damage = 5
	armour_penetration = 10
	stamina = 5
	weak_against_armour = TRUE

	wound_bonus = 5
	exposed_wound_bonus = 10
