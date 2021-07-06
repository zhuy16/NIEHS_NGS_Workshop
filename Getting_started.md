Account information sent to your email: <br>
for example <br>
Username: student1 <br>
Password: N1ehs_ngs_workshop

# 1. Login to biowulf <br>
ssh student1@biowulf.nih.gov <br>
enter password

# 2. Create pseudolink to storage folders <br> 
**only do this once at the first time login**  <br>
```
cd /scratch 
mkdir userID
cd
ln -s /scratch/userID scratch
ln -s /data data
```

# 3. Require a computational node  <br>

**use tmux to get detachable terminals**
```
module load tmux; tmux new
```
Now you should see a new terminal covering up your original one. At the bottom, you will see a green bar indicate this is a tmux terminal. 

require a computational node and copy the workshop folder
```
sinteractive 
cp -r /spin1/users/classes/NIEHS_NGS/workshop scratch/
```
You can detach the tmux terminal by shortcut “control + b” then ‘d’. 

To list the tmux terminals running in the background, you type 
```
tmux list-sessions
```
to get back to the tmux terminal 
```
tmux a -t 0
```

# 4. Require a 2nd computational node with a tunnel 
```
sinteractive --mem=50g --gres=lscratch:5 --tunnel
```

In the tmux terminal, you request a computation node, ( and use ‘--tunel’ option to connect the computational node to your local machine’
```
sinteractive --mem=50g --gres=lscratch:5 --tunnel
```

initiate a new terminal by pressing keys ‘command + t’

Copy this to the new terminal: ‘ssh  -L 42446:localhost:42446 student1@biowulf.nih.gov’



# 5. Initiate the jupyter lab interface
```
cd 
module load jupyter
jupyter lab --ip localhost --port $PORT1 --no-browser
```
Copy the url such as this below to your web browser, then start to interact with biowulf through jupyter lab. 

(an illustrative example only) http://127.0.0.1:37658/lab?token=0ae5d39fafc5f8e271f7607a333046121f7fd165f1f2e748

now you are in the jupyter lab interface. You can use jupyter lab to do command line operations. Run bash, R or python notebooks. 

some demonstration
