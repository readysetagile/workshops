# Start docker container environment for jira xray

#create the directories that will hold the host mounts for the containers
md -Force $pwd/jira_home
md -Force $pwd/jenkins_home

#create the local network for the containers
docker network create mylocal_jira_net

#start the Jira container
docker run -d -p 8080:8080 --name mylocal_jira --hostname mylocal_jira --net mylocal_jira_net -v $pwd/jira_home/:/var/atlassian/jira cptactionhank/atlassian-jira-software:latest

#start the Jenkins container
#docker run -d -p 8100:8080 -p 50000:50000 --name mylocal_jenkins --hostname mylocal_jenkins --net mylocal_jira_net -v $pwd/jenkins_home/:/var/jenkins_home jenkins:2.73.1
docker run -d -p 8100:8080 -p 50000:50000 --name mylocal_jenkins --hostname mylocal_jenkins --net mylocal_jira_net -v $pwd/jenkins_home/:/var/jenkins_home jenkins/jenkins