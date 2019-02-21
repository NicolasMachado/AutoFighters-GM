/// @scr_init_fight()

var num_fighters = instance_number(obj_fighter);

// add random number of fighters
for (var i = 0; i < num_fighters; i++) {
	var fighter = instance_find(obj_fighter, i);
	var spot = instance_find(obj_fighter_spot, i);
	fighter.x = spot.x;
	fighter.y = spot.y;
	fighter.original_x = spot.x;
	fighter.original_y = spot.y;
	spot.occupied = 1;
}

var num_enemies = irandom_range(1, 3);

// add random number of enemies
for (var i = 0; i < num_enemies; i++) {
	var enemy = instance_create_layer(0, 0, "Fighters", obj_enemy);
	var spot = instance_find(obj_enemy_spot, i);
	// place enemies on spots
	enemy.x = spot.x;
	enemy.y = spot.y;
	enemy.original_x = spot.x;
	enemy.original_y = spot.y;
	spot.occupied = 1;
	// random stats
	enemy.stats[MAX_HP] = irandom_range(100, 150);
	enemy.stats[CURRENT_HP] = irandom_range(20, 100);
	enemy.stats[MAX_AP] = irandom_range(100, 150);
	enemy.stats[CURRENT_AP] = irandom_range(20, 100);
	enemy.stats[MAX_MP] = random_range(50, 60);
	enemy.stats[CURRENT_MP] = irandom_range(20, 60);
	enemy.stats[AP_RATE] = random_range(0.9, 1.3);
	enemy.stats[NAME] = "Monster";
}
