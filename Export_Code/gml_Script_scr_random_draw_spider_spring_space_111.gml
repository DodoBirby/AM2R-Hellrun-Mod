var shuff, tc;
while 1
{
    checkcounter = 0
    shuff = ds_list_find_value(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
    tc = 0
    if (oControl.bombs_wall == 1)
        tc++
    if (oControl.spider_wall == 1 && oControl.spring_wall == 1)
        tc++
    if (oControl.spacejump_wall == 1)
        tc++
    if (shuff == 7 && tc > 1)
    {
    }
    else
        checkcounter++
    if (shuff == 7 && oControl.screw_wall == 1)
    {
    }
    else
        checkcounter++
    if (checkcounter == 2)
        break
    else
    {
        ds_list_shuffle(oControl.list_locations)
        continue
    }
}
ds_list_delete(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
return shuff;
