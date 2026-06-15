import janus_swi as janus
import imageio.v2 as imageio

from craftium import CraftiumEnv

# import all the knowledge base to python
janus.consult("./kb/main.pl")

action = "explore"
goal = "taiga"

task = janus.query_once(f"get_task({action}, '{goal}', Preconditions, Effects)")

task_dict = {
    "task.action": action,
    "task.goal": goal,
    "task.preconditions": task["Preconditions"],
    "task.effects": task["Effects"],
}

env = CraftiumEnv(
    env_dir="./mtg-prolog",
    render_mode="human",
    obs_width=512,
    obs_height=512,
    minetest_dir="/home/wolfxyz/proyectos/craftium",
    run_dir_prefix="logs",
    minetest_conf=task_dict,
    seed=122329,
)

frames = []
observation, info = env.reset()
frames.append(observation)

for t in range(50):
    # sample random action except drop
    action = env.action_space.sample()
    if isinstance(action, dict) and "drop" in action:
        action["drop"] = 0

    observation, reward, terminated, truncated, _info = env.step(action)
    frames.append(observation)

    if terminated or truncated:
        observation, info = env.reset()
        frames.append(observation)

imageio.mimsave(
    f"./pictures/task({task_dict['task.action']}, {task_dict['task.goal']}).gif",
    frames,
    fps=10,
    loop=0,
)
env.close(clear=False)
