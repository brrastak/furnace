//-----------------------------------------------------------------------
// Yet Another Parameterized Projectbox generator
//
//  This is a box for the furnace controller board
//
//  Version 3.3.7 (2025-04-17)
//
// This design is parameterized based on the size of a PCB.
//
// For many/complex cutoutGrills, you might need to adjust
//  the max number of elements in OpenSCAD:
//
//      Preferences->Advanced->Turn off rendering at 250000 elements
//                                                   ^^^^^^
//
//-----------------------------------------------------------------------

include <const.scad>
include <recess.scad>

include <YAPPgenerator_v3.scad>


//---------------------------------------------------------
// This design is parameterized based on the size of a PCB.
//---------------------------------------------------------
// Note: length/lengte refers to X axis, 
//       width/breedte refers to Y axis,
//       height/hoogte refers to Z axis

/*
      padding-back|<------pcb length --->|<padding-front
                            RIGHT
        0    X-axis ---> 
        +----------------------------------------+   ---
        |                                        |    ^
        |                                        |   padding-right 
      Y |                                        |    v
      | |    -5,y +----------------------+       |   ---              
 B    a |         | 0,y              x,y |       |     ^              F
 A    x |         |                      |       |     |              R
 C    i |         |                      |       |     | pcb width    O
 K    s |         |                      |       |     |              N
        |         | 0,0              x,0 |       |     v              T
      ^ |    -5,0 +----------------------+       |   ---
      | |                                        |    padding-left
      0 +----------------------------------------+   ---
        0    X-as --->
                          LEFT
*/


//-- which part(s) do you want to print?
printBaseShell        = true;
printLidShell         = true;
printSwitchExtenders  = true;
printDisplayClips     = true;


myPcb = "./pcb/PCB.stl";

if (true)
{
    translate([paddingBack + wallThickness, paddingLeft + wallThickness, basePlaneThickness + standoffHeight]) 
    {
        rotate([0, 0, 90]) color("Blue") import(myPcb);
    }
}


// ********************************************************************
// The Following will be used as the first element in the pbc array

//Defined here so you can define the "Main" PCB using these if wanted
pcbLength           = 100; // front to back (X axis)
pcbWidth            = 88; // side to side (Y axis)
pcbThickness        = 1.6; 
standoffHeight      = 3.0; //-- How much the PCB needs to be raised from the base to leave room for solderings and whatnot
standoffDiameter    = 6.5;
standoffPinDiameter = 3.5;
standoffHoleSlack   = 0.2;

//===================================================================
// *** PCBs ***
// Printed Circuit Boards
//-------------------------------------------------------------------
//  Default origin =  yappCoordPCB : yappCoordBoxInside[0,0,0]
//
//  Parameters:
//   Required:
//    p(0) = name
//    p(1) = length
//    p(2) = width
//    p(3) = posx
//    p(4) = posy
//    p(5) = Thickness
//    p(6) = standoff_Height = Height to bottom of PCB from the inside of the base
//             negative measures from inside of the lid to the top of the PCB
//    p(7) = standoff_Diameter
//    p(8) = standoff_PinDiameter
//   Optional:
//    p(9) = standoff_HoleSlack (default to 0.4)

//The following can be used to get PCB values elsewhere in the script - not in pcb definition. 
//If "PCB Name" is omitted then "Main" is used
//  pcbLength           --> pcbLength("PCB Name")
//  pcbWidth            --> pcbWidth("PCB Name")
//  pcbThickness        --> pcbThickness("PCB Name") 
//  standoffHeight      --> standoffHeight("PCB Name") 
//  standoffDiameter    --> standoffDiameter("PCB Name") 
//  standoffPinDiameter --> standoffPinDiameter("PCB Name") 
//  standoffHoleSlack   --> standoffHoleSlack("PCB Name") 

pcb = 
[
  // Default Main PCB - DO NOT REMOVE the "Main" line.
  ["Main",              pcbLength,pcbWidth,    0,0,    pcbThickness,  standoffHeight, standoffDiameter, standoffPinDiameter, standoffHoleSlack]
];

//-------------------------------------------------------------------                            
//-- padding between pcb and inside wall
paddingFront        = 2;
paddingBack         = 5;
paddingRight        = 2;
paddingLeft         = 30;

//-- Edit these parameters for your own box dimensions
wallThickness       = 4;
basePlaneThickness  = 4;
lidPlaneThickness   = 4;

//-- Total height of box = lidPlaneThickness 
//                       + lidWallHeight 
//--                     + baseWallHeight 
//                       + basePlaneThickness
//-- space between pcb and lidPlane :=
//--      (bottonWallHeight+lidWallHeight) - (standoffHeight+pcbThickness)
baseWallHeight      = 12;
lidWallHeight       = 7;

//-- ridge where base and lid off box can overlap
//-- Make sure this isn't less than lidWallHeight
ridgeHeight         = 8;
ridgeSlack          = 0.2; // Gap between the inside of the lid and the outside of the base
//New in v3.3.7 
ridgeGap            = 0.1; // Gap between the bottom of the base ridge and the bottom of the lid when assembled.
roundRadius         = 2;

// Box Types are 0-4 with 0 as the default
// 0 = All edges rounded with radius (roundRadius) above
// 1 = All edges sqrtuare
// 2 = All edges chamfered by (roundRadius) above 
// 3 = Square top and bottom edges (the ones that touch the build plate) and rounded vertical edges
// 4 = Square top and bottom edges (the ones that touch the build plate) and chamfered vertical edges
// 5 = Chanfered top and bottom edges (the ones that touch the build plate) and rounded vertical edges
boxType             = 4; // Default type 0

// Set the layer height of your printer
printerLayerHeight  = 0.2;


//---------------------------
//--     C O N T R O L     --
//---------------------------
// -- Render --
renderQuality             = 8;          //-> from 1 to 32, Default = 8

// --Preview --
previewQuality            = 5;          //-> from 1 to 32, Default = 5
showSideBySide            = true;       //-> Default = true
onLidGap                  = 0;  // tip don't override to animate the lid opening
colorLid                  = "YellowGreen";   
alphaLid                  = 1;
colorBase                 = "BurlyWood";
alphaBase                 = 1;
hideLidWalls              = false;      //-> Remove the walls from the lid : only if preview and showSideBySide=true 
hideBaseWalls             = false;      //-> Remove the walls from the base : only if preview and showSideBySide=true  
showOrientation           = true;       //-> Show the Front/Back/Left/Right labels : only in preview
showPCB                   = false;      //-> Show the PCB in red : only in preview 
showSwitches              = false;      //-> Show the switches (for pushbuttons) : only in preview 
showButtonsDepressed      = false;      //-> Should the buttons in the Lid On view be in the pressed position
showOriginCoordBox        = false;      //-> Shows red bars representing the origin for yappCoordBox : only in preview 
showOriginCoordBoxInside  = false;      //-> Shows blue bars representing the origin for yappCoordBoxInside : only in preview 
showOriginCoordPCB        = false;      //-> Shows blue bars representing the origin for yappCoordBoxInside : only in preview 
showMarkersPCB            = false;      //-> Shows black bars corners of the PCB : only in preview 
showMarkersCenter         = false;      //-> Shows magenta bars along the centers of all faces  
inspectX                  = 0;          //-> 0=none (>0 from Back)
inspectY                  = 0;          //-> 0=none (>0 from Right)
inspectZ                  = 0;          //-> 0=none (>0 from Bottom)
inspectXfromBack          = true;       //-> View from the inspection cut foreward
inspectYfromLeft          = true;       //-> View from the inspection cut to the right
inspectZfromBottom        = true;       //-> View from the inspection cut up
//---------------------------
//--     C O N T R O L     --
//---------------------------

//-------------------------------------------------------------------
//-------------------------------------------------------------------
// Start of Debugging config (used if not overridden in template)
// ------------------------------------------------------------------
// ------------------------------------------------------------------

//==================================================================
//  *** Shapes ***
//------------------------------------------------------------------
//  There are a view pre defines shapes and masks
//  shapes:
//      shapeIsoTriangle, shapeHexagon, shape6ptStar
//
//  masks:
//      maskHoneycomb, maskHexCircles, maskBars, maskOffsetBars
//
//------------------------------------------------------------------
// Shapes should be defined to fit into a 1x1 box (+/-0.5 in X and Y) - they will 
// be scaled as needed.
// defined as a vector of [x,y] vertices pairs.(min 3 vertices)
// for example a triangle could be [yappPolygonDef,[[-0.5,-0.5],[0,0.5],[0.5,-0.5]]];
// To see how to add your own shapes and mask see the YAPPgenerator program
//------------------------------------------------------------------


// Show sample of a Mask
//SampleMask(maskHoneycomb);

//===================================================================
// *** PCB Supports ***
// Pin and Socket standoffs 
//-------------------------------------------------------------------
//  Default origin =  yappCoordPCB : pcb[0,0,0]
//
//  Parameters:
//   Required:
//    p(0) = posx
//    p(1) = posy
//   Optional:
//    p(2) = Height to bottom of PCB from inside of base: Default = standoffHeight
//             negative measures from inside of the lid to the top of the PCB
//    p(3) = PCB Gap : Default = -1 : Default for yappCoordPCB=pcbThickness, yappCoordBox=0
//    p(4) = standoffDiameter    Default = standoffDiameter;
//    p(5) = standoffPinDiameter Default = standoffPinDiameter;
//    p(6) = standoffHoleSlack   Default = standoffHoleSlack;
//    p(7) = filletRadius (0 = auto size)
//    p(8) = Pin Length : Default = 0 -> PCB Gap + standoff_PinDiameter
//             Indicated length of pin without the half sphere tip. 
//             Example : pcbThickness() only leaves the half sphere tip above the PCB
//    n(a) = { <yappBoth> | yappLidOnly | yappBaseOnly }
//    n(b) = { <yappPin>, yappHole, yappTopPin } 
//             yappPin = Pin on Base and Hole on Lid 
//             yappHole = Hole on Both
//             yappTopPin = Hole on Base and Pin on Lid
//    n(c) = { yappAllCorners, yappFrontLeft | <yappBackLeft> | yappFrontRight | yappBackRight }
//    n(d) = { <yappCoordPCB> | yappCoordBox | yappCoordBoxInside }
//    n(e) = { yappNoFillet } : Removes the internal and external fillets and the Rounded tip on the pins
//    n(f) = [yappPCBName, "XXX"] : Specify a PCB. Defaults to [yappPCBName, "Main"]
//    n(g) = yappSelfThreading : make the hole a self threading hole 
//             This ignores the holeSlack and would only be usefull 
//             if the opposing stand if deleted see sample in Demo_Connectors
//-------------------------------------------------------------------
pcbStands = 
[
    [5, 10],
    [5, 80],
    [90, 4],
    [95, 39],
    [90, 84],
];


//===================================================================
//  *** Cutouts ***
//    There are 6 cutouts one for each surface:
//      cutoutsBase (Bottom), cutoutsLid (Top), cutoutsFront, cutoutsBack, cutoutsLeft, cutoutsRight
//-------------------------------------------------------------------
//  Default origin = yappCoordBox: box[0,0,0]
//
//                        Required                Not Used        Note
//----------------------+-----------------------+---------------+------------------------------------
//  yappRectangle       | width, length         | radius        |
//  yappCircle          | radius                | width, length |
//  yappRoundedRect     | width, length, radius |               |     
//  yappCircleWithFlats | width, radius         | length        | length=distance between flats
//  yappCircleWithKey   | width, length, radius |               | width = key width length=key depth
//                      |                       |               |  (negative indicates outside of circle)
//  yappPolygon         | width, length         | radius        | yappPolygonDef object must be
//                      |                       |               | provided
//  yappRing            | width, length, radius |               | radius = outer radius, 
//                      |                       |               | length = inner radius
//                      |                       |               | width = connection between rings
//                      |                       |               |   0 = No connectors
//                      |                       |               |   positive = 2 connectors
//                      |                       |               |   negative = 4 connectors
//  yappSphere          | width, radius         |               | Width = Sphere center distance from
//                      |                       |               |   center of depth.  negative = below
//                      |                       |               | radius = sphere radius
//----------------------+-----------------------+---------------+------------------------------------
//
//  Parameters:
//   Required:
//    p(0) = from Back
//    p(1) = from Left
//    p(2) = width
//    p(3) = length
//    p(4) = radius
//    p(5) = shape : { yappRectangle | yappCircle | yappPolygon | yappRoundedRect 
//                     | yappCircleWithFlats | yappCircleWithKey | yappSphere }
//  Optional:
//    p(6) = depth : Default = 0/Auto : 0 = Auto (plane thickness)
//    p(7) = angle : Default = 0
//    n(a) = { yappPolygonDef } : Required if shape = yappPolygon specified -
//    n(b) = { yappMaskDef } : If a yappMaskDef object is added it will be used as a mask 
//                             for the cutout.
//    n(c) = { [yappMaskDef, hOffset, vOffset, rotation] } : If a list for a mask is added 
//                              it will be used as a mask for the cutout. With the Rotation 
//                              and offsets applied. This can be used to fine tune the mask
//                              placement within the opening.
//    n(d) = { <yappCoordPCB> | yappCoordBox | yappCoordBoxInside }
//    n(e) = { <yappOrigin>, yappCenter }
//    n(f) = { <yappGlobalOrigin>, yappAltOrigin } // Only affects Top(lid), Back and Right Faces
//    n(g) = [yappPCBName, "XXX"] : Specify a PCB. Defaults to [yappPCBName, "Main"]
//    n(h) = { yappFromInside } Make the cut from the inside towards the outside
//-------------------------------------------------------------------
cutoutsBase = 
[
];

cutoutsLid  = 
[
    [disp_y, disp_x, disp_width, disp_length, 0, yappRectangle, yappCenter, yappCoordPCB]
];

cutoutsFront =  
[
    [26.5, 10, 12, 5, 1.5, yappRoundedRect, yappCenter, yappCoordPCB]
];


cutoutsBack = 
[
];

cutoutsLeft =   
[
];

cutoutsRight =  
[
    [44, 10, 10, 5, 1.5, yappRoundedRect, yappCenter, yappCoordPCB]
];



//===================================================================
//  *** Snap Joins ***
//-------------------------------------------------------------------
//  Default origin = yappCoordBox: box[0,0,0]
//
//  Parameters:
//   Required:
//    p(0) = posx | posy
//    p(1) = width
//    p(2) = { yappLeft | yappRight | yappFront | yappBack } : one or more
//   Optional:
//    n(a) = { <yappOrigin>, yappCenter }
//    n(b) = { yappSymmetric }
//    n(c) = { yappRectangle } == Make a diamond shape snap
//-------------------------------------------------------------------
snapJoins   =   
[
    [boxWidth/2, 5, yappFront, yappCenter],
    [boxWidth/2, 5, yappBack, yappCenter],
    [boxLength/2 + 15, 5, yappLeft, yappCenter],
    [boxLength/2 + 15, 5, yappRight, yappCenter],
];

//===================================================================
//  *** Box Mounts ***
//  Mounting tabs on the outside of the box
//-------------------------------------------------------------------
//  Default origin = yappCoordBox: box[0,0,0]
//
//  Parameters:
//   Required:
//    p(0) = pos : position along the wall : [pos,offset] : vector for position and offset X.
//                    Position is to center of mounting screw in leftmost position in slot
//    p(1) = screwDiameter
//    p(2) = width of opening in addition to screw diameter 
//                    (0=Circular hole screwWidth = hole twice as wide as it is tall)
//    p(3) = height
//    n(a) = { yappLeft | yappRight | yappFront | yappBack } : one or more
//   Optional:
//    p(4) = filletRadius : Default = 0/Auto(0 = auto size)
//    n(b) = { yappNoFillet }
//    n(c) = { <yappBase>, yappLid }
//    n(d) = { yappCenter } : shifts Position to be in the center of the opening instead of 
//                            the left of the opening
//    n(e) = { <yappGlobalOrigin>, yappAltOrigin } : Only affects Back and Right Faces
//-------------------------------------------------------------------
boxMounts =
[
];


//===================================================================
//  *** Ridge Extension ***
//    Extension from the lid into the case for adding split opening at various heights
//-------------------------------------------------------------------
//  Default origin = yappCoordBox: box[0,0,0]
//
//  Parameters:
//   Required:
//    p(0) = pos
//    p(1) = width
//    p(2) = height : Where to relocate the seam : yappCoordPCB = Above (positive) the PCB
//                                                yappCoordBox = Above (positive) the bottom of the shell (outside)
//   Optional:
//    n(a) = { <yappOrigin>, yappCenter } 
//    n(b) = { <yappCoordPCB> | yappCoordBox | yappCoordBoxInside }
//    n(c) = { yappAltOrigin, <yappGlobalOrigin> } // Only affects Top(lid), Back and Right Faces
//    n(d) = [yappPCBName, "XXX"] : Specify a PCB. Defaults to [yappPCBName, "Main"]
//
// Note: Snaps should not be placed on ridge extensions as they remove the ridge to place them.
//-------------------------------------------------------------------
ridgeExtLeft =
[
];

ridgeExtRight =
[
    [44, 14, 10, yappCenter, yappCoordPCB],
];

ridgeExtFront =
[
    [26.5, 16, 10, yappCenter, yappCoordPCB],
];

ridgeExtBack =
[
];


//===================================================================
//  *** Display Mounts ***
//    add a cutout to the lid with mounting posts for a display
//-------------------------------------------------------------------
//  Default origin = yappCoordBox: box[0,0,0]
//
//  Parameters:
//   Required:
//    p(0) = posx
//    p(1) = posy
//    p[2] : displayWidth = overall Width of the display module
//    p[3] : displayHeight = overall Height of the display module
//    p[4] : pinInsetH = Horizontal inset of the mounting hole
//    p[5] : pinInsetV = Vertical inset of the mounting hole
//    p[6] : pinDiameter,
//    p[7] : postOverhang  = Extra distance towards outside of pins to move the post for the display to sit on - 0 = centered : pin Diameter will move the post to align to the outside of the pin (moves it half the distance specified for compatability : -pinDiameter will move it in.
//    p[8] : walltoPCBGap = Distance from the display PCB to the surface of the screen
//    p[9] : pcbThickness  = Thickness of the display module PCB
//    p[10] : windowWidth = opening width for the screen
//    p[11] : windowHeight = Opening height for the screen
//    p[12] : windowOffsetH = Horizontal offset from the center for the opening
//    p[13] : windowOffsetV = Vertical offset from the center for the opening
//    p[14] : bevel = Apply a 45degree bevel to the opening
// Optionl:
//    p[15] : rotation
//    p[16] : snapDiameter : default = pinDiameter*2
//    p[17] : lidThickness : default = lidPlaneThickness
//    n(a) = { <yappOrigin>, yappCenter } 
//    n(b) = { <yappCoordBox> | yappCoordPCB | yappCoordBoxInside }
//    n(c) = { <yappGlobalOrigin>, yappAltOrigin } // Only affects Top(lid), Back and Right Faces
//    n(d) = [yappPCBName, "XXX"] : Specify a PCB. Defaults to [yappPCBName, "Main"]
//    n(e) = {yappSelfThreading} : Replace the pins with self threading holes
//-------------------------------------------------------------------
displayMounts =
[
];

//========= HOOK functions ============================
  
// Hook functions allow you to add 3d objects to the case.
// Lid/Base = Shell part to attach the object to.
// Inside/Outside = Join the object from the midpoint of the shell to the inside/outside.
// Pre = Attach the object Pre before doing Cutouts/Stands/Connectors. 


//===========================================================
// origin = box(0,0,0)
module hookLidInside()
{
    color("Blue")
    recess(
        recess_x = wallThickness + paddingBack + disp_y,
        recess_y = disp_x,
        recess_length = disp_width,
        recess_width = disp_length,
        recess_depth = 2,
        hole_x = disp_length / 2,
        hole_width = 1,
        hole_length = 15
    );

} // hookLidInside()
  

//===========================================================
// origin = box(0,0,0)
module hookLidOutside()
{
} // hookLidOutside()

//===========================================================
//===========================================================
// origin = box(0,0,0)
module hookBaseInside()
{
  //if (printMessages) echo("hookBaseInside() ..");
  
} // hookBaseInside()

//===========================================================
// origin = box(0,0,0)
module hookBaseOutside()
{
  //if (printMessages) echo("hookBaseOutside() ..");
  
} // hookBaseInside()

// **********************************************************
// **********************************************************
// **********************************************************
// *************** END OF TEMPLATE SECTION ******************
// **********************************************************
// **********************************************************
// **********************************************************

//---- This is where the magic happens ----
YAPPgenerate();
