from pathlib import Path
import janus_swi as janus
import re

from craftium import CraftiumEnv


def string_to_array(text_str):
    cleaned = text_str.replace("[", "").replace("]", "").strip()

    if not cleaned:
        return []

    return [elem.strip() for elem in re.split(r"(?<=\)),\s*", cleaned)]


# import all the knowledge base to python
janus.consult("./kb/main.pl")

# jask = janus.query_once("get_random_task(T), task_to_string(T, List)")
task = janus.query_once("get_random_task(Action, Goal, Preconditions, Effects)")

# place is the registered name of the biome and the item is <modname:item>
task_dict = {
    "action": task["Action"],
    "goal": task["Goal"],
    "preconditions": string_to_array(task["Preconditions"]),
    "effects": string_to_array(task["Effects"]),
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
