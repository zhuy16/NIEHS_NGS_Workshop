# NIEHS_NGS_Workshop

This depository is setup for NIEHS training for RNA-seq.
We will use biowulf and use jupyter lab as an interface. 

Please log into your biowulf account, 
```
ln -s /data/user_id/ data
cd data
git clone https://github.com/zhuy16/NIEHS_RNA_seq_training.git 
```

# This training will be divided into 3 parts. 

Bulk-RNA-seq <br>
Chip-seq<br>
Single cell RNA-seq 

Each part will be given with a 15-30 minutes background introduction. 
then with hands on practice/demo. 

To start with jupyter lab.

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

# to install Python packages to python/3.7 kernel
$ module load python/3.7 <br>
$ pip install --user mypackage
