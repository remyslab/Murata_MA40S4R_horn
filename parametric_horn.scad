// Horn for Murata MA40S4R

L = 43;               // Lenght in mm (see application note)
D = 40;               // Base in mm (see application note)
epaisseur = 3;        // Depth for the structure in mm
diam_sensor = 10;     // Diameter of sensor in mm

difference(){
$fn = 200;
    union(){
        cylinder (r1=D/2+epaisseur, r2=diam_sensor/2+epaisseur, h=L);
        cylinder (r=diam_sensor/2+epaisseur, h=L+10);
    }
    cylinder (r1=D/2, r2=diam_sensor/2, h=L);
    translate ([0,0,-1]) cylinder (r=D/2, h=1.1);
    cylinder (r=diam_sensor/2, h=L+20);
}
