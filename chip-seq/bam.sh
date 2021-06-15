sed '/chrM/d;/chrUn/d' $1.sam > $1_filtered.sam
samtools view -S -b $1_filtered.sam > $1.bam
samtools view -c $1.bam
