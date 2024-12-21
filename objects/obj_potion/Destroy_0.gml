with (obj_player) {
	if (Health <= 80) {
		Health+=20;
	} else {
		PotionInventory += 1;
	}
}