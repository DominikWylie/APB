/// @desc GUI/VARS/Menu set up

 gui_width = display_get_gui_width();
 gui_height = display_get_gui_height();
 gui_margin = 32;
 
 menu_x = gui_width + 200;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25; //lower is faster
menu_font = f_Menu;
menu_itemheight = font_get_size(f_Menu);
menu_committed = -1;
menu_control = true;

menu[2] = "New Game";
menu[1] = "Continue";
menu[0] = "Quit";

menu_items = array_length_1d(menu);
menu_cursor = 2;
