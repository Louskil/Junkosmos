draw_self();

if (flash > 0)
{
	flash -= 0.01;
	//gpu_set_blendmode(bm_add);
	shader_set(shd_flash);
	shd_alpha = shader_get_uniform(shd_flash, "_alpha");
	shader_set_uniform_f(shd_alpha, flash);

	draw_self();

	shader_reset();
	//gpu_set_blendmode(bm_normal);
}

// inventory draw, draws items on player position debug use only 
for (var i=0; i<ds_list_size(global.inv); i++){
	draw_text(x, y+i*30, global.inv[| i]);
}