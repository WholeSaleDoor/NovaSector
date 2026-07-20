/obj/item/knife/tiziran
	name = "Tiziran 'Mak'La' Knife"
	icon = 'icons/obj/service/kitchen.dmi'
	icon_state = "knife"
	lefthand_file = 'icons/mob/inhands/equipment/kitchen_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/kitchen_righthand.dmi'
	inhand_icon_state = "knife"
	worn_icon_state = "knife"
	icon_angle = -90
	desc = "The original knife, it is said that all other knives are only copies of this one."
	obj_flags = CONDUCTS_ELECTRICITY

	force = 15
	throwforce = 10
	armour_penetration = 0
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
	name = "Tiziran 'Mak'labe' Sword"
	desc = "What are you standing around staring at this for? Get to killing!"
	icon = 'icons/obj/weapons/sword.dmi'
	icon_state = "claymore"
	inhand_icon_state = "claymore"
	icon_angle = -45
	lefthand_file = 'icons/mob/inhands/weapons/swords_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/swords_righthand.dmi'
	hitsound = 'sound/items/weapons/bladeslice.ogg'
	//obj_flags = CONDUCTS_ELECTRICITY
	slot_flags = ITEM_SLOT_BELT | ITEM_SLOT_BACK

	force = 20
	throwforce = 10
	armour_penetration = 25
	block_chance = 20

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
