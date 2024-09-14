scr_input();
speed = 1 ;
damebat = false;
dameknife = false;
if((input_W + input_S + input_A + input_D) == 0 ) {
    state = PlayerState.bat_idle;
    speed = 0;
};
if(input_A or input_D) { 
    if(status == 2) {
        sprite_index = s_bat_walk1;
    };
    if(status == 3) {
        sprite_index = s_firethrower_walk1;
    };
    if(status == 4) {
        sprite_index = s_gun_walk1; 
    };
    if(status == 5) {
        sprite_index = s_knife_walk1; 
    };
    if(status == 6) {
        sprite_index = s_riffle_walk1; 
    };
    speed = 10*(input_D - input_A);
    direction = point_direction(x,y,mouse_x,mouse_y)-90;
};
if ( input_W or input_S ) {
    if(status == 2) {
            sprite_index = s_bat_walk1;
        };
        if(status == 3) {
            sprite_index = s_firethrower_walk1;
        };
        if(status == 4) {
            sprite_index = s_gun_walk1; 
        };
        if(status == 5) {
            sprite_index = s_knife_walk1; 
        };
        if(status == 6) {
            sprite_index = s_riffle_walk1; 
        };
    speed = 10 *(input_W - input_S);
};
if ( input_A or input_D ) {
    if(status == 2) {
        sprite_index = s_bat_walk1;
    };
    if(status == 3) {
        sprite_index = s_firethrower_walk1;
    };
    if(status == 4) {
        sprite_index = s_gun_walk1; 
    };
    if(status == 5) {
        sprite_index = s_knife_walk1; 
    };
    if(status == 6) {
        sprite_index = s_riffle_walk1; 
    };
    speed = 10 *(input_A - input_D);
    };
if (input_leftpressed ) {
    if(status == 2) {
        state = PlayerState.bat_attack; 
    };
    if(status == 3) {
        state = PlayerState.firethrower_attack; 
    };
    if(status == 4) {
        state = PlayerState.gun_attack; 
    };
    if(status == 5) {
        state = PlayerState.knife_attack; 
    };
    if(status == 6) {
        state = PlayerState.riffle_attack; 
    };
};
if (input_leftreleased) {
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
