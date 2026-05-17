.PHONY: all install_mods populate prolog create_world clean list_games

LUANTI_MODS_DIR = ~/.minetest/mods
LUANTI_WORLDS_DIR = ~/.minetest/worlds
LUANTI_MOD_DATA_DIR = ~/.minetest/mod_data

GAME ?= minetest
WORLD_NAME = prolog
WORLD_PATH = $(LUANTI_WORLDS_DIR)/$(WORLD_NAME)


all: clean install_mods create_world populate

install_mods:
	ln --force --no-dereference --symbolic $(CURDIR)/craftium_kb $(LUANTI_MODS_DIR)/craftium_kb
	ln --force --no-dereference --symbolic $(CURDIR)/mtg-prolog $(LUANTI_MODS_DIR)/mtg-prolog

create_world:
	mkdir --parents $(WORLD_PATH)
	sed 's/{{GAME}}/$(GAME)/g' world.mt.template > $(WORLD_PATH)/world.mt

populate:
	rm --recursive --force $(CURDIR)/kb/data
	luanti --server --worldname $(WORLD_NAME)
	mkdir --parents $(CURDIR)/kb/data
	cp $(LUANTI_MOD_DATA_DIR)/craftium_kb/kb/*.pl $(CURDIR)/kb/data

clean:
	rm --force $(LUANTI_MODS_DIR)/craftium_kb
	rm --force $(LUANTI_MODS_DIR)/mtg-prolog
	rm --recursive --force $(WORLD_PATH)
	rm --recursive --force $(LUANTI_MOD_DATA_DIR)/craftium_kb

prolog:
	swipl ./kb/main.pl

list_games:
	@luanti --gameid list
