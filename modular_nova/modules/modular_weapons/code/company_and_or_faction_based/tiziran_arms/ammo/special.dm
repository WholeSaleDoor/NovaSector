/obj/projectile/bullet/tiziran/special_plasma
	name = "Plasma Flechette"
	icon_state = "flechette_plasma"
	damage = 5
	stamina = 5
	wound_bonus = 5
	exposed_wound_bonus = 10
	weak_against_armour = FALSE

	///Credit to the original author of the pulse rifle code :3
	//Which damage type do we deal as a secondary effect?
	var/secondary_damage_type = TOX
	//How much secondary damage do we deal?
	var/secondary_damage = 3
	//How much penetration does it have?
	var/secondary_armour_penetration = 0
	//We use bullet because we have bullet armor and if it don't penetrate that, then uh... you don't get injected! You still feel the base projectile, though.
	var/secondary_armor_flag = BULLET
	//This is for the projectile to be aware if it's a supercombine projectile or not. This will modify on_hit properties, which includes a temperature heat burst
	var/combine_projectile = 0
	// The localized temperature heat burst in question. An explosion/phosphor proc would be a bit too overpowered, this is the solution I came up with. Subject to change.
	var/temperature = 1000

/obj/projectile/bullet/tiziran/special_plasma/on_hit(atom/target, blocked = 0, pierce_hit)
	. = ..()

	if(isliving(target))
		var/mob/living/victim = target
		var/hit_limb_zone = victim.check_hit_limb_zone_name(def_zone)
		var/armour_block = victim.run_armor_check(hit_limb_zone, secondary_armor_flag, armour_penetration = secondary_armour_penetration)

		// The toxin of the plasma only applies if it penetrates.
		if(armour_block == 0)
			victim.apply_damage(secondary_damage, secondary_damage_type, hit_limb_zone, blocked = armour_block, sharpness = SHARP_POINTY)

		// We need to update if this happened to have hit a person for the supercombine to count. This only works on living people. For now...
		// Ideally this should never happen but it is a check just in case something borks somewhere.
		if(istype(fired_from, /obj/item/gun/ballistic/rifle/plasma_flechette_rifle))
			var/obj/item/gun/ballistic/rifle/plasma_flechette_rifle/weapon = fired_from
			weapon.iterate_counter()

		// The rest of the properties sit with the modified projectile itself, this is just to make sure the temperature component is easier to manage.
		if(combine_projectile == 1)
			var/mob/living/carbon/temp = target
			// If the AP isn't higher, it'll heat you up less.
			temp.adjust_bodytemperature((temperature) * (1 - armour_block))

	// Apply damage to all other atoms
	else if(isatom(target))
		var/atom/atom_target = target
		if(atom_target.uses_integrity)
			atom_target.take_damage(secondary_damage, secondary_damage_type, secondary_armor_flag, secondary_armour_penetration)

// The hell on earth that is modifying the proc to make this happen.
/obj/item/ammo_casing/tiziran/special/plasma/ready_proj(atom/target, mob/living/user, quiet, zone_override, atom/fired_from)
	// Shouldn't be from anything else, yet.
	if(istype(fired_from, /obj/item/gun/ballistic/rifle/plasma_flechette_rifle))
		var/obj/item/gun/ballistic/rifle/plasma_flechette_rifle/weapon = fired_from
		// Run the check. If there is a pending combine, then we continue, else we return as it is.
		var/supercombine_check = weapon.get_check()
		if(supercombine_check == 1)
			weapon.clear_check()
		else
			return ..()

		// Apply the bonus to the projectile.
		if(istype(loaded_projectile, /obj/projectile/bullet/tiziran/special_plasma/big_crystal))
			var/obj/projectile/bullet/tiziran/special_plasma/big_crystal/projectile = loaded_projectile
			projectile.supercombine()

	return ..()

// The silly dart that fries people. Maybe.
/obj/item/ammo_casing/tiziran/special/plasma
	name = "A plasma crystalline dart."
	desc = "A long dart projectile that is seemingly made of plasma."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/carwo_defense_systems/ammo.dmi'
	icon_state = "980_gas"

	caliber = CALIBER_TIZ_SPECIAL_PLASMA
	projectile_type = /obj/projectile/bullet/tiziran/special_plasma/big_crystal

/obj/projectile/bullet/tiziran/special_plasma/big_crystal
	name = "Talunan Long Flechette"

	// Our primary damage
	damage = 10
	armour_penetration = 20
	// Our secondary damage
	secondary_damage = 1
	secondary_armour_penetration = 20

	stamina = 0
	weak_against_armour = FALSE

	wound_bonus = 5
	exposed_wound_bonus = 10


/obj/projectile/bullet/tiziran/special_plasma/big_crystal/proc/supercombine()
	combine_projectile = 1
	damage += 15
	armour_penetration += 20
	secondary_damage += 4
	secondary_armour_penetration += 20
	speed *= 1.1

