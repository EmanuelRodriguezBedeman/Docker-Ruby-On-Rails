<h1 align="center">Docker for Schedule Tweets Web-App</h1>

<p align="center">This files are needed to start locally the app, with the only condition of having installed Docker on your system.</p>

<h3><u>FAQ:</u></h3>

* I don't want to install anything, is there any link to see the see the project?
  * The app is working to be deployed somewhere in March, stay tune it!

* Do I need to install ruby on my pc?
  * No, you don't need to install ruby on your system, only [Docker](https://www.docker.com/)
  
* Why is this approach is recommended?
  * Because installing Ruby on Rails usually has a lot of differents issues, specially on Windows (the OS I developed the app).

* If I already have installed Ruby On Rails 7 on my OS, can I still run the app?
  * Yes, you can. Just remember to install the same gems's versions, setup redis, sidekiq and the .env variables.
  * Keep in mind that the app wasn't made by this method, so I can't guaranteed you that it'll work.

<h2>Steps</h2>

1. Create folder called `scheduled_tweets`.
2. [Download the app .zip](https://github.com/EmanuelRodriguezBedeman/Rails---Scheduled-Tweets/archive/refs/heads/main.zip) and extract it **inside** scheduled_tweets's folder.
3. [Download this repo .zip](https://github.com/EmanuelRodriguezBedeman/Docker-ScheduleTweets/archive/refs/heads/main.zip]) and extract it in the **same directory** as schedule_tweets's folder.
4. Open CLI in this directory and enter: `docker-compose-build`.
5. Once is done, enter: `docker-compose run --rm --service-ports ruby_dev` to run the container with it's images.
6. You'll be inside the Rails's console, to run the server use: `rails server -p $PORT -b 0.0.0.0`.
7. Open a new CLI (no need to be in the same directory).
8. Type: `docker ps` to see all the running containers.
9. Search for the one saying "schedule tweets" and copy it's ID.
10. Enter: `docker exec -it container_id bash` (replace `container_id` for the copied ID).
11. Once again, you'll be inside the Rail's console.
12. To start the schedule tweet's jobs, enter: `bundle exec sidekiq`.
13. Enter http://localhost:3000/ in your browser to enter the app.
14. That's it! Now you'll have the app running with all it's functions and you can explore /modify it as you please.