# Bot Roulette
Simple bot to create roulette to twitchers use on OBS.

#How Run
- Go to [twitch devs then create an app](https://dev.twitch.tv/dashboard/apps)
- Copy .env-example as .env
- Save your twitch client_id and client_secret inside .env file
- Set the callback of your app to http://localhost:3000/users/auth/twitch/callback
- $ bundle --without production
- $ rake db:migrate
- $ rails s
- Authenticate with any twitch account, it will create a new user for you
- Navigate to /entries to create new entries
- Then go to /roulette to see the roulette

