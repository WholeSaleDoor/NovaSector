// Base long (rifle) caseless flechette.
/obj/item/ammo_casing/tiziran/long
	name = "A Talunan Imperium flechette."
	desc = "A Talunan Imperium plastic caseless long round."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "40sol"

	caliber = CALIBER_TIZ_LONG
	projectile_type = /obj/projectile/bullet/tiziran/long


/obj/projectile/bullet/tiziran/long
	name = "Talunan Long Flechette"

	damage = 5
	armour_penetration = 10
	stamina = 5
	weak_against_armour = TRUE

	wound_bonus = 5
	exposed_wound_bonus = 10


// Plastic flechette. More of a less-lethal sort of round.
/obj/item/ammo_casing/tiziran/long/plastic
	name = "Talunan Long plastic flechette casing"
	desc = "A Talunan Imperium plastic caseless long round."
	icon_state = "40sol"
	projectile_type = /obj/projectile/bullet/tiziran/long/plastic

/obj/projectile/bullet/tiziran/long/plastic
	name = ".40 Sol Long bullet"

	damage = 6
	armour_penetration = 10
	stamina = 10
	weak_against_armour = TRUE

	wound_bonus = 5
	exposed_wound_bonus = 10


// Steel flechette. Standard round for rifle caliber,go by these as a benchmark.
/obj/item/ammo_casing/tiziran/long/steel
	name = "Talunan Long steel flechette casing"
	desc = "A Talunan Imperium steel caseless long round."
	icon_state = "40sol"
	projectile_type = /obj/projectile/bullet/tiziran/long/steel

/obj/projectile/bullet/tiziran/long/steel
	name = ".40 Sol Long bullet"

	damage = 6
	armour_penetration = 30
	stamina = 0
	weak_against_armour = FALSE

	projectile_piercing = PASSGLASS|PASSGRILLE
	demolition_mod = 0.6

	wound_bonus = 5
	exposed_wound_bonus = 10


// Plasteel flechette. Traitor/BMU item only.
/obj/item/ammo_casing/tiziran/long/plasteel
	name = "Talunan Long plasteel flechette casing"
	desc = "A Talunan Imperium plasteel caseless long round."
	icon_state = "40sol"
	projectile_type = /obj/projectile/bullet/tiziran/long/plasteel

/obj/projectile/bullet/tiziran/long/plasteel
	name = ".40 Sol Long bullet"

	damage = 7
	armour_penetration = 60
	stamina = 5
	weak_against_armour = FALSE

	projectile_piercing = PASSGLASS|PASSMOB|PASSGRILLE
	demolition_mod = 0.9

	wound_bonus = 15
	exposed_wound_bonus = 20

// Talunan milspec flechette. ADMINBUS ONLY!!!
/obj/item/ammo_casing/tiziran/long/milspec
	name = "Talunan Long milspec flechette casing"
	desc = "A Talunan Imperium milspec caseless long round."
	icon_state = "40sol"

	projectile_type = /obj/projectile/bullet/tiziran/long/milspec

/obj/projectile/bullet/tiziran/long/milspec
	name = ".40 Sol Long bullet"

	damage = 8
	armour_penetration = 70
	stamina = 10
	weak_against_armour = FALSE

	projectile_piercing = PASSGLASS|PASSMOB|PASSGRILLE
	demolition_mod = 2

	wound_bonus = 15
	exposed_wound_bonus = 20



// Base for all ammo boxes of tiziran_long
/obj/item/ammo_box/tiziran_long
	name = "ammo box (.40 Sol Long lethal)"
	desc = "A box of .40 Sol Long rifle rounds, holds thirty bullets."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "40box"

	multiple_sprites = AMMO_BOX_FULL_EMPTY
	w_class = WEIGHT_CLASS_NORMAL
	caliber = CALIBER_TIZ_LONG


/obj/item/ammo_box/tiziran_long/plastic
	name = "ammo box (Talunan Long plastic flechettes)"
	desc = "A box of Talunan Long pattern flechettes, holds fourty-five bullets. All white with a small manufacturer logo."
	icon_state = "40box"

	ammo_type = /obj/item/ammo_casing/tiziran/long/plastic
	max_ammo = 45

/obj/item/ammo_box/tiziran_long/steel
	name = "ammo box (Talunan Long steel flechettes)"
	desc = "A box of Talunan Long pattern flechettes, holds fourty-five bullets. All white with a gray band along the white box, a small manufacturer logo."
	icon_state = "40box"

	ammo_type = /obj/item/ammo_casing/tiziran/long/steel
	max_ammo = 45

/obj/item/ammo_box/tiziran_long/plasteel
	name = "ammo box (Talunan Long plasteel flechettes)"
	desc = "A box of Talunan Long pattern flechettes, holds fourty-five bullets. This one is unmarked by any manufacturer, but takes on a ominous red box."
	icon_state = "40box"

	ammo_type = /obj/item/ammo_casing/tiziran/long/plasteel
	max_ammo = 60


/obj/item/ammo_box/tiziran_long/milspec
	name = "ammo box (Talunan Long milspec flechettes)"
	desc = "A box of Talunan Long pattern flechettes, holds fourty-five bullets. This one comes in black, a Talunan Imperium flag takes the centerpiece."
	icon_state = "40box"

	ammo_type = /obj/item/ammo_casing/tiziran/long/milspec
	max_ammo = 60
