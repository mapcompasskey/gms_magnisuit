///scr_mech01_create()

/**
 * Mech01: Initialize Variables
 *
 * Added to the mech01 object's Create event.
 */

scr_entity_movement_vars();
speed_x = 3;
speed_y = 4;
max_velocity_x = speed_x * 2;
max_velocity_y = speed_y * 2;

current_health = 10;
maximum_health = 10;

walking = false;
jumping = false;
falling = false;
crouching = false;
attacking = false;
hurting = false;
dying = false;

jumps = 0;
jumpsmax = 2;

//can_attack = true;
//mech01_attack = noone;
//attack_cooldown_time = 240;
//attack_cooldown_timer = 0;

pilot_is_player = false;

// inputs
key_left = false
key_right = false;
key_down = false;
key_jump_pressed = false;
key_jump_released = false;
key_attack_pressed = false;

// object sprites and animations
idle_speed = 0.05;
idle_sprite = spr_mech01_idle;

//crouching_speed = 0;
//crouching_sprite = spr_mech01_crouching;

//jumping_speed = 0;
//jumping_sprite = spr_mech01_jumping;

//falling_speed = 0;
//falling_sprite = spr_mech01_falling;

walking_speed = 0.15;
walking_sprite = spr_mech01_walking;

//attacking_speed = 0.25;
//attacking_sprite = spr_mech01_attacking;

//hurting_speed = 0;
//hurting_sprite = spr_mech01_jumping;

sprite_index = idle_sprite;
image_index = 0;
image_speed = idle_speed;
mask_index = spr_mech01_mask;
