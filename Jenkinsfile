pipeline {
  agent any
  stages {
    stage('Build and trasnfer') {
      steps {
        sh '''
           docker build -t flaskapp:latest .
           docker save flaskapp:latest -o /tmp/myapp.tar
        '''
      }
    }
}
