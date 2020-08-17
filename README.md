# docker - kubernetes automation projekt

<img src="https://github.com/maheshgprasad/docker/blob/master/flow_jenkins_kubernetes.png"/>

<br />
<br /> 

1. Developer writes, commits and pushes the code to Github Repository
2. Version Control ensures that the latest version of the updated code is present for use on the repository
3. Jenkins server is configured to pull the latest version of the committed code from Github.
4. Jenkins server is then tasked to build the image required for the purpose of deployment of application on Kubernetes.
5. Jenkins server takes the built image and pushes it to the Docker repository.
6. Once the above process is done, the images that are pushed to docker hub are then deployed to kubernetes cluster.
