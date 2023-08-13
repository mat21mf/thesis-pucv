  join -a1 -a2 -11 -21 --nocheck-order \
    -e- -o 0 1.2 1.3 2.2 2.3 -t',' \
    ./csv/joint01.csv ./csv/joint02.csv | sort -n
