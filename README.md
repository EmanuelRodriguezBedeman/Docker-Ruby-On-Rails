<h1 align="center">Docker for Ruby On Rails</h1>

<p align="center">This files are needed to start a Rails app though Docker, with the only condition of having installed Docker on your system.</p>

<h3>FAQ:</h3>

* I don't want to install anything, is there any link to see the see the project?
  * There isn't a Free hosting service to house the app, because all background workers are premium features.
  * If you want to the use the app, send me an email to emanuel.rodriguez.bedeman@hotmail.com or message me though [linkedin](https://www.linkedin.com/in/emanuel-rodriguez-bedeman/)

* Do I need to install ruby on my pc?
  * No, you don't need to install ruby on your system, only [Docker](https://www.docker.com/)
  
* Why is this approach is recommended instead of installing ruby and all it's services?
  * Because installing Ruby on Rails usually has a lot of differents issues, specially on Windows (the OS I developed the app).

* If I already have installed Ruby On Rails 7 on my OS, can I still run the app?
  * Yes, you can. Just remember to install the same gems's versions, setup redis, sidekiq and the .env variables.
  * Keep in mind that the app wasn't made by this method, so I can't guaranteed you that it'll work.

<h2>Steps</h2>

1. Create folder on your machine.
2. [Download](https://github.com/EmanuelRodriguezBedeman/Docker-ScheduleTweets/archive/refs/heads/main.zip) this repo.
3. Open CLI (cmd for Windows), navigate to the created folder and enter: `docker-compose-build`.
4. Once is done, enter: `docker-compose run --rm --service-ports ruby_dev` to run the container with it's images.
5. You'll in Rail's shell, to create a new project enter: 
> `rails new myapp && cd myapp`\
> note: change "myapp" to the name that you want.
6. Run the server by using: `rails server -p $PORT -b 0.0.0.0`.
7. Enter http://localhost:3000/ in your browser to enter the app.

<h2>If you want to Run Sidekiq:</h2>

1. Open a **new** CLI (don't worry about the directory).
2. Type: `docker ps` to see all the running containers.
3. Search for the one saying "schedule tweets" and copy it's ID.
4. Enter: `docker exec -it container_id bash` (replace `container_id` for the copied ID) to enter debugging mode.
5. Once again, you'll be in Rail's shell.
6. To start the schedule tweet's jobs, enter: `bundle exec sidekiq`.
7. That's it! Now you'll have the app running with all it's functions and you can use / explore / modify it as you please.
