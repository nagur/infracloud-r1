# Infracloud-r1
## Instructions to run the csvserver Application on docker

<br />

> Run the **_getcsv.sh_** script which will generate an _`inputFile`_ required by the Application. And saved on the current directory

```Bash
./getcsv.sh
```

<br />

> Run the below command to mount the inputFile in the Application. inputFile is saved on the current directory with previous command
```Bash
docker run -d -v ./inputFile:/csvserver/inputdata infracloudio/csvserver:latest
```

<br />

> Application is listening on port 9300.
>  Run the commands to check the **Container port**.

```Bash
docker exec -it <container-ID> /bin/bash

netstat -tupln
```

<br />

> To map the Host port (9393) with the Container port (9300) along with an ENV variable, Run the below commands.

```Bash
docker run -d -p 9393:9300 -e CSVSERVER_BORDER='Orange' -v /home/ec2-user/T/solution/inputFile:/csvserver/inputdata infracloudio/csvserver:latest
```

### The Application will now be accessible at http://Host-IP:9393 (Part 1)

