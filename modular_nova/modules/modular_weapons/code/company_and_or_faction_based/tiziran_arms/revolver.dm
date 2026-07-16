// Quirky heavy flechette revolver since we like those. Features a dual magazine with ported features from the bulldog shotgun code.
/obj/item/gun/ballistic/revolver/tiziran_heavy
	name = "\improper Tiziran Flechette Revolver"
	desc = "A small revolver with a long barrel, sporting a dual-feed internal cylinder that can support shooting two ammo types without reloading. Or the same ammo, if you're inclined."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/trappiste_fabriek/guns32x.dmi'
	icon_state = "eland"

	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/tiziran_heavy

	/// The type of secondary cylinder (built off bulldog code. this took way longer than it should have. send help.)
	var/secondary_magazine_type
	/// The secondary magazine
	var/obj/item/ammo_box/magazine/secondary_magazine
	// Which magazine we're on
	var/current_magazine = 0

	w_class = WEIGHT_CLASS_SMALL
	can_suppress = FALSE

	projectile_damage_multiplier = 0.8
	projectile_speed_multiplier = 1.1

	lore_blurb = "Placeholder text."



/obj/item/gun/ballistic/revolver/sol/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_TIZIRAN)

/obj/item/ammo_box/magazine/internal/tiziran_heavy
	name = "Tiziran Revolver Internal Magazine"
	ammo_type = /obj/item/ammo_casing/tiziran/heavy/steel
	caliber = CALIBER_TIZ_HEAVY
	max_ammo = 5

/obj/item/gun/ballistic/revolver/tiziran_heavy/Initialize(mapload)
	. = ..()
	secondary_magazine_type = secondary_magazine_type || spawn_magazine_type
	secondary_magazine = new secondary_magazine_type(src)
	update_appearance()


/obj/item/gun/ballistic/revolver/tiziran_heavy/Destroy()
	QDEL_NULL(secondary_magazine)
	return ..()

/obj/item/gun/ballistic/revolver/tiziran_heavy/examine(mob/user)
	. = ..()
	if(secondary_magazine)
		var/secondary_ammo_count = secondary_magazine.ammo_count()
		. += "There is a secondary magazine."
		. += "It has [secondary_ammo_count] round\s remaining."
		. += "Right click to swap to the secondary magazine."
		. += "If the magazine is empty, [src] will automatically swap to the secondary magazine."
	. += "You can load a secondary magazine by right-clicking [src] with the magazine you want to load."
	. += "You can remove a secondary magazine by alt-right-clicking [src]."
	. += "Right-click to swap the magazine to the secondary position, and vice versa."

/obj/item/gun/ballistic/revolver/tiziran_heavy/update_overlays()
	. = ..()
	if(secondary_magazine)
		. += "[icon_state]_secondary_mag_[initial(secondary_magazine.icon_state)]"
		if(!secondary_magazine.ammo_count())
			. += "[icon_state]_secondary_mag_empty"

/obj/item/gun/ballistic/revolver/tiziran_heavy/attack_self_secondary(mob/user, modifiers)
	toggle_magazine(user)
	return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN

/obj/item/gun/ballistic/revolver/tiziran_heavy/ranged_interact_with_atom_secondary(atom/interacting_with, mob/living/user, list/modifiers)
	if(secondary_magazine)
		toggle_magazine(user)
	return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN

/obj/item/gun/ballistic/revolver/tiziran_heavy/proc/toggle_magazine(user)
	var/primary_magazine = magazine
	var/alternative_magazine = secondary_magazine
	magazine = alternative_magazine
	secondary_magazine = primary_magazine

	// Keep track of which magazine we're on since we have two.
	if (current_magazine == 0)
		balloon_alert(user, "Swapped to secondary mag")
		current_magazine = 1
	else
		balloon_alert(user, "Swapped to primary mag")
		current_magazine = 0

	playsound(src, load_empty_sound, load_sound_volume, load_sound_vary)
	update_appearance()
