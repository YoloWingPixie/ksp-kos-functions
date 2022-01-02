
//     .DESCRIPTION
//    The vis-viva equation or the orbital-energy-invariance law, is a useful equation for spacecraft that can solve for the velocity of the spacecraft
//  at a specific orbit around another body, for example figuring out what the orbital speed of a spacecraft would be in a 75km around Kerbin with a
//  semimajor axis of 700000. 
//
//      .INPUTS
//  r is the distance between the center of kerbin and the spacecraft so it can be expressed determined as:
//
//          SET r TO (kerbin:radius + SHIP:obt:apoapsis).
//  
//  a is the length of the semimajor axis which in kOS can be determined from:
//      
//          SET a TO SHIP:obt:semimajoraxis.
//
//  mu is the standard graviational parameter of the celestial body you are orbiting which is (G * M) where G is the gravitational constant (6.67430(15)×10^−11 m3⋅kg–1⋅s–2)
//      kOS already has the computed mu of all bodie in KSP so it is recommended you pass those properties directly in the function:
//
//      calc_vis_viva(r,a,Kerbin:Mu)
//      calc_vis_viva(r,a,Mun:Mu)
//
//      .EXAMPLE USE
//      A potential use of this equation is figuring out the amount of deltaV that would be required to circulize a parabolic suborbital trajectory.
//  In this use, you would run the function twice, first setting r to the radius of the body + the average altitude of the target orbit and a to the semimajor axis of the target orbit.
//  and then the second time setting r to the current distance and a to the current semimajor axis.
//  The difference between these two results is the dV needed to circularize.
 

function calc_vis_viva {
    parameter r.
    parameter a.
    parameter mu.

    return sqrt(mu * ((2/r)-(1/a))).
    }