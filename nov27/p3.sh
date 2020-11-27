gcc proc1.c -o proc1
gcc proc2.c -o proc2

./proc1 &
./proc2 &

ps

p1=$(ps | grep proc1 | cut -d " " -f2)
p2=$(ps | grep proc2 | cut -d " " -f2)

kill $p1 $p2

ps

# arko@arko:~/os_lab/nov27$ bash p3.sh
#   PID TTY          TIME CMD
#  2054 pts/0    00:00:00 bash
#  3078 pts/0    01:50:44 bash
#  3079 pts/0    01:50:45 bash
#  3125 pts/0    01:49:55 bash
#  3126 pts/0    01:50:01 bash
#  9575 pts/0    00:00:00 bash
#  9586 pts/0    00:00:00 proc1
#  9587 pts/0    00:00:00 proc2
#  9588 pts/0    00:00:00 ps
#   PID TTY          TIME CMD
#  2054 pts/0    00:00:00 bash
#  3078 pts/0    01:50:45 bash
#  3079 pts/0    01:50:45 bash
#  3125 pts/0    01:49:55 bash
#  3126 pts/0    01:50:01 bash
#  9575 pts/0    00:00:00 bash
#  9597 pts/0    00:00:00 ps
# p3.sh: line 14:  9586 Terminated              ./proc1
# p3.sh: line 14:  9587 Terminated              ./proc2