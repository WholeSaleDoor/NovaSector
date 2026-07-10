// Short flechette magazines for pistols and PDWs.
/obj/item/ammo_box/magazine/tiz_short_magazine
	name = "\improper Small Tiziran Short Flechette Magazine"
	desc = "A small magazine for Tiziran flechette pistols and PDWs, holds fifteen rounds."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "pistol_35_standard"

	multiple_sprites = AMMO_BOX_FULL_EMPTY

	w_class = WEIGHT_CLASS_TINY

	ammo_type = /obj/item/ammo_casing/tiziran/short/plastic
	caliber = CALIBER_TIZ_SHORT
	max_ammo = 20

/obj/item/ammo_box/magazine/tiz_short_magazine/large_capacity
	name = "\improper Tiziran Short Flechette Magazine"
	desc = "An extended magazine for Tiziran pistols and PDWs, holds thirty-six rounds."

	icon_state = "pistol_35_stended"

	w_class = WEIGHT_CLASS_SMALL

	max_ammo = 30

/obj/item/ammo_box/magazine/tiz_short_magazine/syndie_capacity
	name = "\improper Tiziran Short Flechette Magazine"
	desc = "An extended magazine for Tiziran pistols and PDWs, holds thirty-six rounds."

	icon_state = "pistol_35_stended"

	w_class = WEIGHT_CLASS_SMALL

	max_ammo = 40

/obj/item/ammo_box/magazine/tiz_short_magazine/starts_empty
	start_empty = TRUE

/obj/item/ammo_box/magazine/tiz_short_magazine/large_capacity/starts_empty
	start_empty = TRUE

/obj/item/ammo_box/magazine/tiz_short_magazine/syndie_capacity/starts_empty
	start_empty = TRUE


// Long flechette magazines for rifles.
/obj/item/ammo_box/magazine/tiz_long_magazine
	name = "\improper Tiziran Long Flechette Magazine"
	desc = "A magazine for Tiziran rifles, holds fourty five rounds."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "rifle_standard"

	multiple_sprites = AMMO_BOX_FULL_EMPTY

	w_class = WEIGHT_CLASS_TINY

	ammo_type = /obj/item/ammo_casing/tiziran/long/steel
	caliber = CALIBER_TIZ_LONG
	max_ammo = 45

/obj/item/ammo_box/magazine/tiz_long_magazine/extended
	name = "\improper Extended Tiziran Long Flechette Magazine"
	desc = "An extended magazine for Tiziran rifles, holds sixty rounds."

	icon_state = "rifle_standard"

	w_class = WEIGHT_CLASS_SMALL

	max_ammo = 60

/obj/item/ammo_box/magazine/tiz_long_magazine/starts_empty
	start_empty = TRUE

/obj/item/ammo_box/magazine/tiz_long_magazine/extended/starts_empty
	start_empty = TRUE


// Marksman flechette magazines for DMRs and snipers.
/obj/item/ammo_box/magazine/tiz_heavy_magazine
	name = "\improper Tiziran Heavy Flechette Magazine"
	desc = "A magazine for Tiziran rifles, holds fifteen rounds."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "rifle_short"

	multiple_sprites = AMMO_BOX_FULL_EMPTY
	w_class = WEIGHT_CLASS_TINY

	ammo_type = /obj/item/ammo_casing/tiziran/heavy/steel
	caliber = CALIBER_TIZ_HEAVY
	max_ammo = 15
