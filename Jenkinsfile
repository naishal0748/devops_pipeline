pipeline {
  agent any
  stages {
    stage('Build and trasnfer') {
      steps {
        sh '''
           docker build -t flaskapp:latest .
           docker save flaskapp:latest -o /var/tmp/myapp.tar
        '''
      }
    }
    stage('Deploy') {
      steps {
        sudo ansible-playbook -i $WORKSPACE/ansible/inventory.txt $WORKSPACE/ansible/playbook.yml
      }
    }
}
}
