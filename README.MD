Inside the project we can find two different Luanti mods. First mod is `craftium_kb`, it is responsible to scrap all the registered tables knowledge into `prolog` files. The mod must load the `prueba` world and then should exit if scrap is done correctly.

The second mod is called `mtg-prolog` -- name subject to change, not longer tied to the Minetest-Game. This is the mod loaded in Craftium game loop. The mod reads a `prolog` fact from the Luanti's setting configuration and then create the reward function.
