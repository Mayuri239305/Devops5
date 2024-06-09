						
						
      
## Run with docker						
1) Create a VM
2) SSH into VM (ssh username@ip-address)
3) Update and upgrade system (sudo apt-get update && apt-get upgrade -y)
Sudo su
4) install docker (apt-get install docker.io)
5) clone/pull your repo (git clone {repo https link}, branch docker)
6) docker build -t webapp .
7) docker run -p 80:80 webapp
8) Test your application (open browser, enter public_ip/home in url bar)

### note : port 80 should be allowed in VM network setting
