# add this to cron, run it every 3 minutes - pass it your OAUTH token
# */3 * * * * ./bro-stop.sh TOKEN TOKEN

recent = curl -X "GET" "https://api.spotify.com/v1/me/player/recently-played?limit=10" -H "Accept: application/json" -H "Content-Type: application/json" -H "Authorization: Bearer $1" 

if recent.items.track[0].album.artists.name = "Papa Roach"
    if recent.items.track[1].album.artists.name = "Papa Roach"
        shutdown -k "bro. you gotta stop."
        if recent.items.track[2].album.artists.name = "Papa Roach"
            # turn off everything
            shutdown -t 60 "you cant be trusted. drink some water"

if recent.items.track[0].album.artists.name = "Korn"
    hutdown -k "bro. you gotta stop."
    if recent.items.track[0].album.artists.name = "Korn"
        # turn off everything
        shutdown -t 60 "you cant be trusted. drink some water"

# this is super bad and not optimized but I'm drunk on a monday night so uh. deal with it.