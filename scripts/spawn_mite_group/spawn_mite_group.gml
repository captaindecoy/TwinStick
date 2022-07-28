// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_mite_group(x_start, y_start, rows, columns)
{
	spacing = sprite_get_width(spr_mite) + 2;
	for(i = 0; i < rows; i++)
	{
		for(j = 0; j < columns; j++)
		{
			mite = instance_create_layer(x_start + spacing*j, y_start + spacing*i,"Instances", obj_mite);
			if((i = 0 && j == 0) || (i == rows - 1 && j == columns - 1))
			{
				mite.rusher = true;
			}
		}
	}
}