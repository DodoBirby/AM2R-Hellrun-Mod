repeat argument2
    instance_create(((argument0 - 16) + random(32)), ((argument1 - 16) + random(32)), oHPickupBig)
repeat argument3
{
    instance_create(((argument0 - 16) + random(32)), ((argument1 - 16) + random(32)), oMPickup)
    instance_create(((argument0 - 16) + random(32)), ((argument1 - 16) + random(32)), oHPickupBig)
}
if (global.maxsmissiles > 0 && (!instance_exists(oMAlpha)))
{
    if ((argument3 / 5) < 1 || instance_exists(oMGamma))
    {
        repeat (1)
            instance_create(((argument0 - 16) + random(32)), ((argument1 - 16) + random(32)), oSMPickup)
    }
    else
    {
        repeat floor((argument3 / 5))
            instance_create(((argument0 - 16) + random(32)), ((argument1 - 16) + random(32)), oSMPickup)
    }
}
