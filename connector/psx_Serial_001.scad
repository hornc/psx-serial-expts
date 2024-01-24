// PSX serial experimenters connector


// Width of contact channels:
width = 0.62;


difference() {
    union() {
        cube([13, 20, 1]);
        translate([1.2, 0, 1]) {
            cube([17*width, 20, 0.5]);  // originally 0.7
        }
    };
    translate([1.2 + width, width, -0.1]) {
    cube([15*width, width, 1.9]);
    }
}


module ridge() {
    cube([width, 20, 2.2]);
}


for ( i = [1 : 2 : 17]){
translate([1.2 + 17*width - i * width, 0, 0]) {
  ridge();
}
}


// Top bar
translate([1.2, 16, 2.2]) {
     cube([17*width, 3, width]);   
}