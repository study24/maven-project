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
      sh 'mvn clean package sonar:sonar'
    }
  }  
   
          
  stage('Archiving Artifacts')
  {
    steps { 
      archiveArtifacts allowEmptyArchive: true, artifacts: '**/*.war', followSymlinks: false, onlyIfSuccessful: true 
      
          }
  } 
  

  
  
   
  
    
  








}
}  




  
  
