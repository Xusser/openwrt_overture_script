check_process() {
  #echo "$ts: checking $1"
  [ `pgrep -f "\-l 5300"` ] && return 1 || return 0
}

ts=`date +%T`
echo "$ts: Start overture checker..."
while [ 1 ]; do 
  # timestamp
  ts=`date +%T`
  if ! [ -f /var/run/DNSRunning ]; then
    echo "$ts: Overture service not running, exit..."
    break
  fi
  
  check_process
  [ $? -eq 0 ] && echo "$ts: ss-local not running, restarting..." && (/usr/bin/ss-local -s 1.2.3.4 -p 8388 -l 5300 -b 127.0.0.1 -k Example -m chacha20-ietf-poly1305 -t 120 --no-delay >/dev/null 2>&1 )&
  sleep 5
done

