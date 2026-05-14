from pathlib import Path
import numpy as np
import janus_swi as janus

from craftium import CraftiumEnv

# import all the knowledge base to python
janus.consult("./knowledge-base-simple/task.pro")

jask = janus.query_once("get_random_task(T), task_to_string(T, List)")

print(task.next)

# place is the registered name of the biome and the item is <modname:item>
task_dict = {
    "task": {"action": task["Action"], "place": task["Place"], "item": task["Item"]}
}

env = CraftiumEnv(
    env_dir="mtg-prolog",
    render_mode="human",
    obs_width=512,
    obs_height=512,
    minetest_dir="/home/wolfxyz/proyectos/craftium",
    run_dir_prefix="logs",
    minetest_conf=task_dict,
)

observation, info = env.reset()

for t in range(50):
    action = env.action_space.sample()

    observation, reward, terminated, truncated, _info = env.step(action)

    if terminated or truncated:
        observation, info = env.reset()

env.close(clear=False)
