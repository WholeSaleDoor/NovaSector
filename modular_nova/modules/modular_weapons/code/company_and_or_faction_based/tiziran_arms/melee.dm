/obj/item/knife/tiziran
	name = "Tiziran Rausor"
	desc = "The standard issue Tiziran combat dagger. It's not particularly noteworthy, it sports a thin tapered blade and is light. \
	Makes for a good tool for piercing enemy armor weakpoints or cutting up food and opening tins. Or also just stabbing people in general."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/tiziran_arms/melee.dmi'
	icon_state = "rausor-dagger"

	lefthand_file = 'modular_nova/modules/modular_weapons/icons/mob/company_and_or_faction_based/tiziran_arms/melee_lefthand.dmi'
	righthand_file = 'modular_nova/modules/modular_weapons/icons/mob/company_and_or_faction_based/tiziran_arms/melee_righthand.dmi'
	inhand_icon_state = "rausor-dagger"

	icon_angle = -90
	obj_flags = CONDUCTS_ELECTRICITY

	force = 15
	throwforce = 10
	armour_penetration = 20
	block_chance = 0

	//demolition_mod = 0.75
	w_class = WEIGHT_CLASS_SMALL
	hitsound = 'sound/items/weapons/bladeslice.ogg'
	//throw_speed = 3
	//throw_range = 6
	custom_materials = list(/datum/material/iron = SHEET_MATERIAL_AMOUNT * 6)
	//attack_verb_continuous = list("slashes", "slices", "tears", "lacerates", "rips", "dices", "cuts")
	//attack_verb_simple = list("slash", "slice", "tear", "lacerate", "rip", "dice", "cut")
	//sharpness = SHARP_EDGED
	//armor_type = /datum/armor/item_knife
	wound_bonus = 5
	exposed_wound_bonus = 15
	tool_behaviour = TOOL_KNIFE
	//var/list/alt_continuous = list("stabs", "pierces", "shanks")
	//var/list/alt_simple = list("stab", "pierce", "shank")
	//sound_vary = TRUE
	//operating_sound = SFX_KNIFE_SLICE
	//pickup_sound = SFX_KNIFE_PICKUP
	//drop_sound = SFX_KNIFE_DROP

/obj/item/claymore/tiziran
	name = "Tiziran Liorsa"
	desc = "A tiziran long-blade falx for specialists, the cutting surface on the inside with the blade topped with a hook-like taper. \
	It is a decently weighted, those trained using the hook to latch on on enemy weaponry and armor in close range combat. Its design also allows for piercing weakpoints on armor. \
	You sadly lack the proper Tiziran martial arts training to use it to its full capacity, but nothing stops you from swinging."

	icon = 'modular_nova/modules/modular_weapons/icons/obj/company_and_or_faction_based/tiziran_arms/melee.dmi'
	icon_state = "liorsa-falx"

	lefthand_file = 'modular_nova/modules/modular_weapons/icons/mob/company_and_or_faction_based/tiziran_arms/melee_lefthand.dmi'
	righthand_file = 'modular_nova/modules/modular_weapons/icons/mob/company_and_or_faction_based/tiziran_arms/melee_righthand.dmi'
	inhand_icon_state = "liorsa-falx"

	icon_angle = -45

	hitsound = 'sound/items/weapons/bladeslice.ogg'
	//obj_flags = CONDUCTS_ELECTRICITY
	slot_flags = ITEM_SLOT_BELT | ITEM_SLOT_BACK

	force = 20
	throwforce = 10
	armour_penetration = 30
	block_chance = 10
	exposed_wound_bonus = 25

	w_class = WEIGHT_CLASS_NORMAL
	//attack_verb_continuous = list("attacks", "slashes", "slices", "tears", "lacerates", "rips", "dices", "cuts")
	//attack_verb_simple = list("attack", "slash", "slice", "tear", "lacerate", "rip", "dice", "cut")
	block_sound = 'sound/items/weapons/parry.ogg'
	sharpness = SHARP_EDGED
	//max_integrity = 200
	//armor_type = /datum/armor/item_claymore
	resistance_flags = FIRE_PROOF
	//var/list/alt_continuous = list("stabs", "pierces", "impales")
	//var/list/alt_simple = list("stab", "pierce", "impale")
