pipeline {
    agent any
    stages {
        stage ('Fetching code from git') {
            steps {
                git branch: 'jenkins' , url: 'https://github.com/Rohit88788i/DevOps.git'
            }

        }

      stage("build") {
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

