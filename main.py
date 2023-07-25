#          ssh-keyscan -t rsa ${{ secrets.DEPLOY_HOST_IP }} >> ~/.ssh/known_hosts
#          chmod 644 ~/.ssh/known_hosts
#
# environment: production
# branches: [ $default-branch ]
print('hello')