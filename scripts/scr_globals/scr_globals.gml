global.game_state = e_game_states.state_main_menu;

global.current_game_day = 0;

global.found_items = ds_list_create(); //In this list will be added all the new itens found during the game

//creates list of possible items
global.item_stats = ds_list_create();

global.customers = ds_list_create();

//Customer global vars
global.current_customer_id = 1;
//Create current customer line
global.current_customer_line = ds_list_create();

global.names_list = load_csv("names_list.csv");//i - column; j - line

//player global var
global.satisfaction = 100;

//Held item
global.held_item = noone;