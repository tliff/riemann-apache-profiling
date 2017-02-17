A simple gem, that accepts apache log files from stdin and ships the time taken and bytes sent per request to riemann

LogFormat "%t %a %D %O %R %v %U%q"