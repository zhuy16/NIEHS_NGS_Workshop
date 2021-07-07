#!/bin/sh
for i in *.fastq 
do
cat <<EOT >> script_align/script_align_$(echo $i | sed 's/.fastq//g').sh
#!/bin/sh
module load samtools
module load bowtie/2
export BOWTIE2_INDEXES=/fdb/igenomes/Homo_sapiens/UCSC/hg19/Sequence/Bowtie2Index/
bowtie2  -x genome --threads=4  --no-unal --local -U $i -S $(echo $i | sed 's/.fastq//g').sam
EOT

done
