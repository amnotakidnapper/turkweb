/obj/item/clothing/under/color/black
	name = "black jumpsuit"
	icon_state = "black"
	item_state = "bl_suit"
	item_color = "black"
	flags = FPRINT | TABLEPASS

/obj/item/clothing/under/color/blackf
	name = "feminine black jumpsuit"
	desc = "It's very smart and in a ladies-size!"
	icon_state = "black"
	item_state = "bl_suit"
	item_color = "blackf"

/obj/item/clothing/under/color/blue
	name = "blue jumpsuit"
	icon_state = "blue"
	item_state = "b_suit"
	item_color = "blue"
	flags = FPRINT | TABLEPASS

/obj/item/clothing/under/color/green
	name = "green jumpsuit"
	icon_state = "green"
	item_state = "g_suit"
	item_color = "green"
	flags = FPRINT | TABLEPASS

/obj/item/clothing/under/color/grey
	name = "grey jumpsuit"
	icon_state = "grey"
	item_state = "gy_suit"
	item_color = "grey"
	flags = FPRINT | TABLEPASS

/obj/item/clothing/under/color/orange
	name = "orange jumpsuit"
	desc = "It's standardised Nanotrasen prisoner-wear. Its suit sensors are stuck in the \"Fully On\" position."
	icon_state = "orange"
	item_state = "o_suit"
	item_color = "orange"
	has_sensor = 2
	sensor_mode = 3
	flags = FPRINT | TABLEPASS

/obj/item/clothing/under/color/pink
	name = "pink jumpsuit"
	icon_state = "pink"
	item_state = "p_suit"
	item_color = "pink"
	flags = FPRINT | TABLEPASS

/obj/item/clothing/under/color/red
	name = "red jumpsuit"
	icon_state = "red"
	item_state = "r_suit"
	item_color = "red"
	flags = FPRINT | TABLEPASS

/obj/item/clothing/under/color/white
	name = "white jumpsuit"
	icon_state = "white"
	item_state = "w_suit"
	item_color = "white"
	flags = FPRINT | TABLEPASS

/obj/item/clothing/under/color/yellow
	name = "yellow jumpsuit"
	icon_state = "yellow"
	item_state = "y_suit"
	item_color = "yellow"
	flags = FPRINT | TABLEPASS

/obj/item/clothing/under/psyche
	name = "psychedelic"
	desc = "Groovy!"
	icon_state = "psyche"
	item_color = "psyche"

/obj/item/clothing/under/lightblue
	name = "lightblue"
	desc = "lightblue"
	icon_state = "lightblue"
	item_color = "lightblue"

/obj/item/clothing/under/aqua
	name = "aqua"
	desc = "aqua"
	icon_state = "aqua"
	item_color = "aqua"
	flags = FPRINT | TABLEPASS

/obj/item/clothing/under/purple
	name = "purple"
	desc = "purple"
	icon_state = "purple"
	item_state = "p_suit"
	item_color = "purple"

/obj/item/clothing/under/lightpurple
	name = "lightpurple"
	desc = "lightpurple"
	icon_state = "lightpurple"
	item_color = "lightpurple"

/obj/item/clothing/under/lightgreen
	name = "lightgreen"
	desc = "lightgreen"
	icon_state = "lightgreen"
	item_color = "lightgreen"

/obj/item/clothing/under/lightblue
	name = "lightblue"
	desc = "lightblue"
	icon_state = "lightblue"
	item_color = "lightblue"

/obj/item/clothing/under/lightbrown
	name = "lightbrown"
	desc = "lightbrown"
	icon_state = "lightbrown"
	item_color = "lightbrown"
	flags = FPRINT | TABLEPASS

/obj/item/clothing/under/brown
	name = "brown"
	desc = "brown"
	icon_state = "brown"
	item_color = "brown"
	flags = FPRINT | TABLEPASS

/obj/item/clothing/under/yellowgreen
	name = "yellowgreen"
	desc = "yellowgreen"
	icon_state = "yellowgreen"
	item_color = "yellowgreen"

/obj/item/clothing/under/darkblue
	name = "darkblue"
	desc = "darkblue"
	icon_state = "darkblue"
	item_color = "darkblue"
	flags = FPRINT | TABLEPASS

/obj/item/clothing/under/lightred
	name = "lightred"
	desc = "lightred"
	icon_state = "lightred"
	item_color = "lightred"

/obj/item/clothing/under/darkred
	name = "darkred"
	desc = "darkred"
	icon_state = "darkred"
	item_color = "darkred"
	flags = FPRINT | TABLEPASS

/obj/item/clothing/under/rank/migrant
	name = "clothes"
	desc = ""
	icon_state = "migrant"
	item_state = "migrant"
	item_color = "migrant"
	var/maincolor
	var/secondcolor
	var/icon/mob
	flags = FPRINT | TABLEPASS
	update_icon(var/mob/living/carbon/human/user)
		var/color1 = "#000000"
		var/color2 = "#ffffff"
		var/icon/migover
		if(user?.gender == FEMALE)
			mob = new/icon("icon" = 'icons/mob/uniform_f.dmi', "icon_state" = "migrant_s")
			migover	= icon("icon" = 'icons/mob/uniform_f.dmi', "icon_state" = "migover")
		else if(FAT in user?.mutations)
			mob = new/icon("icon" = 'icons/mob/uniform_fat.dmi', "icon_state" = "migrant")
			migover	= icon("icon" = 'icons/mob/uniform_fat.dmi', "icon_state" = "migover")
		else
			mob = new/icon("icon" = 'icons/mob/uniform.dmi', "icon_state" = "migrant_s")
			migover	= icon("icon" = 'icons/mob/uniform.dmi', "icon_state" = "migover")
		mob.SwapColor(color2,maincolor)
		mob.SwapColor(color1,secondcolor)
		mob.Blend(migover,ICON_OVERLAY)

		var/image/stateover
		stateover = image("icon" = 'icons/obj/clothing/uniforms.dmi', "icon_state" = "migrant_o")
		stateover.color = secondcolor
		src.color = maincolor
		src.overlays += stateover

/obj/item/clothing/under/rank/migrant/bum/New()
	..()
	maincolor = "#874949"
	secondcolor = "#0a0303"
	update_icon()

/obj/item/clothing/under/rank/migrant/baroness/New()
	..()
	maincolor = "#242323"
	secondcolor = "#808080"
	update_icon()

/obj/item/clothing/under/rank/migrant/pusher/New()
	..()
	maincolor = "#121110"
	secondcolor = "#2a3d3a"
	update_icon()