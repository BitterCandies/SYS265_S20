#secure-ssh.sh
#author BitterCandies
#creates a new ssh user using $1 parameter
#adds a public key from the local repo or curled from the remote repo
#removes all roots ability to ssh in
echo "ALL YOUR CODE GOES HERE"
sudo useradd -m -d /home/taossh -s /bin/bash taossh
sudo mkdir /home/taossh/.ssh
sudo cp /home/tao/SYS265_S20/linux/public-keys/id_rsa.pub /home/taossh/.ssh/authorized_keys
sudo chmod 700 /home/taossh/.ssh
sudo chmod 600 /home/taossh/.ssh/authorized_keys
sudo chown -R taossh:taossh /home/taossh/.ssh
