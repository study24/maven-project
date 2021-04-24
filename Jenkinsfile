pipeline
{
agent any
stages
{
  stage('scm checkout')
  { steps 
       {  git branch: 'master', url: 'https://github.com/study24/maven-project'  } }

   
          stage("build & SonarQube analysis") {
         
            steps {
              withSonarQubeEnv('sonar-pro') {
                sh 'mvn clean package sonar:sonar'
              }
            }
          }
                
                stage("Quality Gate") {
            steps {
             
                 timeout(time: 10, unit: 'MINUTES') {
               waitForQualityGate abortPipeline: true
                   
                 }
            }
                }
  
   
              stage('Archive Artifacts')
  {
    steps { 
      archiveArtifacts allowEmptyArchive: true, artifacts: '**/*.war', followSymlinks: false, onlyIfSuccessful: true 
      
          }
  } 
  
  
  
  
  
   
  
    
  








}
}  




  
  
