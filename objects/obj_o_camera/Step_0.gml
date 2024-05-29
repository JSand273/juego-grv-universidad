x += random_range(-screenshake, screenshake);
y += random_range(-screenshake, screenshake);

if not instance_exists(obj_o_esqueleto) exit;

var target_x = obj_o_esqueleto.x;
var target_y = obj_o_esqueleto.y - 48;
show_debug_message(screenshake);


x = lerp(x, target_x, 0.2);
y = lerp(y, target_y, 0.2);

camera_set_view_pos(view_camera[0], x - width/2, y - height/2);