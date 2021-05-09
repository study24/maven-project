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
   
   
     stage('SonarQube Report')
 {
   
   sh "${mavenHome}/bin/mvn sonar:sonar"

 }
   
   
      stage('NexusUploadArtifact')
 {
   
   sh "${mavenHome}/bin/mvn deploy"

 }
   
   
   
}
