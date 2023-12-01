syms s;
trans = 2.4767/((s+1)*(s+5)*(s+0.0476));
[A B C D] = tf2ss(trans)