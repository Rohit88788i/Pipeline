pipeline {
    agent any
    stages {
        stage ('Fetching code from git') {
            steps {
               checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Rohit88788i/Pipeline.git']]])
            }

        }

      stage("build") {
         steps {
            try {
                 sh 'sh script.sh'  
                 }
            catch (err) {
                currentBuild.result = 'FAILURE'
                emailExtraMsg = "Build Failure:"+ err.getMessage()
                throw err
             }
        }
      }
      
         

    }
}
