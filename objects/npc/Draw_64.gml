/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

if (!shopOpen) exit;

//drawback
draw_set_color(c_black);
draw_set_alpha(0.8);
draw_rectangle(0, 0, guiWidth, guiHeight, 0);
draw_set_alpha(0.5);
draw_rectangle(menuMargin, 0, menuMargin+menuWidth, guiHeight, 0);
draw_set_alpha(1);
draw_set_color(c_white);

//draw items
for (var i = 0; i<itemCount; i++){
	//Get Item
	var arr = items[| i];
	var item = arr[0];
	//Draw position
	var _x = menuMargin + menuWidth/2;
	var _y = (guiHeight/2) + (i-selectedAnim)*40;
	//Draw scale
	var s = 2;
	if (i==selected) s = 2.4;
	//Selected item name
	if (i==selected) item = "> " + item + " <";
	
	//Draw
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_transformed(_x, _y, item, s, s, 0);
	draw_set_valign(fa_left);
	draw_set_halign(fa_left);
}

//Get selected item's data
var arr = items[| selected];
var item = arr[0];
var price = arr[1];
var desc = arr[2];
//Draw position
var _x = (menuMargin + menuWidth) + previewWidth/2; 
var _y = (guiHeight/2);
//Draw sprite
var spr= asset_get_index("sItem_" + item);
if (sprite_exists(spr)) {
	//Draw scale 
	var s = 4;
	//Draw 
	draw_sprite_ext(spr, 0, _x-100, _y - 250, s, s, 0, -1, 1);
}

//Draw description
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_transformed(_x + 40, _y + 120, desc, 3, 3, 0);
draw_set_valign(fa_left);
draw_set_halign(fa_left);

//draw player's money(scrap\hp)
//draw_text_transformed(8, 8, "Scrap: " + string(price), 3, 3, 0);

//draw price
draw_set_valign(fa_bottom);
draw_text_transformed(menuMargin + menuWidth + 420, guiHeight - 400, "Price: " + string(price), 3, 3, 0);
draw_set_halign(fa_right);
draw_text_transformed(guiWidth-380, guiHeight-400, "Press Q to buy!", 3, 3, 0);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
