/// @description Insert description here
// You can write your code in this editor
if (global.boss_defeated = true) {
	BabkaText = instance_create_layer(x,y, "Text" , textbox);
    BabkaText.text = dialoguetext;
	image_alpha = 1;
}else instance_deactivate_object(textbox);