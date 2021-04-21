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
  
  
  stage('copy Artifact from Nexus')
  {
    
    steps {
  
      copyArtifacts filter: '**/*.war', fingerprintArtifacts: true, projectName: 'complete-cicd', selector: lastSuccessful()
    }
  } 
      
      
      
      
      stage('upload to nexus')
      {
        steps { 
          nexusArtifactUploader artifacts: [[artifactId: '$BUILD', classifier: '', file: 'target/webapp.war', type: 'war']], credentialsId: 'Nexus_id', groupId: 'Prod', nexusUrl: '172.31.11.140:8081', nexusVersion: 'nexus3', protocol: 'http', repository: 'maven-repo', version: '$BUILD'
      
      
    }
  }
    
    
  








}
}  




  
  
