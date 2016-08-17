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
    key_jump_pressed = keyboard_check_pressed(ord("X")); // vk_space
    key_jump_released = keyboard_check_released(ord("X")); // vk_space
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

// is object standing in a ladder
//on_ladder = place_meeting(x, y, obj_ladder);


/**
 * Check Object State
 */

//scr_mech01_is_crouching();
//scr_mech01_is_jumping();
//scr_mech01_is_attacking();
//scr_mech01_is_walking();


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

