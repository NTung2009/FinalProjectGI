scr_input()
if(status == 2) {
    damebat = true;
    sprite_index = s_bat_attack1;
    image_speed = 1/3 ;
    if image_index == 12 {
        state = PlayerState.bat_idle;
    };
};
if(status == 3) {
    sprite_index = s_firethrower_attack1;
    image_speed = 1/3 ;
    sound_play(sou_3);
    bullet3 = instance_create(x,y,o_bullet3);
    bullet3.direction = point_direction(x,y,mouse_x,mouse_y);
    bullet3.image_angle = bullet3.direction;
    if image_index == 9 {
        state = PlayerState.bat_idle;
        sound_exists(sou_3);
    };
};
if(status == 4) {
    sprite_index = s_gun_attack1; 
    image_speed = 1/3 ;
    couterbullet2 -= 1;
        if (couterbullet2 > 0) {
            bullet2 = instance_create(x,y,o_bullet2);
            sound_play(sou_5);
            bullet2.speed = 10 ;
            bullet2.direction = point_direction(x,y,mouse_x,mouse_y);
            bullet2.image_angle = bullet2.direction
        };
    if image_index == 5 {
        sound_exists(sou_5);
        state = PlayerState.bat_idle;
    };
};
if(status == 5) {
    dameknife = true;
    sprite_index = s_knife_attack1; 
    image_speed = 1/3 ;
    if image_index == 8 {
        state = PlayerState.bat_idle;
    };
};
if(status == 6) {
    sprite_index = s_riffle_attack1; 
    image_speed = 1/3 ;
            couterbullet -= 1;
            if (couterbullet > 0) {
            bullet = instance_create(x,y,o_bullet);
            sound_play(sou_4);
            bullet.speed = 10 ;
            bullet.direction = point_direction(x,y,mouse_x,mouse_y);
            bullet.image_angle = bullet.direction
        };
            if image_index == 9 {
                sound_exists(sou_4);
                state = PlayerState.bat_idle;
    };
};
if((input_W + input_S + input_A + input_D) == 0 ) {
    speed = 0;
    state = PlayerState.bat_idle;
};
if(input_A or input_D) {
    if(status == 2) {
        status = PlayerState.bat_walk;
    };
    if(status == 3) {
        state = PlayerState.firethrower_walk;
    };
    if(status == 4) {
        state = PlayerState.gun_walk;
    };
    if(status == 5) {
        state = PlayerState.knife_walk;
    };
    if(status == 6) {
        state = PlayerState.riffle_walk;
    };
    speed = 10*(input_D - input_A);
    direction = point_direction(x,y,mouse_x,mouse_y)-90;
};
if ( input_W or input_S ) {
    speed = 10 *(input_W - input_S);
    if(status == 2) {
        status = PlayerState.bat_walk;
    };
    if(status == 3) {
        state = PlayerState.firethrower_walk;
    };
    if(status == 4) {
        state = PlayerState.gun_walk;
    };
    if(status == 5) {
        state = PlayerState.knife_walk;
    };
    if(status == 6) {
        state = PlayerState.riffle_walk;
    };
};
if ( input_A or input_D ) {
    speed = 10 *(input_A - input_D);
    if(status == 2) {
        state = PlayerState.bat_walk;
    };
    if(status == 3) {
        state = PlayerState.firethrower_walk;
    };
    if(status == 4) {
        state = PlayerState.gun_walk;
    };
    if(status == 5) {
        state = PlayerState.knife_walk;
    };
    if(status == 6) {
        state = PlayerState.riffle_walk;
    };
};
