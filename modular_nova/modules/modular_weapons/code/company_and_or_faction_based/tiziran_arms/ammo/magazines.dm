// base so that stuff can inherit my changes without manual changing EACH AND EVERY SINGLE ONE FOR MY SANITY!!!!!!!
/obj/item/ammo_box/magazine/tiziran
	name = "\improper Tiziran Flechette Magazine"
	desc = "The base for all tiziran arms, :P. You SHOULD NOT have this"

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/tiziran_arms/ammo.dmi'

	multiple_sprites = AMMO_BOX_FULL_EMPTY
	// Smallest weight class minimum.
	w_class = WEIGHT_CLASS_SMALL



// Short flechette magazines for pistols
/obj/item/ammo_box/magazine/tiziran/short
	name = "\improper Small Tiziran Short Flechette Magazine"
	desc = "A small magazine for Tiziran flechette pistols and PDWs, holds twenty rounds."
	icon_state = "tiz_short_small"

	ammo_type = /obj/item/ammo_casing/tiziran/short/steel
	caliber = CALIBER_TIZ_SHORT
	max_ammo = 20

/obj/item/ammo_box/magazine/tiziran/short/extended
	name = "\improper Tiziran Short Flechette Magazine"
	desc = "An extended magazine for Tiziran pistols and PDWs, holds thirty-two rounds."
	icon_state = "tiz_short_standard"

	max_ammo = 32

/obj/item/ammo_box/magazine/tiziran/short/starts_empty
	start_empty = TRUE

/obj/item/ammo_box/magazine/tiziran/short/large_capacity/starts_empty
	start_empty = TRUE


// Short flechette magazines for SMGs. They're bigger :3
/obj/item/ammo_box/magazine/tiziran/smg
	name = "\improper Tiziran SMG Magazine"
	desc = "An extended magazine for Tiziran SMGs, holds fifty rounds."
	icon_state = "tiz_smg"

	multiple_sprites = AMMO_BOX_ONE_SPRITE

	ammo_type = /obj/item/ammo_casing/tiziran/short/steel
	caliber = CALIBER_TIZ_SHORT
	max_ammo = 50

/obj/item/ammo_box/magazine/tiziran/smg/extended
	name = "\improper Tiziran SMG Magazine"
	desc = "An extended magazine for Tiziran SMGs, holds seventy rounds."
	icon_state = "tiz_smg_ext"

	max_ammo = 70
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/ammo_box/magazine/tiziran/smg/starts_empty
	start_empty = TRUE

/obj/item/ammo_box/magazine/tiziran/smg/extended/starts_empty
	start_empty = TRUE


// Long flechette magazines for rifles.
/obj/item/ammo_box/magazine/tiziran/long
	name = "\improper Tiziran Long Flechette Magazine"
	desc = "A magazine for Tiziran rifles, holds fourty five rounds."
	icon_state = "tiz_long_standard"

	ammo_type = /obj/item/ammo_casing/tiziran/long/steel
	caliber = CALIBER_TIZ_LONG
	max_ammo = 45

/obj/item/ammo_box/magazine/tiziran/long/extended
	name = "\improper Extended Tiziran Long Flechette Magazine"
	desc = "An extended magazine for Tiziran rifles, holds sixty rounds."
	icon_state = "tiz_long_extended"

	w_class = WEIGHT_CLASS_NORMAL
	max_ammo = 60

/obj/item/ammo_box/magazine/tiziran/long/starts_empty
	start_empty = TRUE

/obj/item/ammo_box/magazine/tiziran/long/extended/starts_empty
	start_empty = TRUE


// Marksman flechette magazines for DMRs and snipers.
/obj/item/ammo_box/magazine/tiziran/heavy
	name = "\improper Tiziran Heavy Flechette Magazine"
	desc = "A magazine for Tiziran rifles, holds fifteen rounds."
	icon_state = "tiz_heavy_standard"

	ammo_type = /obj/item/ammo_casing/tiziran/heavy/steel
	caliber = CALIBER_TIZ_HEAVY
	max_ammo = 15


// Specialized plasma flechette rounds. For the LARP within you.
/obj/item/ammo_box/magazine/tiziran/plasma
	name = "\improper Tiziran Plasma Flechette Magazine"
	desc = "A magazine for Tiziran rifles, holds 7 rounds."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/tiziran_arms/ammo.dmi'
	icon_state = "tiz_heavy_standard"

	multiple_sprites = AMMO_BOX_FULL_EMPTY
	w_class = WEIGHT_CLASS_NORMAL

	ammo_type = /obj/item/ammo_casing/tiziran/special/plasma
	caliber = CALIBER_TIZ_SPECIAL_PLASMA
	max_ammo = 7
