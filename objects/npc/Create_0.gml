/// @description Insert description here
shopOpen = false;
global.shop = false;
myTextbox = noone;
dialoguetext[0] = "Watch out for pirates!";
dialoguetext[1] = "Thanks for dealing with them for me. Checkout my wares by pressing E! And be near docking range too!";
dialoguetext[2] = "Checkout my wares by pressing E! And be near docking range!";

selected = 0;
selectedAnim = 0;

// items
items = ds_list_create();

ds_list_add(items, ["multi_shot", 300, "Triple your efforts!"]);
ds_list_add(items, ["outburst", 100, "Clear the playing field by pressing SPACEBAR!"]);
ds_list_add(items, ["1_up", 400, "Another chance!"]);

itemCount = ds_list_size(items);

//GUI
guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

menuWidth = guiWidth * 0.3;
menuMargin = guiWidth * 0.1;

previewWidth = (guiWidth - (menuWidth+menuMargin));