/// @description Insert description here
// You can write your code in this editor
if (distance_to_object(Obj_player) <= 600){
	myTextbox = instance_create_layer(x,y, "Text" , textbox);
	myTextbox.text = dialoguetext;
}else instance_deactivate_object(textbox);

// open shop
if (!shopOpen && place_meeting(x, y+10, Obj_player) && keyboard_check_pressed(ord("E"))) {
	shopOpen = true;
	global.shop = true;
}

//close shop
else if (shopOpen && keyboard_check_pressed(vk_escape)) {
	shopOpen = false;
	global.shop = false;
}

//shop is open
if (shopOpen) {
	selectedAnim = lerp(selectedAnim, selected, 0.1);
	
	//down
	if (keyboard_check_pressed(ord("S"))) {
		selected++;
		if (selected == itemCount) selected = 0;
	}
	
	//up
	if (keyboard_check_pressed(ord("W"))) {
		selected--;
		if (selected < 0) selected = itemCount-1;
	}
	
	//buy
	var arr = items[| selected];
	var item = arr[0];
	var price = arr[1];
	
	if (keyboard_check_pressed(ord("Q")) && global.hp_mass > price) {
		//check if already bought an item
		var bought = false;
		if ds_list_empty(global.inv) == true {}
		else {
			for (var i = 0; i<ds_list_size(global.inv); i++) {
				var arr_player = global.inv[| i];
				//show_debug_message("got here!")
				if (string(item) == string(arr_player)) {
					bought = true; 
					//show_debug_message("Tested: " + string(arr_player) + " with " + string(item)); 
					break;
				}
			}
		}
		
		if bought == false {
			//add to inventory
			ds_list_add(global.inv, item);
		
			//take the price
			global.hp_mass -= price;	
		}	
		else {//add to inventory
			ds_list_add(global.inv, item);
		
			//take the price
			global.hp_mass -= price;}
	}
}

