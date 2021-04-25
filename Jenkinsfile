pipeline
{
agent any
stages
{
  stage('scm checkout')
  { steps 
       {  git branch: 'master', url: 'https://github.com/study24/maven-project'  } 
  }
  
  stage('Build Code')
  {
    steps{ 
      sh 'mvn clean package'
    }
  }  
   
          
  stage('Archiving Artifacts')
  {
    steps { 
      archiveArtifacts allowEmptyArchive: true, artifacts: '**/*.war', followSymlinks: false, onlyIfSuccessful: true 
      
          }
  } 
  
  stage('Code Analysis SonaQube')
  {
    steps{ 
  
       withSonarQubeEnv(credentialsId: 'sonarqube-id', installationName: 'sonar-pro') { // You can override the credential to be used
      sh 'mvn clean package sonar:sonar'
      
        }
                                    }
    
  }
  
  
  
   
  
    
  








}
}  




  
  
