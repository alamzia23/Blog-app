This Application can be used as a blog website to write the blogs and here we can have individual accounts for each user. Application is based on Nodejs and using the mongoDb atlas as the database.

![Landing Page of Application](All%20DevOps%20Images/Landing-page.png)


To Perform the DevOps operations and to run the image locally on the local cluster you can refer to the below mentioned links:

A) Docker image of Application
   https://hub.docker.com/repository/docker/alamzia23/nodejs-blog/general

B) Link of the Repo of yaml files of Application
   https://github.com/alamzia23/BlogNewYamlFiles

C) Link of the repo of the  helm charts of application:
   https://github.com/alamzia23/NewBlog-HelmCharts

Other things to consider:-
Application is using a CI workflow to directly make the changes in the helmcharts whenever there is any change in the code of the application so whenever you make any changes in the code the CI pipeline will hit and will make the changes in this particular repo  https://github.com/alamzia23/NewBlog-HelmCharts and will push the new image on the ECR repo of the AWS account and from there argo CD will pull the image and will do the CD part automatically so CI/CD will be takign place simultaeneously so everything is automated here.

Below are the images of the CI pipeline and ArgoCD part:-

![CI pipeline/workflow](All%20DevOps%20Images/ci.png)

![ArgoCD](All%20DevOps%20Images/argocd.png)


I also tried to connect this application with the prometheus and grafana. Below are the images attached.

![grafana](All%20DevOps%20Images/grafana.png)









