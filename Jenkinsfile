node
{
   
   def mavenHome = tool name : "SonarLocal"
   stage('SCM CHECKOUT')
  {
   git branch: 'master', url: 'https://github.com/study24/maven-project'
  }


   stage('CODE BUILD')
 {
   
   sh "${SonarLocal}/bin/mvn sonar:sonar"

 }
   
}
