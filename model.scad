
module heart()
{
    rotate([-90, 0, 0])
    difference()
    {
        scale(0.7)
        import("anatomical_heart.stl");

        translate([-50, 0, 0])
        cube([100, 100, 100]);
    }
}

heart();
