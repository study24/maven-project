pipeline
{
agent any
stages
{
  stage('scm checkout')
  { steps {  git branch: 'master', url: 'https://github.com/prakashk0301/maven-project'  } }

  stage('code build')
  { steps {  withMaven(jdk: 'LocalJDK', maven: 'local_maven_3.5') {
      sh 'mvn clean package'                    // provide maven command

} } }


  stage('deploy to dev')
    { steps {
       sshagent(['Tomcat-server']) {
       sh 'scp -o StrictHostKeyChecking=no /root/maven-project/webapp/target/webapp.war ec2-user@172.31.34.50:/var/lib/tomcat/webapps'
    }
            }
         }

}
}  




  
  
