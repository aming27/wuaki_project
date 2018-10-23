# wuaki_project
Sysadmin-challenge

DEPLOY APP:

Steps for deploying the app:

1. Clone the project
2. Execute bash init.sh 

init file has three steps:
The first one create a flaskdb service. The second step create a user into apps database and load the app.sql backup. The last step create the flask service. 

REQUIREMENTS:

The project has been tested in Linux environments. So if you use Windows you need to modify the paths in init.sh file. It's mandatory that Docker and Docker compose have been installed and running.

EXPLANATION

I have used Docker because is the best tool I know to solve the issue. The services can be executed in any OS. To deploy the project automatically I have used a bash file in order to reduce the complexity but I you have to deploy many services every day Docker + Ansible could be the best way. In my case I have not a great experience with Ansible + Docker and finally I decide to use a bash script.


