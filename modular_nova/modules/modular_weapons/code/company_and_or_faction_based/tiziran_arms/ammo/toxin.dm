/obj/projectile/bullet/tiziran/toxin
	name = "Talunan Toxin Flechette"
	icon_state = "flechette_tox"
	damage = 5
	stamina = 5
	wound_bonus = 5
	exposed_wound_bonus = 10
	weak_against_armour = FALSE

	// While this ammo is generally plasteel+ grade, we don't actually want this to pass through mobs. Then it'd be WAY too good.
	projectile_piercing = PASSGLASS|PASSGRILLE

	///Credit to the original author of the pulse rifle code luv u stalkeros :3
	///Which damage type do we deal as a secondary effect?
	var/secondary_damage_type = TOX
	///How much secondary damage do we deal?
	var/secondary_damage = 3
	///How much penetration does it have?
	var/secondary_armour_penetration = 0
	///Which armor protects against it? We use bullet because we have bullet armor and if it don't penetrate that, then uh... you don't get injected! You still feel the base projectile, though.
	var/secondary_armor_flag = BULLET


/obj/projectile/bullet/tiziran/toxin/on_hit(atom/target, blocked = 0, pierce_hit)
	. = ..()

	if(isliving(target))
		var/mob/living/victim = target
		var/hit_limb_zone = victim.check_hit_limb_zone_name(def_zone)
		var/armour_block = victim.run_armor_check(hit_limb_zone, secondary_armor_flag, armour_penetration = secondary_armour_penetration)
		// Toxin ONLY applies if the round penetrates fully, how else are you going to deliver it?
		if(armour_block == 0)
			victim.apply_damage(secondary_damage, secondary_damage_type, hit_limb_zone, blocked = armour_block, sharpness = SHARP_POINTY)
	// Apply damage to all other atoms
	else if(isatom(target))
		var/atom/atom_target = target
		if(atom_target.uses_integrity)
			atom_target.take_damage(secondary_damage, secondary_damage_type, secondary_armor_flag, secondary_armour_penetration)



// Short Plasteel Toxin Flechette for pistols and PDWs. Antag item only, preferably, until further testing.
/obj/item/ammo_casing/tiziran/short/toxin
	name = "Talunan Short toxin flechette casing"
	desc = "A Talunan Imperium toxin caseless short round."
	icon_state = "35sol"

	projectile_type = /obj/projectile/bullet/tiziran/toxin/short

/obj/projectile/bullet/tiziran/toxin/short
	name = "Plasteel Toxic Flechette"

	// Our brute damage
	damage = 5
	armour_penetration = 50
	// Our toxin damage
	secondary_damage = 3
	secondary_armour_penetration = 35

	demolition_mod = 0.6
	max_pierces = 5


// Short Talunan Milspec Toxin Flechette for pistols and PDWs. Adminbus only. Further testing required
/obj/item/ammo_casing/tiziran/short/milspec_toxin
	name = "Talunan Short toxin flechette casing"
	desc = "A Talunan Imperium toxin caseless short round."
	icon_state = "35sol"

	projectile_type = /obj/projectile/bullet/tiziran/toxin/milspec_short

/obj/projectile/bullet/tiziran/toxin/milspec_short
	name = "Plasteel Toxic Flechette"

	// Our brute damage
	damage = 7
	armour_penetration = 60
	// Our toxin damage.
	secondary_damage = 3
	secondary_armour_penetration = 50

	demolition_mod = 1
	max_pierces = 6


// Long Plasteel Toxin Flechette for pistols and PDWs. Antag item only, preferably, until further testing.
/obj/item/ammo_casing/tiziran/long/toxin
	name = "Talunan Long toxin flechette casing"
	desc = "A Talunan Imperium toxin caseless long round."

	icon_state = "40sol"

	projectile_type = /obj/projectile/bullet/tiziran/toxin/long


/obj/projectile/bullet/tiziran/toxin/long
	name = "Long Plasteel Toxic Flechette"

	// Our brute damage
	damage = 7
	armour_penetration = 60

	// Our toxin damage. Should be stopped by BP armor+.
	secondary_damage = 3
	secondary_armour_penetration = 55

	demolition_mod = 0.75
	max_pierces = 6

// Long Talunan Milspec Toxin Flechette for pistols and PDWs. Adminbus only. Further testing required
/obj/item/ammo_casing/tiziran/long/milspec_toxin
	name = "Talunan Long toxin flechette casing"
	desc = "A Talunan Imperium toxin caseless long round."
	icon_state = "40sol"

	projectile_type = /obj/projectile/bullet/tiziran/toxin/milspec_long


/obj/projectile/bullet/tiziran/toxin/milspec_long
	name = "Long Milspec Toxic Flechette"

	// Our brute damage
	damage = 8
	armour_penetration = 70

	// Our toxin damage.
	secondary_damage = 3
	secondary_armour_penetration = 60

	stamina = 10
	wound_bonus = 15
	exposed_wound_bonus = 20

	demolition_mod = 1.2
	max_pierces = 7



/obj/item/ammo_box/tiziran_toxin
	name = "ammo box (talunan toxin)"
	desc = "A box of talunan rounds."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/tiziran_arms/ammo.dmi'

	multiple_sprites = AMMO_BOX_FULL_EMPTY

	w_class = WEIGHT_CLASS_NORMAL


/obj/item/ammo_box/tiziran_toxin/plasteel_short
	name = "ammo box (Unmarked Short Plasteel Flechettes)"
	desc = "A box of Talunan short flechette rounds. There's no manufacturer, and it's in an ominous red box."

	icon_state = "35box"

	caliber = CALIBER_TIZ_SHORT
	ammo_type = /obj/item/ammo_casing/tiziran/short/toxin
	max_ammo = 40

/obj/item/ammo_box/tiziran_toxin/milspec_short
	name = "ammo box (Short Milspec Flechettes)"
	desc = "A box of short Talnunan flechette rounds. These are top grade flechettes manufactured in the Imperium."

	icon_state = "35box"

	caliber = CALIBER_TIZ_SHORT
	ammo_type = /obj/item/ammo_casing/tiziran/short/milspec_toxin
	max_ammo = 40

/obj/item/ammo_box/tiziran_toxin/plasteel_long
	name = "ammo box (Unmarked Long Plasteel Flechettes)"
	desc = "A box of long Talnunan flechette rounds. There's no manufacturer, and it's in an ominous red box."

	icon_state = "35box"

	caliber = CALIBER_TIZ_LONG
	ammo_type = /obj/item/ammo_casing/tiziran/long/toxin
	max_ammo = 60

/obj/item/ammo_box/tiziran_toxin/milspec_long
	name = "ammo box (Long Milspec Flechettes)"
	desc = "A box of long Talnunan flechette rounds. These are top grade flechettes manufactured in the Imperium."

	icon_state = "35box"

	caliber = CALIBER_TIZ_LONG
	ammo_type = /obj/item/ammo_casing/tiziran/long/milspec_toxin
	max_ammo = 60
