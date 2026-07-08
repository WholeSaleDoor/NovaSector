// Heavier caliber caseless plastic flechette. More of a less-lethal sort of round.
/obj/item/ammo_casing/tiz_long_plastic
	name = "Talunan Long plastic flechette casing"
	desc = "A Talunan Imperium plastic caseless long round."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "40sol"

	caliber = CALIBER_SOL40LONG
	projectile_type = /obj/projectile/bullet/tiz_long_plastic
	ammo_stack_type = /obj/item/ammo_box/magazine/ammo_stack/c40_sol

/obj/item/ammo_casing/tiz_long_plastic/Initialize(mapload)
	. = ..()

	AddElement(/datum/element/caseless)

/obj/projectile/bullet/tiz_long_plastic
	name = ".40 Sol Long bullet"

	damage = 6
	armour_penetration = 10
	stamina = 10
	weak_against_armour = TRUE

	wound_bonus = 5
	exposed_wound_bonus = 10


/obj/item/ammo_box/tiz_long_plastic
	name = "ammo box (.40 Sol Long lethal)"
	desc = "A box of .40 Sol Long rifle rounds, holds thirty bullets."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "40box"

	multiple_sprites = AMMO_BOX_FULL_EMPTY

	w_class = WEIGHT_CLASS_NORMAL

	caliber = CALIBER_SOL40LONG
	ammo_type = /obj/item/ammo_casing/tiz_long_plastic
	max_ammo = 30



// Heavier caliber caseless steel flechette. Standard round for rifle caliber, go by these as a benchmark.
/obj/item/ammo_casing/tiz_long_steel
	name = "Talunan Long steel flechette casing"
	desc = "A Talunan Imperium steel caseless long round."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "40sol"

	caliber = CALIBER_SOL40LONG
	projectile_type = /obj/projectile/bullet/tiz_long_steel
	ammo_stack_type = /obj/item/ammo_box/magazine/ammo_stack/c40_sol

/obj/item/ammo_casing/tiz_long_steel/Initialize(mapload)
	. = ..()

	AddElement(/datum/element/caseless)

/obj/projectile/bullet/tiz_long_steel
	name = ".40 Sol Long bullet"

	damage = 6
	armour_penetration = 40
	stamina = 0
	weak_against_armour = FALSE

	projectile_piercing = PASSGLASS|PASSGRILLE
	demolition_mod = 0.6

	wound_bonus = 5
	exposed_wound_bonus = 10

/obj/item/ammo_box/tiz_long_steel
	name = "ammo box (.40 Sol Long lethal)"
	desc = "A box of .40 Sol Long rifle rounds, holds thirty bullets."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "40box"

	multiple_sprites = AMMO_BOX_FULL_EMPTY

	w_class = WEIGHT_CLASS_NORMAL

	caliber = CALIBER_SOL40LONG
	ammo_type = /obj/item/ammo_casing/tiz_long_steel
	max_ammo = 30



// Heavier caliber caseless plasteel flechette. Traitor/BMU item only.
/obj/item/ammo_casing/tiz_long_plasteel
	name = "Talunan Long plasteel flechette casing"
	desc = "A Talunan Imperium plasteel caseless long round."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "40sol"

	caliber = CALIBER_SOL40LONG
	projectile_type = /obj/projectile/bullet/tiz_long_plasteel
	ammo_stack_type = /obj/item/ammo_box/magazine/ammo_stack/c40_sol

/obj/item/ammo_casing/tiz_long_plasteel/Initialize(mapload)
	. = ..()

	AddElement(/datum/element/caseless)

/obj/projectile/bullet/tiz_long_plasteel
	name = ".40 Sol Long bullet"

	damage = 7
	armour_penetration = 60
	stamina = 5
	weak_against_armour = FALSE

	projectile_piercing = PASSGLASS|PASSMOB|PASSGRILLE
	demolition_mod = 0.9

	wound_bonus = 15
	exposed_wound_bonus = 20

/obj/item/ammo_box/tiz_long_plasteel
	name = "ammo box (.40 Sol Long lethal)"
	desc = "A box of .40 Sol Long rifle rounds, holds thirty bullets."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "40box"

	multiple_sprites = AMMO_BOX_FULL_EMPTY

	w_class = WEIGHT_CLASS_NORMAL

	caliber = CALIBER_SOL40LONG
	ammo_type = /obj/item/ammo_casing/tiz_long_plasteel
	max_ammo = 30




	// Heavier caliber caseless milspec flechette. ADMINBUS ONLY!!!
/obj/item/ammo_casing/tiz_long_milspec
	name = "Talunan Long milspec flechette casing"
	desc = "A Talunan Imperium milspec caseless long round."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "40sol"

	caliber = CALIBER_SOL40LONG
	projectile_type = /obj/projectile/bullet/tiz_long_milspec
	ammo_stack_type = /obj/item/ammo_box/magazine/ammo_stack/c40_sol

/obj/item/ammo_casing/tiz_long_milspec/Initialize(mapload)
	. = ..()

	AddElement(/datum/element/caseless)

/obj/projectile/bullet/tiz_long_milspec
	name = ".40 Sol Long bullet"

	damage = 8
	armour_penetration = 70
	stamina = 10
	weak_against_armour = FALSE

	projectile_piercing = PASSGLASS|PASSMOB|PASSGRILLE
	demolition_mod = 2

	wound_bonus = 15
	exposed_wound_bonus = 20

/obj/item/ammo_box/tiz_long_milspec
	name = "ammo box (.40 Sol Long lethal)"
	desc = "A box of .40 Sol Long rifle rounds, holds thirty bullets."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "40box"

	multiple_sprites = AMMO_BOX_FULL_EMPTY

	w_class = WEIGHT_CLASS_NORMAL

	caliber = CALIBER_SOL40LONG
	ammo_type = /obj/item/ammo_casing/tiz_long_milspec
	max_ammo = 30
