node
{
   stage('SCM CHECKOUT')
  {
   git branch: 'master', url: 'https://github.com/study24/maven-project'
  }


   stage('CODE BUILD')
 {
   def mavenHome = tool name : "MAVEN_HOME"
   sh "${mavenHome}/bin/mvn sonar:sonar"

 }
   
}
