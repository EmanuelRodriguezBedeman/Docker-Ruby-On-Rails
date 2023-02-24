<h1 align="center">Docker for Schedule Tweets Web-App</h1>

<p align="center">This files are needed to start locally the app, with the only condition of having installed Docker on your system.</p>

<h3>FAQ:</h3>

* Do I need to install ruby on my pc?
  * No, you don't need to install ruby on your system, only [Docker](https://www.docker.com/)
  
* Why is this approach is recommended?
  * Because installing Ruby on Rails usually has a lot of differents issues, specially on Windows (the OS I developed the app).

* If I already have installed Ruby On Rails 7 on my OS, can I still run the app?
  * Yes, you can. Just remember to install the same gems's versions, setup redis, sidekiq and the .env variables.
  * Keep in mind that the app wasn't made by this method, so I can't guaranteed you that it'll work.

* How I run all this?
  * Just follow the steps below ↓

<h2>Steps</h2>

1. Create folder called "`scheduled_tweets`".
2. [Download the app .zip](https://github.com/EmanuelRodriguezBedeman/Rails---Scheduled-Tweets/archive/refs/heads/main.zip) and extract it **inside** scheduled_tweets's folder.
3. [Download this repo .zip](https://github.com/EmanuelRodriguezBedeman/Docker-ScheduleTweets/archive/refs/heads/main.zip]) and extract in the **same directory** as schedule_tweets' folder.
4. 