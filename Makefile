.PHONY: run

run:
	luanti --server --worldname prueba && swipl ~/.minetest/mod_data/craftium_kb/kb/main.pl
