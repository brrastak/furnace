/*
    Module: recess()

    Creates a rectangular recess and a through hole for a flat cable.
    Intended to be used as a subtractive shape in difference().

    Parameters:

    recess_x       - X coordinate of recess
    recess_y       - Y coordinate of recess
    recess_length  - Recess size along X
    recess_width   - Recess size along Y
    recess_depth   - Recess depth (Z)

    hole_x         - X coordinate of cable hole (relative to same origin)
    hole_width     - Cable hole width (X direction)
    hole_length    - Cable hole length (Y direction)
*/

module recess(
    recess_x,
    recess_y,
    recess_length,
    recess_width,
    recess_depth,
    hole_x,
    hole_width,
    hole_length
)
{
    difference()
    {
        // Recess
        translate([recess_x, recess_y, -recess_depth])
            cube([recess_length, recess_width, recess_depth], center = true);

        // Flat cable through-hole
        translate([hole_x, recess_y, -1])
            cube([hole_width, hole_length, recess_depth + 2]);
    }
}


/*
    Cutting tool for a recess with flat cable slot.
    Designed so the top plane is Z=0 and the shape goes downward.
    Intended for systems where adding a "negative" or downward tool subtracts material.
*/

// module recess(
//     recess_x,
//     recess_y,
//     recess_length,
//     recess_width,
//     recess_depth,
//     hole_x,
//     hole_width,
//     hole_length
// )
// {
//     translate([0,0,0])
//     scale([1,1,-1])  // invert so geometry goes downward
//     union()
//     {
//         // recess
//         translate([recess_x, recess_y, 0])
//             cube([recess_length, recess_width, recess_depth]);

//         // cable slot
//         translate([hole_x, recess_y, -1])
//             cube([hole_width, hole_length, recess_depth + 2]);
//     }
// }
