///scr_mech01_end_step()

/**
 * Mech01: On End of Update
 *
 * Added to the mech01 object's End Step event.
 */


/**
 * Update Movement Speeds
 */

scr_entity_movement_update();


/**
 * Is Colliding with Walls
 */

scr_entity_check_wall_collisions();


/**
 * Update Object Position
 */

x += mx;
y += my;

scr_entity_keep_in_room();


/**
 * Update Camera Position
 */

// move towards this object
if (pilot_is_player)
{
    scr_camera_update(x, y, true);
}

