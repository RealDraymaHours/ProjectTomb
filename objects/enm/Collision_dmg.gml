/// @description 
if Staggered = false
{
Health = (Health - other.Damage);
alarm[11] = StaggerTime;
Staggered = true;

    with (oCamera) {
        alarm[0] = 8;
        screenShake = true;
    }
}

