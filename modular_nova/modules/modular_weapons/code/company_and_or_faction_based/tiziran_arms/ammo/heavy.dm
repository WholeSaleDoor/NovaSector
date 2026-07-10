/obj/item/ammo_casing/tiziran/heavy
	name = "A Talunan Imperium flechette."
	desc = "A Talunan Imperium plastic caseless long round."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "980_gas"

	caliber = CALIBER_TIZ_HEAVY
	projectile_type = /obj/projectile/bullet/tiziran/heavy

/obj/projectile/bullet/tiziran/heavy
	name = "Talunan Long Flechette"

	damage = 5
	armour_penetration = 10
	stamina = 5
	weak_against_armour = TRUE

	wound_bonus = 5
	exposed_wound_bonus = 10

// Heavy plastic flechette. More of a stamina damage round.
/obj/item/ammo_casing/tiziran/heavy/plastic
	name = "Talunan Heavy plastic flechette casing"
	desc = "A Talunan Imperium plastic caseless heavy round."
	icon_state = "980_gas"
	projectile_type = /obj/projectile/bullet/tiziran/heavy/plastic

/obj/projectile/bullet/tiziran/heavy/plastic
	name = "Heavy Plastic Flechette"

	damage = 6
	armour_penetration = 10
	stamina = 40
	weak_against_armour = TRUE

	wound_bonus = 10
	exposed_wound_bonus = 10


// Heavy steel flechette, go by these as a benchmark.
/obj/item/ammo_casing/tiziran/heavy/steel
	name = "Talunan Heavy steel flechette casing"
	desc = "A Talunan Imperium steel caseless heavy round."
	icon_state = "980_gas"
	projectile_type = /obj/projectile/bullet/tiziran/heavy/steel

/obj/projectile/bullet/tiziran/heavy/steel
	name = "Heavy Steel Flechette"

	damage = 20
	armour_penetration = 30
	stamina = 10
	weak_against_armour = FALSE

	projectile_piercing = PASSGLASS|PASSGRILLE
	demolition_mod = 0.9

	wound_bonus = 5
	exposed_wound_bonus = 10


// Heavy plasteel flechette. Traitor/BMU item only.
/obj/item/ammo_casing/tiziran/heavy/plasteel
	name = "Talunan Heavy plasteel flechette casing"
	desc = "A Talunan Imperium plasteel caseless heavy round."
	icon_state = "980_gas"
	projectile_type = /obj/projectile/bullet/tiziran/heavy/plasteel

/obj/projectile/bullet/tiziran/heavy/plasteel
	name = "Heavy Plasteel Flechette"

	damage = 25
	armour_penetration = 50
	stamina = 15
	weak_against_armour = FALSE

	projectile_piercing = PASSGLASS|PASSMOB|PASSGRILLE
	demolition_mod = 1.3

	wound_bonus = 15
	exposed_wound_bonus = 20

// Heavy Talunan milspec flechette. ADMINBUS ONLY!!!
/obj/item/ammo_casing/tiziran/heavy/milspec
	name = "Talunan Heavy milspec flechette casing"
	desc = "A Talunan Imperium milspec caseless heavy round."
	icon_state = "980_gas"

	projectile_type = /obj/projectile/bullet/tiziran/heavy/milspec

/obj/projectile/bullet/tiziran/heavy/milspec
	name = "Heavy Milspec Flechette"

	damage = 30
	armour_penetration = 70
	stamina = 25
	weak_against_armour = FALSE

	projectile_piercing = PASSGLASS|PASSMOB|PASSGRILLE
	demolition_mod = 2

	wound_bonus = 15
	exposed_wound_bonus = 20
