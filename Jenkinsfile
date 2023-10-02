node {
    def mavenHome = tool name: "maven3.9.4"
    
    stage('Checkout Code from GitHub - I') {
        git branch: 'qa', url: 'https://github.com/ManojBharath/maven-web-application.git'
    }
   
    stage('Generate SonarQube report - II') {
        sh "${mavenHome}/bin/mvn clean sonar:sonar"
    }

    stage('Build WAR Artifacts - III') {
        sh "${mavenHome}/bin/mvn clean package"
    }
    
    stage('Nexus stage - IV') {
        sh "${mavenHome}/bin/mvn deploy"
    }
    
    stage('Host the artifact to Tomcat Server - V') {
        deploy adapters: [tomcat9(credentialsId: '05aa6786-4dc2-4bd8-9d0a-b0bff3bdc987', 
        path: '', url: 'http://65.0.178.45:8090/')], contextPath: null, onFailure: false, 
        war: '**/maven-web-application.*'
    }
     
}//EON
