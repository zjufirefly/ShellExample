awk 'BEGIN {FS=":";RS="\n";print "BEGIN"} END {print "END"} {print NR" " NF " " $1 " "  $7}' /etc/passwd
