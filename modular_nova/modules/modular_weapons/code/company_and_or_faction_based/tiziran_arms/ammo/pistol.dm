// Lighter caliber caseless plastic flechette. More of a less-lethal sort of round.
/obj/item/ammo_casing/tiz_short_plastic
	name = "Talunan Short plastic flechette casing"
	desc = "A Talunan Imperium plastic caseless short round."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "35sol"

	caliber = CALIBER_SOL35SHORT
	ammo_stack_type = /obj/item/ammo_box/magazine/ammo_stack/c35_sol
	projectile_type = /obj/projectile/bullet/tiz_short_plastic


/obj/item/ammo_casing/tiz_short_plastic/Initialize(mapload)
	. = ..()

	AddElement(/datum/element/caseless)


/obj/projectile/bullet/tiz_short_plastic
	name = "Talunan Short Plastic Flechette"

	damage = 5
	armour_penetration = 10
	stamina = 5
	weak_against_armour = TRUE

	wound_bonus = 5
	exposed_wound_bonus = 10

/obj/item/ammo_box/tiz_short_plastic
	name = "ammo box (.35 Sol Short lethal)"
	desc = "A box of .35 Sol Short pistol rounds, holds twenty-four rounds."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "35box"

	multiple_sprites = AMMO_BOX_FULL_EMPTY

	w_class = WEIGHT_CLASS_NORMAL

	caliber = CALIBER_SOL35SHORT
	ammo_type = /obj/item/ammo_casing/tiz_short_plastic
	max_ammo = 36




// Lighter caliber caseless steel flechette. Should be the "best" cartridge that the crew gets. BENCHMARK PERFORMANCE.
/obj/item/ammo_casing/tiz_short_steel
	name = "Talunan Short steel flechette casing"
	desc = "A Talunan Imperium steel caseless short round."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "35sol"

	caliber = CALIBER_SOL35SHORT
	ammo_stack_type = /obj/item/ammo_box/magazine/ammo_stack/c35_sol
	projectile_type = /obj/projectile/bullet/tiz_short_steel


/obj/item/ammo_casing/tiz_short_steel/Initialize(mapload)
	. = ..()

	AddElement(/datum/element/caseless)


/obj/projectile/bullet/tiz_short_steel
	name = "Talunan Short Steel Flechette"

	damage = 5
	armour_penetration = 30
	stamina = 0
	weak_against_armour = FALSE

	projectile_piercing = PASSGLASS|PASSGRILLE
	demolition_mod = 0.5

	wound_bonus = 5
	exposed_wound_bonus = 10

/obj/item/ammo_box/tiz_short_steel
	name = "ammo box (.35 Sol Short lethal)"
	desc = "A box of .35 Sol Short pistol rounds, holds twenty-four rounds."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "35box"

	multiple_sprites = AMMO_BOX_FULL_EMPTY

	w_class = WEIGHT_CLASS_NORMAL

	caliber = CALIBER_SOL35SHORT
	ammo_type = /obj/item/ammo_casing/tiz_short_steel
	max_ammo = 36




// Lighter caliber caseless syndicate plasteel flechette. TRAITOR ITEM/BLACK MARKET UPLINK ONLY!!! Also illegal.
/obj/item/ammo_casing/tiz_short_plasteel
	name = "Talunan Short plasteel flechette casing"
	desc = "A Talunan Imperium plasteel caseless short round."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "35sol"

	caliber = CALIBER_SOL35SHORT
	ammo_stack_type = /obj/item/ammo_box/magazine/ammo_stack/c35_sol
	projectile_type = /obj/projectile/bullet/tiz_short_plasteel


/obj/item/ammo_casing/tiz_short_plasteel/Initialize(mapload)
	. = ..()

	AddElement(/datum/element/caseless)


/obj/projectile/bullet/tiz_short_plasteel
	name = "Talunan Short Plasteel Flechette"

	damage = 6
	armour_penetration = 50
	stamina = 5
	weak_against_armour = FALSE

	projectile_piercing = PASSGLASS|PASSMOB|PASSGRILLE
	demolition_mod = 0.75


	wound_bonus = 5
	exposed_wound_bonus = 10

/obj/item/ammo_box/tiz_short_plasteel
	name = "ammo box (.35 Sol Short lethal)"
	desc = "A box of .35 Sol Short pistol rounds, holds twenty-four rounds."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "35box"

	multiple_sprites = AMMO_BOX_FULL_EMPTY

	w_class = WEIGHT_CLASS_NORMAL

	caliber = CALIBER_SOL35SHORT
	ammo_type = /obj/item/ammo_casing/tiz_short_plasteel
	max_ammo = 36




// Lighter caliber caseless tiziran milspec flechette. ADMINBUS ONLY!!!
/obj/item/ammo_casing/tiz_short_milspec
	name = "Talunan Short milspec flechette casing"
	desc = "A Talunan Imperium milspec caseless short round."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "35sol"

	caliber = CALIBER_SOL35SHORT
	ammo_stack_type = /obj/item/ammo_box/magazine/ammo_stack/c35_sol
	projectile_type = /obj/projectile/bullet/tiz_short_milspec


/obj/item/ammo_casing/tiz_short_milspec/Initialize(mapload)
	. = ..()

	AddElement(/datum/element/caseless)


/obj/projectile/bullet/tiz_short_milspec
	name = "Talunan Short Milspec Flechette"

	damage = 7
	armour_penetration = 60
	stamina = 10
	weak_against_armour = FALSE

	projectile_piercing = PASSGLASS|PASSMOB|PASSGRILLE
	demolition_mod = 1.5

	wound_bonus = 15
	exposed_wound_bonus = 20

/obj/item/ammo_box/tiz_short_milspec
	name = "ammo box (.35 Sol Short lethal)"
	desc = "A box of .35 Sol Short pistol rounds, holds twenty-four rounds."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "35box"

	multiple_sprites = AMMO_BOX_FULL_EMPTY

	w_class = WEIGHT_CLASS_NORMAL

	caliber = CALIBER_SOL35SHORT
	ammo_type = /obj/item/ammo_casing/tiz_short_milspec
	max_ammo = 36


