# add this to cron, run it every 3 minutes - pass it your OAUTH token
# */3 * * * * ./bro-stop.sh TOKEN

dudeyoucansee40fromhere = "Papa Roach", "Korn", "Linkin Park", "Adema"

recent = curl -X "GET" "https://api.spotify.com/v1/me/player/recently-played?limit=10" -H "Accept: application/json" -H "Content-Type: application/json" -H "Authorization: Bearer $1" 

if [[ " ${recent[0]} " =~ " ${dudeyoucansee40fromhere} " ]]; then
    if [[ " ${recent[1]} " =~ " ${dudeyoucansee40fromhere} " ]]; then
        shutdown -k "bro. you gotta stop."
     if [[ " ${recent[3]} " =~ " ${dudeyoucansee40fromhere} " ]]; then 
        shutdown -t 60 "you cant be trusted. drink some water"
fi

# this is super bad and not optimized but I'm drunk on a monday night so uh. deal with it.
