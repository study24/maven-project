pipeline
{
agent any
stages
{
  stage('scm checkout')
  { steps {  git branch: 'demo', url: 'https://github.com/decode24/maven-project'  } }
  
  stage('code build')
  { steps { (withMaven(jdk: 'Java home', maven: 'Maven home) {
      sh 'mvn clean package'                    

} } }

