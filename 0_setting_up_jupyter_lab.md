
# We will use jupyter lab interface on Biowulf. (NIH)
## login into biowulf with ssh, initiate a detachable terminal through tmux, request a working node with sinteractive, and start to work with jupyter lab
> ssh -tX usr.name@biowulf.nih.gov <br>
> module load tmux; tmux new <br>
> sinteractive --mem=50g --gres=lscratch:5 --tunnel 
> ### copy the code "ssh ..." to a new terminal and enter. <br>
> ### come back to the tmux terminal with compute node, type --
> module load jupyter <br>
> jupyter lab --ip localhost --port $PORT1 --no-browser 
> ### now copy the url to your web browser <br>

### Alternatively, if you are familar with nano and .bashrc. just do this to achieve the same thing. 
#### 1. Simplified procedures to start Jupyterlab on Biowulf. 
Add this line to the local ~/.bashrc file:

##### alias wulf="ssh -tX usr.name@biowulf.nih.gov 'echo ----hello loged-in!;bash -l'"
add these lines to the login ~/.bashrc file on biowulf. or if it doesn't work for you. just use 
'ssh -X yourID@biowulf.nih.gov'

##### alias tmt="module load tmux; tmux new -ct 'sinteractive --mem=50g --gres=lscratch:5 --tunnel'"

##### alias ju='module load jupyter R/4.0.5 && jupyter lab --ip localhost --port $PORT1 --no-browser'

on local terminal type:
### wulf
it will automatically login into biowulf, and then type 
### tmt
 it will load tmux, generate a new terminal and request a work node. and out put a tunnel. 
 copy and paste the tunnel onto a new local terminal to establish the tunnel. /n
 then type on the interactive node: 
### ju
 this will automatically load R module, and startup jupyter lab. 
 paste the new link to a web browser, and start working!


