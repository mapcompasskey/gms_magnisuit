///scr_mech01_step()

/**
 * Mech01: On Update
 *
 * Added to the mech01 object's Step event.
 */

// get the player's input
if (pilot_is_player) {
    key_left = keyboard_check(vk_left);
    key_right = keyboard_check(vk_right);
    key_down = keyboard_check(vk_down);
    key_jump_pressed = keyboard_check_pressed(ord("X"));
    key_jump_released = keyboard_check_released(ord("X"));
    key_attack_pressed = keyboard_check_released(ord("Z"));
}
else
{
    key_left = false;
    key_right = false;
    key_down = false;
    key_jump_pressed = false;
    key_jump_released = false;
    key_attack_pressed = false;
}

// is object standing on a wall
grounded = place_meeting(x, y + 1, obj_wall);


/**
 * Check Object State
 */

//scr_mech01_is_crouching();
//scr_mech01_is_jumping();
//scr_mech01_is_attacking();
scr_mech01_is_walking();


/**
 * Check for Player Collision
 */

// reset variable
show_action_text = false;

if ( ! pilot_is_player)
{
    // if overlapping with the player object
    if (place_meeting(x, y, obj_player))
    {
        show_action_text = true;
        
        // if the UP key was released
        if (keyboard_check_released(vk_up))
        {
            pilot_is_player = true;
            obj_player.is_pilot = true;
            
            scr_room_resize_view_2(GAME_SCALE / 4);
        }
    }
}
else
{
    if (keyboard_check_released(vk_down))
    {
        obj_player.x = x;
        obj_player.y = y;
        
        pilot_is_player = false;
        obj_player.is_pilot = false;
        
        scr_room_resize_view_2(GAME_SCALE);
    }
}


/**
 * Update Object Sprite
 */

scr_entity_update_image_xscale();

// update the sprite and animation speed
if (walking)
{
    if (sprite_index != walking_sprite)
    {
        sprite_index = walking_sprite;
        image_index = 0;
        image_speed = walking_speed;
    }
}
else
{
    if (sprite_index != idle_sprite)
    {
        sprite_index = idle_sprite;
        image_index = 0;
        image_speed = idle_speed;
    }
}

