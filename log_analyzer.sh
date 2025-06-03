#!/bin/sh
echo "í ½í³Š Top IPs:"
cut -d" " -f1 sample_log.txt | sort | uniq -c | sort -nr

echo "í ½í´ Failed login attempts:"
grep "Failed password" sample_log.txt | wc -l

echo "í ½í»¡ï¸  IPs with more than 1 failure:"
cut -d" " -f1 sample_log.txt | sort | uniq -c | awk '$1 > 1'
