/// select spell
var spell_id;
var actor_spells = actor.spells;

for (var i = 0; i < array_length_1d(actor_spells); i++) {
	// if conditions met
	spell_id = actor_spells[irandom_range(0, array_length_1d(actor_spells)-1)];
}

//spell_id = actor.stats[CURRENT_MP] < 20 ? 0 : 1; // debug à faire = check si assez de mana pour caster

actor_spell = obj_controller.all_spells[spell_id];
	
current_step++;