var camera_id = view_camera[0]
var view_width = camera_get_view_width(camera_id);
var view_height = camera_get_view_height(camera_id);
display_set_gui_size(view_width, view_height);

if not instance_exists(obj_o_esqueleto)exit;
draw_hp = obj_o_esqueleto.hp;
draw_max_hp = obj_o_esqueleto.max_hp;
draw_set_font(Font1);