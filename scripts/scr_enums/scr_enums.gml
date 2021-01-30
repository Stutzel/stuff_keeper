// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

#region States Enums

enum e_game_states{
	state_day_start,
	state_top_down,
	state_drawer,
	state_day_end,
	state_in_between_days,
	state_game_over,
	state_main_menu,
	state_pause_menu
}

#endregion

#region Item enums

enum e_item_stats{
	item_sprite,
	item_name,
	item_color,
	item_details,
	item_color_id,
	item_owner_name,
	item_owner_id,
	item_day_found
}

enum e_item_types {
	type_wallet = 0,
	type_cellphone = 1,
	type_keys = 2,
	type_lighter = 3,
	type_umbrella = 4,
	last = 5
}

#endregion

#region Custommer Enums

enum e_custommer_stats{
	custommer_id,
	custommer_name,
	custommer_sprite,
	
}

#endregion