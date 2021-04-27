pipeline {
    agent any


    stages 
	    { stage('SCM Checkout'){
          git 'https://github.com/study24/maven-project.git'
        }
    }
	{
        stage ('Compile Stage') {

            steps {
                withMaven(maven : 'MAVEN_HOME', jdk: 'JAVA_HOME') {
                    sh 'mvn clean compile'
                }
            }
        }

        stage ('Testing Stage') {

            steps {
                withMaven(maven : 'MAVEN_HOME', jdk: 'JAVA_HOME') {
                    sh 'mvn test'
                }
            }
        }


        stage ('install Stage') {
            steps {
                withMaven(maven : 'MAVEN_HOME', jdk: 'JAVA_HOME') {
                    sh 'mvn install'
                }
            }
        }

        stage ('build && SonarQube analysis') {
            steps {
		withSonarQubeEnv('sonar') {
                    withMaven(maven : 'MAVEN_HOME', jdk: 'JAVA_HOME') 
                       
mvn clean install sonar:sonar 
  -Dsonar.host.url=http://18.157.84.73:9000
  -Dsonar.login=3c29ea383ff3538a29902cb93421785ac36cf1f6
  -Dsonar.test.inclusions=**/*Test*/** -DskipTest=true
                    }
		}	
            }
        }
}
