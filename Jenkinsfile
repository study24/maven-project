node
{
   
   def mavenHome = tool name : "Maven3.8.1"
   stage('SCM CHECKOUT')
  {
   git branch: 'master', url: 'https://github.com/study24/maven-project'
  }


   stage('CODE BUILD')
 {
   
   sh "${mavenHome}/bin/mvn clean package"

 }
   
   
 
   
   
      stage('NexusUploadArtifact')
 {
   
   sh "${mavenHome}/bin/mvn deploy"

 }
   
   stage('DeployToTomcat')
   
   {
   
   sshagent(['tomcat']) 
   {
   
      sh "scp -o StrictHostKeyChecking=no /target/webapp.war ec2-user@172.31.41.111:/opt/apache-tomcat-8.5.65/webapps"
  }
   
   
   
}
}
