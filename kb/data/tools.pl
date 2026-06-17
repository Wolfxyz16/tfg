:- discontiguous tool/1.
:- multifile groups/3.
:- discontiguous full_punch_interval/2.
:- discontiguous max_drop_level/2.
:- discontiguous punch_attack_uses/2.
:- discontiguous damage_groups/3.
:- discontiguous groupcaps_meta/4.
:- discontiguous groupcaps/4.

tool('default:pick_bronze').
groups('default:pick_bronze', pickaxe, 1).
full_punch_interval('default:pick_bronze', 1).
max_drop_level('default:pick_bronze', 1).
punch_attack_uses('default:pick_bronze', 60).
damage_groups('default:pick_bronze', fleshy, 4).
groupcaps_meta('default:pick_bronze', cracky, 20, 2).
groupcaps('default:pick_bronze', cracky, 1, '4.5').
groupcaps('default:pick_bronze', cracky, 2, '1.8').
groupcaps('default:pick_bronze', cracky, 3, '0.9').
tool('default:sword_steel').
groups('default:sword_steel', sword, 1).
full_punch_interval('default:sword_steel', '0.8').
max_drop_level('default:sword_steel', 1).
punch_attack_uses('default:sword_steel', 90).
damage_groups('default:sword_steel', fleshy, 6).
groupcaps_meta('default:sword_steel', snappy, 30, 2).
groupcaps('default:sword_steel', snappy, 1, '2.5').
groupcaps('default:sword_steel', snappy, 2, '1.2').
groupcaps('default:sword_steel', snappy, 3, '0.35').
tool('default:pick_steel').
groups('default:pick_steel', pickaxe, 1).
full_punch_interval('default:pick_steel', 1).
max_drop_level('default:pick_steel', 1).
punch_attack_uses('default:pick_steel', 60).
damage_groups('default:pick_steel', fleshy, 4).
groupcaps_meta('default:pick_steel', cracky, 20, 2).
groupcaps('default:pick_steel', cracky, 1, 4).
groupcaps('default:pick_steel', cracky, 2, '1.6').
groupcaps('default:pick_steel', cracky, 3, '0.8').
tool('default:sword_mese').
groups('default:sword_mese', sword, 1).
full_punch_interval('default:sword_mese', '0.7').
max_drop_level('default:sword_mese', 1).
punch_attack_uses('default:sword_mese', 270).
damage_groups('default:sword_mese', fleshy, 7).
groupcaps_meta('default:sword_mese', snappy, 30, 3).
groupcaps('default:sword_mese', snappy, 1, 2).
groupcaps('default:sword_mese', snappy, 2, 1).
groupcaps('default:sword_mese', snappy, 3, '0.35').
tool('default:pick_mese').
groups('default:pick_mese', pickaxe, 1).
full_punch_interval('default:pick_mese', '0.9').
max_drop_level('default:pick_mese', 3).
punch_attack_uses('default:pick_mese', 180).
damage_groups('default:pick_mese', fleshy, 5).
groupcaps_meta('default:pick_mese', cracky, 20, 3).
groupcaps('default:pick_mese', cracky, 1, '2.4').
groupcaps('default:pick_mese', cracky, 2, '1.2').
groupcaps('default:pick_mese', cracky, 3, '0.6').
tool('fire:flint_and_steel').
tool('default:sword_diamond').
groups('default:sword_diamond', sword, 1).
full_punch_interval('default:sword_diamond', '0.7').
max_drop_level('default:sword_diamond', 1).
punch_attack_uses('default:sword_diamond', 360).
damage_groups('default:sword_diamond', fleshy, 8).
groupcaps_meta('default:sword_diamond', snappy, 40, 3).
groupcaps('default:sword_diamond', snappy, 1, '1.9').
groupcaps('default:sword_diamond', snappy, 2, '0.9').
groupcaps('default:sword_diamond', snappy, 3, '0.3').
tool('default:pick_diamond').
groups('default:pick_diamond', pickaxe, 1).
full_punch_interval('default:pick_diamond', '0.9').
max_drop_level('default:pick_diamond', 3).
punch_attack_uses('default:pick_diamond', 270).
damage_groups('default:pick_diamond', fleshy, 5).
groupcaps_meta('default:pick_diamond', cracky, 30, 3).
groupcaps('default:pick_diamond', cracky, 1, 2).
groupcaps('default:pick_diamond', cracky, 2, 1).
groupcaps('default:pick_diamond', cracky, 3, '0.5').
tool('farming:hoe_stone').
groups('farming:hoe_stone', hoe, 1).
tool('farming:hoe_steel').
groups('farming:hoe_steel', hoe, 1).
tool('farming:hoe_wood').
groups('farming:hoe_wood', hoe, 1).
groups('farming:hoe_wood', flammable, 2).
tool('farming:hoe_bronze').
groups('farming:hoe_bronze', hoe, 1).
groups('farming:hoe_bronze', not_in_creative_inventory, 1).
tool('default:shovel_stone').
groups('default:shovel_stone', shovel, 1).
full_punch_interval('default:shovel_stone', '1.4').
max_drop_level('default:shovel_stone', 0).
punch_attack_uses('default:shovel_stone', 20).
damage_groups('default:shovel_stone', fleshy, 2).
groupcaps_meta('default:shovel_stone', crumbly, 20, 1).
groupcaps('default:shovel_stone', crumbly, 1, '1.8').
groupcaps('default:shovel_stone', crumbly, 2, '1.2').
groupcaps('default:shovel_stone', crumbly, 3, '0.5').
tool('farming:hoe_mese').
groups('farming:hoe_mese', hoe, 1).
groups('farming:hoe_mese', not_in_creative_inventory, 1).
tool('farming:hoe_diamond').
groups('farming:hoe_diamond', hoe, 1).
groups('farming:hoe_diamond', not_in_creative_inventory, 1).
tool('fireflies:bug_net').
punch_attack_uses('fireflies:bug_net', 256).
groupcaps_meta('fireflies:bug_net', catchable, 256, 1).
groupcaps('fireflies:bug_net', catchable, 1, 0).
groupcaps('fireflies:bug_net', catchable, 2, 0).
groupcaps('fireflies:bug_net', catchable, 3, 0).
tool('default:shovel_steel').
groups('default:shovel_steel', shovel, 1).
full_punch_interval('default:shovel_steel', '1.1').
max_drop_level('default:shovel_steel', 1).
punch_attack_uses('default:shovel_steel', 90).
damage_groups('default:shovel_steel', fleshy, 3).
groupcaps_meta('default:shovel_steel', crumbly, 30, 2).
groupcaps('default:shovel_steel', crumbly, 1, '1.5').
groupcaps('default:shovel_steel', crumbly, 2, '0.9').
groupcaps('default:shovel_steel', crumbly, 3, '0.4').
tool('default:shovel_mese').
groups('default:shovel_mese', shovel, 1).
full_punch_interval('default:shovel_mese', 1).
max_drop_level('default:shovel_mese', 3).
punch_attack_uses('default:shovel_mese', 180).
damage_groups('default:shovel_mese', fleshy, 4).
groupcaps_meta('default:shovel_mese', crumbly, 20, 3).
groupcaps('default:shovel_mese', crumbly, 1, '1.2').
groupcaps('default:shovel_mese', crumbly, 2, '0.6').
groupcaps('default:shovel_mese', crumbly, 3, '0.3').
tool('default:shovel_diamond').
groups('default:shovel_diamond', shovel, 1).
full_punch_interval('default:shovel_diamond', 1).
max_drop_level('default:shovel_diamond', 1).
punch_attack_uses('default:shovel_diamond', 270).
damage_groups('default:shovel_diamond', fleshy, 4).
groupcaps_meta('default:shovel_diamond', crumbly, 30, 3).
groupcaps('default:shovel_diamond', crumbly, 1, '1.1').
groupcaps('default:shovel_diamond', crumbly, 2, '0.5').
groupcaps('default:shovel_diamond', crumbly, 3, '0.3').
tool('default:axe_wood').
groups('default:axe_wood', axe, 1).
groups('default:axe_wood', flammable, 2).
full_punch_interval('default:axe_wood', 1).
max_drop_level('default:axe_wood', 0).
punch_attack_uses('default:axe_wood', 10).
damage_groups('default:axe_wood', fleshy, 2).
groupcaps_meta('default:axe_wood', choppy, 10, 1).
tool('default:axe_stone').
groups('default:axe_stone', axe, 1).
full_punch_interval('default:axe_stone', '1.2').
max_drop_level('default:axe_stone', 0).
punch_attack_uses('default:axe_stone', 20).
damage_groups('default:axe_stone', fleshy, 3).
groupcaps_meta('default:axe_stone', choppy, 20, 1).
groupcaps('default:axe_stone', choppy, 1, 3).
groupcaps('default:axe_stone', choppy, 2, 2).
groupcaps('default:axe_stone', choppy, 3, '1.3').
tool('default:axe_bronze').
groups('default:axe_bronze', axe, 1).
full_punch_interval('default:axe_bronze', 1).
max_drop_level('default:axe_bronze', 1).
punch_attack_uses('default:axe_bronze', 60).
damage_groups('default:axe_bronze', fleshy, 4).
groupcaps_meta('default:axe_bronze', choppy, 20, 2).
groupcaps('default:axe_bronze', choppy, 1, '2.75').
groupcaps('default:axe_bronze', choppy, 2, '1.7').
groupcaps('default:axe_bronze', choppy, 3, '1.15').
tool('screwdriver:screwdriver').
groups('screwdriver:screwdriver', tool, 1).
tool('default:axe_steel').
groups('default:axe_steel', axe, 1).
full_punch_interval('default:axe_steel', 1).
max_drop_level('default:axe_steel', 1).
punch_attack_uses('default:axe_steel', 60).
damage_groups('default:axe_steel', fleshy, 4).
groupcaps_meta('default:axe_steel', choppy, 20, 2).
groupcaps('default:axe_steel', choppy, 1, '2.5').
groupcaps('default:axe_steel', choppy, 2, '1.4').
groupcaps('default:axe_steel', choppy, 3, 1).
tool('default:axe_mese').
groups('default:axe_mese', axe, 1).
full_punch_interval('default:axe_mese', '0.9').
max_drop_level('default:axe_mese', 1).
punch_attack_uses('default:axe_mese', 180).
damage_groups('default:axe_mese', fleshy, 6).
groupcaps_meta('default:axe_mese', choppy, 20, 3).
groupcaps('default:axe_mese', choppy, 1, '2.2').
groupcaps('default:axe_mese', choppy, 2, 1).
groupcaps('default:axe_mese', choppy, 3, '0.6').
tool('default:axe_diamond').
groups('default:axe_diamond', axe, 1).
full_punch_interval('default:axe_diamond', '0.9').
max_drop_level('default:axe_diamond', 1).
punch_attack_uses('default:axe_diamond', 270).
damage_groups('default:axe_diamond', fleshy, 7).
groupcaps_meta('default:axe_diamond', choppy, 30, 3).
groupcaps('default:axe_diamond', choppy, 1, '2.1').
groupcaps('default:axe_diamond', choppy, 2, '0.9').
groupcaps('default:axe_diamond', choppy, 3, '0.5').
tool('default:pick_wood').
groups('default:pick_wood', pickaxe, 1).
groups('default:pick_wood', flammable, 2).
full_punch_interval('default:pick_wood', '1.2').
max_drop_level('default:pick_wood', 0).
punch_attack_uses('default:pick_wood', 10).
damage_groups('default:pick_wood', fleshy, 2).
groupcaps_meta('default:pick_wood', cracky, 10, 1).
tool(hand).
groups(hand, not_in_creative_inventory, 1).
full_punch_interval(hand, '0.9').
max_drop_level(hand, 0).
damage_groups(hand, fleshy, 1).
groupcaps_meta(hand, crumbly, 0, 1).
groupcaps_meta(hand, oddly_breakable_by_hand, 0, 99).
groupcaps(hand, oddly_breakable_by_hand, 1, '3.5').
groupcaps(hand, oddly_breakable_by_hand, 2, 2).
groupcaps(hand, oddly_breakable_by_hand, 3, '0.7').
groupcaps_meta(hand, snappy, 0, 1).
tool('default:shovel_bronze').
groups('default:shovel_bronze', shovel, 1).
full_punch_interval('default:shovel_bronze', '1.1').
max_drop_level('default:shovel_bronze', 1).
punch_attack_uses('default:shovel_bronze', 75).
damage_groups('default:shovel_bronze', fleshy, 3).
groupcaps_meta('default:shovel_bronze', crumbly, 25, 2).
groupcaps('default:shovel_bronze', crumbly, 1, '1.65').
groupcaps('default:shovel_bronze', crumbly, 2, '1.05').
groupcaps('default:shovel_bronze', crumbly, 3, '0.45').
tool('default:shovel_wood').
groups('default:shovel_wood', shovel, 1).
groups('default:shovel_wood', flammable, 2).
full_punch_interval('default:shovel_wood', '1.2').
max_drop_level('default:shovel_wood', 0).
punch_attack_uses('default:shovel_wood', 10).
damage_groups('default:shovel_wood', fleshy, 2).
groupcaps_meta('default:shovel_wood', crumbly, 10, 1).
groupcaps('default:shovel_wood', crumbly, 1, 3).
groupcaps('default:shovel_wood', crumbly, 2, '1.6').
groupcaps('default:shovel_wood', crumbly, 3, '0.6').
tool('default:sword_stone').
groups('default:sword_stone', sword, 1).
full_punch_interval('default:sword_stone', '1.2').
max_drop_level('default:sword_stone', 0).
punch_attack_uses('default:sword_stone', 20).
damage_groups('default:sword_stone', fleshy, 4).
groupcaps_meta('default:sword_stone', snappy, 20, 1).
tool('default:pick_stone').
groups('default:pick_stone', pickaxe, 1).
full_punch_interval('default:pick_stone', '1.3').
max_drop_level('default:pick_stone', 0).
punch_attack_uses('default:pick_stone', 20).
damage_groups('default:pick_stone', fleshy, 3).
groupcaps_meta('default:pick_stone', cracky, 20, 1).
tool('default:sword_wood').
groups('default:sword_wood', flammable, 2).
groups('default:sword_wood', sword, 1).
full_punch_interval('default:sword_wood', 1).
max_drop_level('default:sword_wood', 0).
punch_attack_uses('default:sword_wood', 10).
damage_groups('default:sword_wood', fleshy, 2).
groupcaps_meta('default:sword_wood', snappy, 10, 1).
tool('default:sword_bronze').
groups('default:sword_bronze', sword, 1).
full_punch_interval('default:sword_bronze', '0.8').
max_drop_level('default:sword_bronze', 1).
punch_attack_uses('default:sword_bronze', 75).
damage_groups('default:sword_bronze', fleshy, 6).
groupcaps_meta('default:sword_bronze', snappy, 25, 2).
groupcaps('default:sword_bronze', snappy, 1, '2.75').
groupcaps('default:sword_bronze', snappy, 2, '1.3').
groupcaps('default:sword_bronze', snappy, 3, '0.375').