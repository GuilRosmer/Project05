///scr_player_auto_attack
//Player Auto Attack
var attack = mouse_check_button(mb_left); //Temp

if !(atk_timer) && (energy > 2){
    if (attack){
        instance_create(x,y-5, obj_engattack);
        energy -= 2;
        refill_energy = 0;
        atk_timer = 20;
    }
} else {
    atk_timer -= 1;
}
atk_timer = clamp(atk_timer, 0, 30);
energy = clamp(energy, 0, max_energy);

//Energy Refill Delay
if (energy < max_energy) && (atk_timer = 20){
    energy_timer = 40;
}
if (energy_timer > 0){
    energy_timer -= 1;
} else {
    refill_energy = 1;
}
energy_timer = clamp(energy_timer, 0, 40);
if (refill_energy){
    energy += 0.10;
}
energy = clamp(energy, 0, max_energy);
