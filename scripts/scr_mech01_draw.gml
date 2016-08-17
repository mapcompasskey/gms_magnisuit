///scr_mech01_draw()

/**
 * Mech01: On Draw
 *
 * Added to the mech01 object's Draw event.
 */

// draw the object's sprite
draw_self();

// draw action text
if (show_action_text)
{
    var pos_x = round(x);
    //var pos_y = round(y - sprite_height);
    var pos_y = round(bbox_bottom - 20);
    
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);
    draw_set_font(fnt_silkscreen_game);
    draw_text(pos_x, pos_y, action_text);
}

