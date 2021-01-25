CAMERA_MOVE_SPEED = 2;

VIEW_WIDTH = 320;
VIEW_HEIGHT = 180;

window_set_size(VIEW_WIDTH, VIEW_HEIGHT);
alarm[0] = 1;

window_set_fullscreen(true);

var appSurfaceWidth = display_get_width();
var appSurfaceHeight = display_get_height();
var widthScaleFactor = appSurfaceWidth / VIEW_WIDTH;
var heightScaleFactor = appSurfaceHeight / VIEW_HEIGHT;
if (widthScaleFactor < heightScaleFactor) {
	appSurfaceHeight = VIEW_HEIGHT * widthScaleFactor;
} else {
	appSurfaceWidth = VIEW_WIDTH * heightScaleFactor;
}
surface_resize(application_surface, appSurfaceWidth, appSurfaceHeight);

display_set_gui_size(VIEW_WIDTH, VIEW_HEIGHT);

x = room_width / 2;
y = room_height / 2;
