# Quickstart: Bashpress
You can use Docker Compose to easily run a Wordpress in an isolated environment built with Docker containers. This quick-start guide demonstrates how to set up and run the script.

Make the file `script.sh` executable using the command:
```
$ chmod +x script.sh
```
## Build the site


To start the container/site
```bash
$ ./script.sh start
```
Provide the site name 


## Bring up WordPress in a web Browser

At this point, WordPress should be running on port 80 of your Host, and you can complete the "famous five-minute installation" as a WordPress administrator.

> **Note:** The WordPress site is not immediately available on port 80 because the containers are still being initialized and may take a couple of minutes before the first load.

 You can use `http://localhost` as the IP address, and open `http://localhost:80` in a web browser.

![Choose language for WordPress install](images/wordpress_lang.png)

![WordPress Welcome](images/wordpress_welcome.png)

## Shutdown and cleanup

To stop the container/site
```bash
$ ./script.sh stop
```

To delete the container/site
```bash
$ ./script.sh delete
```