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


  stage('deploy to dev')
    { steps {
       sshagent(['tomcat']) {
       sh 'scp -o StrictHostKeyChecking=no */target/*.war ec2-user@172.31.44.215:/var/lib/tomcat/webapps'
    }
            }
         }

}
}  




  
  
