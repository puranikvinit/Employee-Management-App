<h1> Employee-Management-App </h1>

<h2> Tasks performed on the application code: </h2>

1. Packed the Rails application in a Docker Container Image
2. Configured a separate Container for the Database, and ensured that the two Containers are able to connect in the same network.
3. Setup an NGINX Container, and configured it as a reverse proxy to the application.
4. Scaled up the number of instances of the Rails Containers, and configured the reverse proxy to load-balance the incoming traffic amongst the three instances.
5. Used volumes to enable persistence for the database and the NGINX containers.
6. Configured requests rate-limit in the NGINX config file to limit the number of HTTP requests to the application in a given period of time.
7. Setup a CronJob to take timely dumps of the database.
8. Scripted a Github Actions CI/CD pipeline to build the Docker Image on code-push to the main branch and upload it to the Docker Hub Image Registry.
9. The second job in the above pipeline is to initiate a fake deployment to a private server with the help of 'FakedeployServer'. The express API gives 2 numbers and a token at ```/challenge``` as a response and later takes in the sum of both the numbers along with the token as a POST request at ```/deploy```. You need to get an OK response in the end. The web server is hosted at [fdeployserver.up.railway.app](fdeployserver.up.railway.app) [The web server is taken down currently!]
