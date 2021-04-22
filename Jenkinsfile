pipeline
{
agent any
stages
{
  stage('scm checkout')
  { steps {  git branch: 'master', url: 'https://github.com/study24/maven-project'  } }

  stage('code build')
  { steps {  withMaven(jdk: 'JAVA_HOME', maven: 'MAVEN_HOME') {
      sh 'mvn clean package'                    // provide maven command
    
  } } }
    
    stage ('Archiving artifact')
    {
      steps { archiveArtifacts artifacts: '**/*.war'}

     } 
  

      
      
      
      
      stage('upload to nexus')
      {
        steps { 
        nexusArtifactUploader artifacts: [[artifactId: 'maven-project', classifier: '', file: 'target/Maven Project.war', type: 'war']], 
          credentialsId: 'nexus-cred', 
          groupId: 'prod', 
          nexusUrl: '3.65.14.56:8081', 
          nexusVersion: 'nexus3', 
          protocol: 'http', 
          repository: 'maven-prod', 
          version: '1.0-SNAPSHOT'
      
    }
  }
    
    
  








}
}  




  
  
