// Base short (pistol/PDW/SMG) caseless flechette.
/obj/item/ammo_casing/tiziran/short
	name = "A Talunan Imperium flechette."
	desc = "A Talunan Imperium plastic caseless short round."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/tiziran_arms/ammo.dmi'
	icon_state = "35sol"

	caliber = CALIBER_TIZ_SHORT
	projectile_type = /obj/projectile/bullet/tiziran/short


/obj/projectile/bullet/tiziran/short
	name = "Talunan Short  Flechette"

	damage = 5
	armour_penetration = 10
	stamina = 5
	weak_against_armour = TRUE

	wound_bonus = 5
	exposed_wound_bonus = 10



// Lighter caliber caseless plastic flechette. More of a less-lethal sort of round.
/obj/item/ammo_casing/tiziran/short/plastic
	name = "Talunan Short plastic flechette casing"
	desc = "A Talunan Imperium plastic caseless short round."
	icon_state = "35sol"

	projectile_type = /obj/projectile/bullet/tiziran/short/plastic


/obj/projectile/bullet/tiziran/short/plastic
	name = "Talunan Short Plastic Flechette"

	damage = 5
	armour_penetration = 10
	stamina = 5
	weak_against_armour = TRUE

	wound_bonus = 5
	exposed_wound_bonus = 10


// Lighter caliber caseless steel flechette. Should be the "best" cartridge that the crew gets. BENCHMARK PERFORMANCE.
/obj/item/ammo_casing/tiziran/short/steel
	name = "Talunan Short steel flechette casing"
	desc = "A Talunan Imperium steel caseless short round."
	icon_state = "35sol"

	projectile_type = /obj/projectile/bullet/tiziran/short/steel


/obj/projectile/bullet/tiziran/short/steel
	name = "Talunan Short Steel Flechette"

	damage = 5
	armour_penetration = 30
	stamina = 0
	weak_against_armour = FALSE

	projectile_piercing = PASSGLASS|PASSGRILLE
	demolition_mod = 0.5

	wound_bonus = 5
	exposed_wound_bonus = 10


// Lighter caliber caseless syndicate plasteel flechette. TRAITOR ITEM/BLACK MARKET UPLINK ONLY!!! Also illegal.
/obj/item/ammo_casing/tiziran/short/plasteel
	name = "Talunan Short plasteel flechette casing"
	desc = "A Talunan Imperium plasteel caseless short round."
	icon_state = "35sol"

	projectile_type = /obj/projectile/bullet/tiziran/short/plasteel


/obj/projectile/bullet/tiziran/short/plasteel
	name = "Talunan Short Plasteel Flechette"

	damage = 6
	armour_penetration = 50
	stamina = 5
	weak_against_armour = FALSE

	projectile_piercing = PASSGLASS|PASSMOB|PASSGRILLE
	demolition_mod = 0.75

	wound_bonus = 5
	exposed_wound_bonus = 10


// Lighter caliber caseless tiziran milspec flechette. ADMINBUS ONLY!!!
/obj/item/ammo_casing/tiziran/short/milspec
	name = "Talunan Short milspec flechette casing"
	desc = "A Talunan Imperium milspec caseless short round."
	icon_state = "35sol"

	projectile_type = /obj/projectile/bullet/tiziran/short/milspec

/obj/projectile/bullet/tiziran/short/milspec
	name = "Talunan Short Milspec Flechette"

	damage = 7
	armour_penetration = 60
	stamina = 10
	weak_against_armour = FALSE

	projectile_piercing = PASSGLASS|PASSMOB|PASSGRILLE
	demolition_mod = 1.5

	wound_bonus = 15
	exposed_wound_bonus = 20


/obj/item/ammo_box/tiziran_short
	name = "ammo box (.35 Sol Short lethal)"
	desc = "A box of .35 Sol Short pistol rounds, holds twenty-four rounds."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "35box"

	multiple_sprites = AMMO_BOX_FULL_EMPTY
	w_class = WEIGHT_CLASS_NORMAL
	caliber = CALIBER_TIZ_SHORT


/obj/item/ammo_box/tiziran_short/plastic
	name = "ammo box (Talunan Short plastic flechettes)"
	desc = "A box of Talunan Short flechettes, holds thirty rounds. All white with a small manufacturer logo."
	icon_state = "35box"

	ammo_type = /obj/item/ammo_casing/tiziran/short/plastic
	max_ammo = 30

/obj/item/ammo_box/tiziran_short/steel
	name = "ammo box (Talunan Short steel flechettes)"
	desc = "A box of Talunan Short flechettes, holds thirty rounds. All white with a gray band along the white box, a small manufacturer logo."
	icon_state = "35box"

	ammo_type = /obj/item/ammo_casing/tiziran/short/steel
	max_ammo = 30

/obj/item/ammo_box/tiziran_short/plasteel
	name = "ammo box (Talunan Short plasteel flechettes)"
	desc = "A box of Talunan Short flechettes, holds fourty rounds. This one is unmarked by any manufacturer, but takes on a ominous red box."
	icon_state = "35box"

	ammo_type = /obj/item/ammo_casing/tiziran/short/plasteel
	max_ammo = 40

/obj/item/ammo_box/tiziran_short/milspec
	name = "ammo box (Talunan Short milspec flechettes)"
	desc = "A box of Talunan Short flechettes, holds fourty rounds. This one comes in black, a Talunan Imperium flag takes the centerpiece."
	icon_state = "35box"

	ammo_type = /obj/item/ammo_casing/tiziran/short/milspec
	max_ammo = 40
